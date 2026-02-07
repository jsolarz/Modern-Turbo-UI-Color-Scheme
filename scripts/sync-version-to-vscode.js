const fs = require('fs');
const path = require('path');

const rootPkgPath = path.join(__dirname, '..', 'package.json');
const vscodePkgPath = path.join(__dirname, '..', 'vscode', 'package.json');

const root = JSON.parse(fs.readFileSync(rootPkgPath, 'utf8'));
const vscode = JSON.parse(fs.readFileSync(vscodePkgPath, 'utf8'));

vscode.version = root.version;
fs.writeFileSync(vscodePkgPath, JSON.stringify(vscode, null, 2) + '\n');
console.log(`Synced version ${root.version} to vscode/package.json`);
