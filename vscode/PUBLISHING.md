# Publishing Guide

 	## Publishing Methods

### Option 1: Automated Publishing (Recommended)

The repository includes a GitHub Actions workflow that automatically publishes to the marketplace when you push a version tag.

**Setup:**
1. Create a Personal Access Token (PAT) on [Azure DevOps](https://dev.azure.com)
   - Go to User Settings → Personal Access Tokens
   - Create new token with "Marketplace (Manage)" scope
   - Save the token securely
2. Add the PAT as a GitHub secret:
   - Go to Repository Settings → Secrets → Actions
   - Add secret named `VS_MARKETPLACE_TOKEN` with your PAT value
3. See [GitHub Actions Setup Guide](../../.github/workflows/SETUP.md) for detailed instructions

**Publishing:**
```bash
# Update version in package.json and CHANGELOG.md
git add vscode/package.json vscode/CHANGELOG.md
git commit -m "Release v0.1.0"
git tag v0.1.0
git push origin main
git push origin v0.1.0  # This triggers the workflow
```

### Option 2: Manual Publishing

1. Install `vsce` (Visual Studio Code Extension Manager):
```bash
npm install -g @vscode/vsce
```

2. Create a Personal Access Token (PAT) on [Azure DevOps](https://dev.azure.com):
   - Go to User Settings → Personal Access Tokens
   - Create new token with "Marketplace (Manage)" scope
   - **Expiration**: Set to "Custom" with 1-2 years, or "No expiration" (you can extend later)
   - **Note**: You do NOT need to recreate monthly - set a long expiration or extend it when needed
   - Save the token securely

3. Create a publisher account:
   - Go to [VS Code Marketplace](https://marketplace.visualstudio.com/manage)
   - Create a publisher (e.g., "jonathansolarz")

## Manual Publishing Steps

### First Time Publishing

1. Login to your publisher account:
```bash
cd vscode
vsce login jonathansolarz
```
Enter your Personal Access Token when prompted.

2. Package the extension:
```bash
vsce package
```
This creates a `.vsix` file.

3. Test locally (optional):
```bash
code --install-extension modern-turbo-pascal-ui-0.1.0.vsix
```

4. Publish to marketplace:
```bash
vsce publish -p <your-personal-access-token>
```

### Updating an Existing Extension

1. Update version in `package.json` (following semantic versioning)

2. Update `CHANGELOG.md` with new changes

3. Package and publish:
```bash
vsce package
vsce publish -p <your-personal-access-token>
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
