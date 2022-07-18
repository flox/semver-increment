"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __await = (this && this.__await) || function (v) { return this instanceof __await ? (this.v = v, this) : new __await(v); }
var __asyncGenerator = (this && this.__asyncGenerator) || function (thisArg, _arguments, generator) {
    if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
    var g = generator.apply(thisArg, _arguments || []), i, q = [];
    return i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i;
    function verb(n) { if (g[n]) i[n] = function (v) { return new Promise(function (a, b) { q.push([n, v, a, b]) > 1 || resume(n, v); }); }; }
    function resume(n, v) { try { step(g[n](v)); } catch (e) { settle(q[0][3], e); } }
    function step(r) { r.value instanceof __await ? Promise.resolve(r.value.v).then(fulfill, reject) : settle(q[0][2], r); }
    function fulfill(value) { resume("next", value); }
    function reject(value) { resume("throw", value); }
    function settle(f, v) { if (f(v), q.shift(), q.length) resume(q[0][0], q[0][1]); }
};
var __asyncValues = (this && this.__asyncValues) || function (o) {
    if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
    var m = o[Symbol.asyncIterator], i;
    return m ? m.call(o) : (o = typeof __values === "function" ? __values(o) : o[Symbol.iterator](), i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i);
    function verb(n) { i[n] = o[n] && function (v) { return new Promise(function (resolve, reject) { v = o[n](v), settle(resolve, reject, v.done, v.value); }); }; }
    function settle(resolve, reject, d, v) { Promise.resolve(v).then(function(v) { resolve({ value: v, done: d }); }, reject); }
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const github_1 = __importDefault(require("@actions/github"));
const core_1 = __importDefault(require("@actions/core"));
const index_1 = __importDefault(require("semver/index"));
function tagsGen(octokit, context) {
    return __asyncGenerator(this, arguments, function* tagsGen_1() {
        let page = 1;
        while (true) {
            const response = yield __await(octokit.repos.listTags({
                owner: context.repo.owner,
                repo: context.repo.repo,
                page,
                per_page: 100
            }));
            if (response.status !== 200) {
                console.error('Error in calling github api.');
                process.exit(1);
            }
            for (const tag of response.data)
                yield yield __await(tag);
            if (response.data.length < 100) {
                break;
            }
            page++;
        }
    });
}
function run() {
    var e_1, _a;
    return __awaiter(this, void 0, void 0, function* () {
        const GITHUB_TOKEN = core_1.default.getInput('GITHUB_TOKEN');
        const octokit = github_1.default.getOctokit(GITHUB_TOKEN);
        const { context } = github_1.default;
        const dryRun = core_1.default.getInput('dry-run');
        const prerelease = !!core_1.default.getInput('prerelease');
        const base = core_1.default.getInput('base-version');
        const releaseType = core_1.default.getInput('release-type');
        // const pattern = new RegExp(`^${tagPrefix}(\\d+)\\.(\\d+)\\.(\\d+)(-(\\w[\\w\.]*))?(\\+(\\w[\\w\\.]*))?$`, 'm');
        const tags = tagsGen(octokit, context);
        let latest = index_1.default.coerce(base);
        let exists = false;
        if (latest === null) {
            console.warn(`'${base} is not a valid semver base version`);
            return;
        }
        try {
            for (var tags_1 = __asyncValues(tags), tags_1_1; tags_1_1 = yield tags_1.next(), !tags_1_1.done;) {
                const tag = tags_1_1.value;
                const taggedVersion = index_1.default.parse(tag.name);
                if (taggedVersion === null)
                    continue;
                if (taggedVersion.major !== latest.major)
                    continue;
                if (taggedVersion.compare(latest) >= 0) {
                    latest = taggedVersion;
                    exists = true;
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (tags_1_1 && !tags_1_1.done && (_a = tags_1.return)) yield _a.call(tags_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        let next = latest;
        if (exists) {
            next = latest.inc(releaseType);
        }
        core_1.default.setOutput('next-version', next.format());
        // if (dryRun === 'true') {
        //     console.log('Action configured for dry run. Exiting.');
        //     process.exit(0);
        // }
        console.log(`Creating new release tag: ${next} `);
    });
}
run();
