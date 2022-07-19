import * as github from '@actions/github';
import * as core from '@actions/core';
import semver, { ReleaseType } from 'semver/index';
import { Context } from '@actions/github/lib/context';
import { GitHub } from '@actions/github/lib/utils';


interface Tag {
    name: string;
    commit: {
        sha: string;
        url: string;
    };
    zipball_url: string;
    tarball_url: string;
    node_id: string;
}

async function* tagsGen(octokit, context: Context): AsyncGenerator<Tag, void, unknown>{

    let page = 1;
    while (true) {
        const response = await octokit.rest.repos.listTags({
            owner: context.repo.owner,
            repo: context.repo.repo,
            page,
            per_page: 100
        });
        if (response.status !== 200) {
            console.error('Error in calling github api.');
            process.exit(1);
        }
        
        for (const tag of response.data)
            yield tag;
        
        if (response.data.length < 100) {
            break;
        }
        page++;
    }
}


async function run() {
    
    const GITHUB_TOKEN = core.getInput('GITHUB_TOKEN');
    const octokit = github.getOctokit(GITHUB_TOKEN);
    const { context } = github;

   
    const base = core.getInput('base-version');
    const releaseType: ReleaseType = core.getInput('release-type') as ReleaseType;
    const preid: String = core.getInput('preid') 
    
    
    const tags = tagsGen(octokit, context);

    let latest = semver.coerce(base);
    let baseVersionRange = new semver.Range(base, true);

    console.log(`base-ref '${base}' was parsed as ${latest.format()}`);

    let exists = false;
    
    if (latest === null) {
        console.warn(`'${base} is not a valid semver base version`);
        return;
    }

    for await (const tag of tags) {
        const taggedVersion = semver.parse(tag.name);
        if (taggedVersion === null) continue;

        if (baseVersionRange.test(taggedVersion) && taggedVersion.compare(latest) >= 0) {
            latest = taggedVersion;
            exists = true;
        }
    }

    let next = latest;
    if (exists) {
        next = latest.inc(releaseType, preid);
    }

    core.setOutput('next-version', next.format());
    core.setOutput('next-version-major', next.major);
    core.setOutput('next-version-minor', next.minor);
    core.setOutput('next-version-patch', next.patch);
    core.setOutput('next-version-preid', next.prerelease[0]);
    core.setOutput('next-version-prerelease', next.prerelease[1]);



    // if (dryRun === 'true') {
    //     console.log('Action configured for dry run. Exiting.');
    //     process.exit(0);
    // }

    console.log(`Creating new release tag: ${next} `);
    // await octokit.rest.repos.createRelease({
    //     ...context.repo,
    //     tag_name: next,
    //     prerelease: prerelease
    // });
}

run();
