# Publishing Guide

## Prerequisites

1. Install `vsce` (Visual Studio Code Extension Manager):
```bash
npm install -g @vscode/vsce
```

2. Create a Personal Access Token (PAT) on [Azure DevOps](https://dev.azure.com):
   - Go to User Settings → Personal Access Tokens
   - Create new token with "Marketplace (Manage)" scope
   - Save the token securely

3. Create a publisher account:
   - Go to [VS Code Marketplace](https://marketplace.visualstudio.com/manage)
   - Create a publisher (e.g., "jonathansolarz")

## Publishing Steps

### First Time Publishing

1. Login to your publisher account:
```bash
vsce login jonathansolarz
```
Enter your Personal Access Token when prompted.

2. Package the extension:
```bash
cd vscode
vsce package
```
This creates a `.vsix` file.

3. Test locally (optional):
```bash
code --install-extension modern-turbo-pascal-ui-0.1.0.vsix
```

4. Publish to marketplace:
```bash
vsce publish
```

### Updating an Existing Extension

1. Update version in `package.json` (following semantic versioning)

2. Update `CHANGELOG.md` with new changes

3. Package and publish:
```bash
vsce package
vsce publish
```

## Version Numbering

Follow [Semantic Versioning](https://semver.org/):
- **MAJOR** (1.0.0): Breaking changes
- **MINOR** (0.1.0): New features, backward compatible
- **PATCH** (0.0.1): Bug fixes, backward compatible

## Important Notes

- The `publisher` field in `package.json` must match your marketplace publisher ID
- The `name` field must be unique across the marketplace
- Always test the `.vsix` file locally before publishing
- Update CHANGELOG.md for each release
- The extension will be automatically published to the marketplace

## Troubleshooting

**Error: Extension name already exists**
- Change the `name` field in `package.json` to something unique

**Error: Invalid publisher**
- Ensure the `publisher` field matches your marketplace publisher ID exactly

**Error: Missing required fields**
- Verify all required fields in `package.json` are present:
  - name
  - displayName
  - description
  - version
  - publisher
  - engines.vscode
  - categories
