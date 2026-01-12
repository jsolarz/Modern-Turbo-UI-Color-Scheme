# GitHub Actions Setup Guide

## VS Code Marketplace Publishing

### Prerequisites

1. **Create a Personal Access Token (PAT)**
   - Go to [Azure DevOps](https://dev.azure.com)
   - Sign in with your Microsoft account (same as VS Code Marketplace)
   - Click on your profile icon → Security → Personal Access Tokens
   - Click "New Token"
   - Set:
     - Name: `VS Code Marketplace Publishing`
     - Organization: `All accessible organizations`
     - **Expiration**: 
       - **Option 1 (Recommended)**: Set to "Custom" and choose a long duration (e.g., 1 year or 2 years)
       - **Option 2**: Set to "No expiration" for permanent token (less secure but no maintenance)
       - **Note**: You can extend expiration later without creating a new token
     - Scopes: Select `Marketplace (Manage)`
   - Click "Create"
   - **Copy the token immediately** (you won't see it again)
   
   **Important**: You do NOT need to recreate the token monthly. Set a long expiration (1-2 years) or no expiration, and you can extend it later if needed.

2. **Add GitHub Secret**
   - Go to your GitHub repository
   - Navigate to Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Name: `VS_MARKETPLACE_TOKEN`
   - Value: Paste your PAT from step 1
   - Click "Add secret"

### How It Works

The workflow automatically publishes your extension when:

1. **Version Tag Push** (Recommended)
   ```bash
   git tag v0.1.0
   git push origin v0.1.0
   ```
   The workflow will:
   - Extract version from tag
   - Validate the extension
   - Package it
   - Publish to marketplace

2. **Manual Trigger**
   - Go to Actions tab in GitHub
   - Select "Publish VS Code Extension"
   - Click "Run workflow"
   - Enter version number
   - Click "Run workflow"

### Version Management

Before publishing:
1. Update version in `vscode/package.json`
2. Update `vscode/CHANGELOG.md` with changes
3. Commit changes
4. Create and push a version tag:
   ```bash
   git add vscode/package.json vscode/CHANGELOG.md
   git commit -m "Release v0.1.0"
   git tag v0.1.0
   git push origin main
   git push origin v0.1.0
   ```

### Troubleshooting

**Error: Missing VS_MARKETPLACE_TOKEN**
- Ensure the secret is added in GitHub repository settings
- Check the secret name matches exactly: `VS_MARKETPLACE_TOKEN`

**Error: Invalid publisher**
- Verify `publisher` field in `vscode/package.json` matches your marketplace publisher ID
- Ensure you've created a publisher account at [marketplace.visualstudio.com/manage](https://marketplace.visualstudio.com/manage)

**Error: Extension name already exists**
- Change the `name` field in `vscode/package.json` to something unique

**Publishing fails but package succeeds**
- Check that your PAT has "Marketplace (Manage)" scope
- Verify the PAT hasn't expired
- Ensure you're logged into the correct Azure DevOps organization

### Security Notes

- Never commit your PAT to the repository
- The PAT is stored as a GitHub secret and only accessible during workflow runs
- Use the minimum required scope (Marketplace Manage)
- **PAT Expiration**: 
  - You can set the PAT to not expire or use a long expiration (1-2 years)
  - Azure DevOps allows extending expiration without creating a new token
  - For better security, use a long expiration (1-2 years) rather than no expiration
  - You'll receive email notifications before expiration to remind you to extend it