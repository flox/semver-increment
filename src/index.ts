import github from '@actions/github';
import core from '@actions/core';
import semver, { ReleaseType } from 'semver/index';



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

async function* tagsGen(octokit, context): AsyncGenerator<Tag, void, unknown>{

    let page = 1;
    while (true) {
        const response = await octokit.repos.listTags({
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
    

    
    const dryRun = core.getInput('dry-run');
    const prerelease = !!core.getInput('prerelease');
    const base = core.getInput('base-version');

    const releaseType: ReleaseType = core.getInput('release-type') as ReleaseType;

    // const pattern = new RegExp(`^${tagPrefix}(\\d+)\\.(\\d+)\\.(\\d+)(-(\\w[\\w\.]*))?(\\+(\\w[\\w\\.]*))?$`, 'm');

    const tags = tagsGen(octokit, context);


    let latest = semver.parse(base);
    let exists = false;
    
    if (latest === null) {
        console.warn(`'${base} is not a valid semver base version`);
        return;
    }

    for await (const tag of tags) {
        const taggedVersion = semver.parse(tag.name);
        if (taggedVersion === null) continue;
        if (taggedVersion.major !== latest.major) continue;

        if (taggedVersion.compare(latest) >= 0) {
            latest = taggedVersion;
            exists = true;
        }
    }

    let next = latest;
    if (exists) {
        next = latest.inc(releaseType);
    }


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
