#!/usr/bin/env bash

function tscInit() {
    # npx tsc --init
    cat << EOF > tsconfig.json
{
  "compilerOptions": {
    "target": "ES2020",
    "module": "CommonJS",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true
  },
  "include": ["src/**/*.ts"],
  "exclude": ["node_modules"]
}
EOF
}

function prep() {
    mkdir -p typescript-cli/src
    pushd typescript-cli
    npm init --yes
    npm install typescript --save-dev
    tscInit
}

function code () {
    cat << EOF > src/index.ts
const main = async function() {
    console.log("Hello World!")
}

main()
EOF
}

function run() {
    npx tsc
    node dist/index.js
    popd
}

prep
code
run
