# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@actions/core-1.9.0" = {
      name = "_at_actions_slash_core";
      packageName = "@actions/core";
      version = "1.9.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@actions/core/-/core-1.9.0.tgz";
        sha512 = "5pbM693Ih59ZdUhgk+fts+bUWTnIdHV3kwOSr+QIoFHMLg7Gzhwm0cifDY/AG68ekEJAkHnQVpcy4f6GjmzBCA==";
      };
    };
    "@actions/github-5.0.3" = {
      name = "_at_actions_slash_github";
      packageName = "@actions/github";
      version = "5.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@actions/github/-/github-5.0.3.tgz";
        sha512 = "myjA/pdLQfhUGLtRZC/J4L1RXOG4o6aYdiEq+zr5wVVKljzbFld+xv10k1FX6IkIJtNxbAq44BdwSNpQ015P0A==";
      };
    };
    "@actions/http-client-2.0.1" = {
      name = "_at_actions_slash_http-client";
      packageName = "@actions/http-client";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@actions/http-client/-/http-client-2.0.1.tgz";
        sha512 = "PIXiMVtz6VvyaRsGY268qvj57hXQEpsYogYOu2nrQhlf+XCGmZstmuZBbAybUl1nQGnvS1k1eEsQ69ZoD7xlSw==";
      };
    };
    "@octokit/auth-token-2.5.0" = {
      name = "_at_octokit_slash_auth-token";
      packageName = "@octokit/auth-token";
      version = "2.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/auth-token/-/auth-token-2.5.0.tgz";
        sha512 = "r5FVUJCOLl19AxiuZD2VRZ/ORjp/4IN98Of6YJoJOkY75CIBuYfmiNHGrDwXr+aLGG55igl9QrxX3hbiXlLb+g==";
      };
    };
    "@octokit/auth-token-3.0.0" = {
      name = "_at_octokit_slash_auth-token";
      packageName = "@octokit/auth-token";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/auth-token/-/auth-token-3.0.0.tgz";
        sha512 = "MDNFUBcJIptB9At7HiV7VCvU3NcL4GnfCQaP8C5lrxWrRPMJBnemYtehaKSOlaM7AYxeRyj9etenu8LVpSpVaQ==";
      };
    };
    "@octokit/core-3.6.0" = {
      name = "_at_octokit_slash_core";
      packageName = "@octokit/core";
      version = "3.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/core/-/core-3.6.0.tgz";
        sha512 = "7RKRKuA4xTjMhY+eG3jthb3hlZCsOwg3rztWh75Xc+ShDWOfDDATWbeZpAHBNRpm4Tv9WgBMOy1zEJYXG6NJ7Q==";
      };
    };
    "@octokit/core-4.0.4" = {
      name = "_at_octokit_slash_core";
      packageName = "@octokit/core";
      version = "4.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/core/-/core-4.0.4.tgz";
        sha512 = "sUpR/hc4Gc7K34o60bWC7WUH6Q7T6ftZ2dUmepSyJr9PRF76/qqkWjE2SOEzCqLA5W83SaISymwKtxks+96hPQ==";
      };
    };
    "@octokit/endpoint-6.0.12" = {
      name = "_at_octokit_slash_endpoint";
      packageName = "@octokit/endpoint";
      version = "6.0.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/endpoint/-/endpoint-6.0.12.tgz";
        sha512 = "lF3puPwkQWGfkMClXb4k/eUT/nZKQfxinRWJrdZaJO85Dqwo/G0yOC434Jr2ojwafWJMYqFGFa5ms4jJUgujdA==";
      };
    };
    "@octokit/endpoint-7.0.0" = {
      name = "_at_octokit_slash_endpoint";
      packageName = "@octokit/endpoint";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/endpoint/-/endpoint-7.0.0.tgz";
        sha512 = "Kz/mIkOTjs9rV50hf/JK9pIDl4aGwAtT8pry6Rpy+hVXkAPhXanNQRxMoq6AeRgDCZR6t/A1zKniY2V1YhrzlQ==";
      };
    };
    "@octokit/graphql-4.8.0" = {
      name = "_at_octokit_slash_graphql";
      packageName = "@octokit/graphql";
      version = "4.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/graphql/-/graphql-4.8.0.tgz";
        sha512 = "0gv+qLSBLKF0z8TKaSKTsS39scVKF9dbMxJpj3U0vC7wjNWFuIpL/z76Qe2fiuCbDRcJSavkXsVtMS6/dtQQsg==";
      };
    };
    "@octokit/graphql-5.0.0" = {
      name = "_at_octokit_slash_graphql";
      packageName = "@octokit/graphql";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/graphql/-/graphql-5.0.0.tgz";
        sha512 = "1ZZ8tX4lUEcLPvHagfIVu5S2xpHYXAmgN0+95eAOPoaVPzCfUXJtA5vASafcpWcO86ze0Pzn30TAx72aB2aguQ==";
      };
    };
    "@octokit/openapi-types-12.10.1" = {
      name = "_at_octokit_slash_openapi-types";
      packageName = "@octokit/openapi-types";
      version = "12.10.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/openapi-types/-/openapi-types-12.10.1.tgz";
        sha512 = "P+SukKanjFY0ZhsK6wSVnQmxTP2eVPPE8OPSNuxaMYtgVzwJZgfGdwlYjf4RlRU4vLEw4ts2fsE2icG4nZ5ddQ==";
      };
    };
    "@octokit/plugin-paginate-rest-2.21.2" = {
      name = "_at_octokit_slash_plugin-paginate-rest";
      packageName = "@octokit/plugin-paginate-rest";
      version = "2.21.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/plugin-paginate-rest/-/plugin-paginate-rest-2.21.2.tgz";
        sha512 = "S24H0a6bBVreJtoTaRHT/gnVASbOHVTRMOVIqd9zrJBP3JozsxJB56TDuTUmd1xLI4/rAE2HNmThvVKtIdLLEw==";
      };
    };
    "@octokit/plugin-rest-endpoint-methods-5.16.2" = {
      name = "_at_octokit_slash_plugin-rest-endpoint-methods";
      packageName = "@octokit/plugin-rest-endpoint-methods";
      version = "5.16.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/plugin-rest-endpoint-methods/-/plugin-rest-endpoint-methods-5.16.2.tgz";
        sha512 = "8QFz29Fg5jDuTPXVtey05BLm7OB+M8fnvE64RNegzX7U+5NUXcOcnpTIK0YfSHBg8gYd0oxIq3IZTe9SfPZiRw==";
      };
    };
    "@octokit/request-5.6.3" = {
      name = "_at_octokit_slash_request";
      packageName = "@octokit/request";
      version = "5.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/request/-/request-5.6.3.tgz";
        sha512 = "bFJl0I1KVc9jYTe9tdGGpAMPy32dLBXXo1dS/YwSCTL/2nd9XeHsY616RE3HPXDVk+a+dBuzyz5YdlXwcDTr2A==";
      };
    };
    "@octokit/request-6.2.0" = {
      name = "_at_octokit_slash_request";
      packageName = "@octokit/request";
      version = "6.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/request/-/request-6.2.0.tgz";
        sha512 = "7IAmHnaezZrgUqtRShMlByJK33MT9ZDnMRgZjnRrRV9a/jzzFwKGz0vxhFU6i7VMLraYcQ1qmcAOin37Kryq+Q==";
      };
    };
    "@octokit/request-error-2.1.0" = {
      name = "_at_octokit_slash_request-error";
      packageName = "@octokit/request-error";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/request-error/-/request-error-2.1.0.tgz";
        sha512 = "1VIvgXxs9WHSjicsRwq8PlR2LR2x6DwsJAaFgzdi0JfJoGSO8mYI/cHJQ+9FbN21aa+DrgNLnwObmyeSC8Rmpg==";
      };
    };
    "@octokit/request-error-3.0.0" = {
      name = "_at_octokit_slash_request-error";
      packageName = "@octokit/request-error";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/request-error/-/request-error-3.0.0.tgz";
        sha512 = "WBtpzm9lR8z4IHIMtOqr6XwfkGvMOOILNLxsWvDwtzm/n7f5AWuqJTXQXdDtOvPfTDrH4TPhEvW2qMlR4JFA2w==";
      };
    };
    "@octokit/types-6.40.0" = {
      name = "_at_octokit_slash_types";
      packageName = "@octokit/types";
      version = "6.40.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@octokit/types/-/types-6.40.0.tgz";
        sha512 = "MFZOU5r8SwgJWDMhrLUSvyJPtVsqA6VnbVI3TNbsmw+Jnvrktzvq2fYES/6RiJA/5Ykdwq4mJmtlYUfW7CGjmw==";
      };
    };
    "@types/node-18.0.6" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "18.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-18.0.6.tgz";
        sha512 = "/xUq6H2aQm261exT6iZTMifUySEt4GR5KX8eYyY+C4MSNPqSh9oNIP7tz2GLKTlFaiBbgZNxffoR3CVRG+cljw==";
      };
    };
    "@types/semver-7.3.10" = {
      name = "_at_types_slash_semver";
      packageName = "@types/semver";
      version = "7.3.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/semver/-/semver-7.3.10.tgz";
        sha512 = "zsv3fsC7S84NN6nPK06u79oWgrPVd0NvOyqgghV1haPaFcVxIrP4DLomRwGAXk0ui4HZA7mOcSFL98sMVW9viw==";
      };
    };
    "@vercel/ncc-0.34.0" = {
      name = "_at_vercel_slash_ncc";
      packageName = "@vercel/ncc";
      version = "0.34.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/ncc/-/ncc-0.34.0.tgz";
        sha512 = "G9h5ZLBJ/V57Ou9vz5hI8pda/YQX5HQszCs3AmIus3XzsmRn/0Ptic5otD3xVST8QLKk7AMk7AqpsyQGN7MZ9A==";
      };
    };
    "before-after-hook-2.2.2" = {
      name = "before-after-hook";
      packageName = "before-after-hook";
      version = "2.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/before-after-hook/-/before-after-hook-2.2.2.tgz";
        sha512 = "3pZEU3NT5BFUo/AD5ERPWOgQOCZITni6iavr5AUw5AUwQjMlI0kzu5btnyD39AF0gUEsDPwJT+oY1ORBJijPjQ==";
      };
    };
    "deprecation-2.3.1" = {
      name = "deprecation";
      packageName = "deprecation";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/deprecation/-/deprecation-2.3.1.tgz";
        sha512 = "xmHIy4F3scKVwMsQ4WnVaS8bHOx0DmVwRywosKhaILI0ywMDWPtBSku2HNxRvF7jtwDRsoEwYQSfbxj8b7RlJQ==";
      };
    };
    "encoding-0.1.13" = {
      name = "encoding";
      packageName = "encoding";
      version = "0.1.13";
      src = fetchurl {
        url = "https://registry.npmjs.org/encoding/-/encoding-0.1.13.tgz";
        sha512 = "ETBauow1T35Y/WZMkio9jiM0Z5xjHHmJ4XmjZOq1l/dXz3lr2sRn87nJy20RupqSh1F2m3HHPSp8ShIPQJrJ3A==";
      };
    };
    "iconv-lite-0.6.3" = {
      name = "iconv-lite";
      packageName = "iconv-lite";
      version = "0.6.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.6.3.tgz";
        sha512 = "4fCk79wshMdzMp2rH06qWrJE4iolqLhCUH+OiuIgU++RB0+94NlDL81atO7GX55uUKueo0txHNtvEyI6D7WdMw==";
      };
    };
    "is-plain-object-5.0.0" = {
      name = "is-plain-object";
      packageName = "is-plain-object";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-plain-object/-/is-plain-object-5.0.0.tgz";
        sha512 = "VRSzKkbMm5jMDoKLbltAkFQ5Qr7VDiTFGXxYFXXowVj387GeGNOCsOH6Msy00SGZ3Fp84b1Naa1psqgcCIEP5Q==";
      };
    };
    "lru-cache-6.0.0" = {
      name = "lru-cache";
      packageName = "lru-cache";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz";
        sha512 = "Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==";
      };
    };
    "node-fetch-2.6.7" = {
      name = "node-fetch";
      packageName = "node-fetch";
      version = "2.6.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-fetch/-/node-fetch-2.6.7.tgz";
        sha512 = "ZjMPFEfVx5j+y2yF35Kzx5sF7kDzxuDj6ziH4FFbOp87zKDZNx8yExJIb05OGF4Nlt9IHFIMBkRl41VdvcNdbQ==";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "semver-7.3.7" = {
      name = "semver";
      packageName = "semver";
      version = "7.3.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-7.3.7.tgz";
        sha512 = "QlYTucUYOews+WeEujDoEGziz4K6c47V/Bd+LjSSYcA94p+DmINdf7ncaUinThfvZyu13lN9OY1XDxt8C0Tw0g==";
      };
    };
    "tr46-0.0.3" = {
      name = "tr46";
      packageName = "tr46";
      version = "0.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/tr46/-/tr46-0.0.3.tgz";
        sha512 = "N3WMsuqV66lT30CrXNbEjx4GEwlow3v6rr4mCcv6prnfwhS01rkgyFdjPNBYd9br7LpXV1+Emh01fHnq2Gdgrw==";
      };
    };
    "tunnel-0.0.6" = {
      name = "tunnel";
      packageName = "tunnel";
      version = "0.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/tunnel/-/tunnel-0.0.6.tgz";
        sha512 = "1h/Lnq9yajKY2PEbBadPXj3VxsDDu844OnaAo52UVmIzIvwwtBPIuNvkjuzBlTWpfJyUbG3ez0KSBibQkj4ojg==";
      };
    };
    "typescript-4.7.4" = {
      name = "typescript";
      packageName = "typescript";
      version = "4.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-4.7.4.tgz";
        sha512 = "C0WQT0gezHuw6AdY1M2jxUO83Rjf0HP7Sk1DtXj6j1EwkQNZrHAg2XPWlq62oqEhYvONq5pkC2Y9oPljWToLmQ==";
      };
    };
    "universal-user-agent-6.0.0" = {
      name = "universal-user-agent";
      packageName = "universal-user-agent";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/universal-user-agent/-/universal-user-agent-6.0.0.tgz";
        sha512 = "isyNax3wXoKaulPDZWHQqbmIx1k2tb9fb3GGDBRxCscfYV2Ch7WxPArBsFEG8s/safwXTT7H4QGhaIkTp9447w==";
      };
    };
    "webidl-conversions-3.0.1" = {
      name = "webidl-conversions";
      packageName = "webidl-conversions";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/webidl-conversions/-/webidl-conversions-3.0.1.tgz";
        sha512 = "2JAn3z8AR6rjK8Sm8orRC0h/bcl/DqL7tRPdGZ4I1CjdF+EaMLmYxBHyXuKL849eucPFhvBoxMsflfOb8kxaeQ==";
      };
    };
    "whatwg-url-5.0.0" = {
      name = "whatwg-url";
      packageName = "whatwg-url";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/whatwg-url/-/whatwg-url-5.0.0.tgz";
        sha512 = "saE57nupxk6v3HY35+jzBwYa0rKSy0XR8JSxZPwgLr7ys0IBzhGviA1/TUGJLmSVqs8pb9AnvICXEuOHLprYTw==";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      };
    };
    "yallist-4.0.0" = {
      name = "yallist";
      packageName = "yallist";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz";
        sha512 = "3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==";
      };
    };
  };
  args = {
    name = "semver-increment";
    packageName = "semver-increment";
    version = "0.0.1";
    src = ./.;
    dependencies = [
      sources."@actions/core-1.9.0"
      sources."@actions/github-5.0.3"
      sources."@actions/http-client-2.0.1"
      sources."@octokit/auth-token-2.5.0"
      sources."@octokit/core-3.6.0"
      sources."@octokit/endpoint-6.0.12"
      sources."@octokit/graphql-4.8.0"
      sources."@octokit/openapi-types-12.10.1"
      (sources."@octokit/plugin-paginate-rest-2.21.2" // {
        dependencies = [
          sources."@octokit/auth-token-3.0.0"
          sources."@octokit/core-4.0.4"
          sources."@octokit/endpoint-7.0.0"
          sources."@octokit/graphql-5.0.0"
          sources."@octokit/request-6.2.0"
          sources."@octokit/request-error-3.0.0"
        ];
      })
      sources."@octokit/plugin-rest-endpoint-methods-5.16.2"
      sources."@octokit/request-5.6.3"
      sources."@octokit/request-error-2.1.0"
      sources."@octokit/types-6.40.0"
      sources."@types/node-18.0.6"
      sources."@types/semver-7.3.10"
      sources."@vercel/ncc-0.34.0"
      sources."before-after-hook-2.2.2"
      sources."deprecation-2.3.1"
      sources."encoding-0.1.13"
      sources."iconv-lite-0.6.3"
      sources."is-plain-object-5.0.0"
      sources."lru-cache-6.0.0"
      sources."node-fetch-2.6.7"
      sources."once-1.4.0"
      sources."safer-buffer-2.1.2"
      sources."semver-7.3.7"
      sources."tr46-0.0.3"
      sources."tunnel-0.0.6"
      sources."typescript-4.7.4"
      sources."universal-user-agent-6.0.0"
      sources."webidl-conversions-3.0.1"
      sources."whatwg-url-5.0.0"
      sources."wrappy-1.0.2"
      sources."yallist-4.0.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "";
      license = "MIT";
    };
    production = false;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
