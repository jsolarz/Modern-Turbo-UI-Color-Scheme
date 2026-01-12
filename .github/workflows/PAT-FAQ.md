# PAT (Personal Access Token) FAQ

## Do I need to recreate the PAT every month?

**No!** You can set the PAT to:
- **No expiration** - Permanent token (works forever, less secure)
- **Long expiration** - 1-2 years (recommended for security)
- **Custom expiration** - Any duration you choose

Azure DevOps allows you to **extend the expiration** of an existing PAT without creating a new one. You'll receive email notifications before expiration.

## Can I avoid using a PAT?

**No.** A Personal Access Token from Azure DevOps is required for VS Code marketplace publishing. There are no alternative authentication methods for automated publishing via GitHub Actions.

## How do I extend an existing PAT?

1. Go to [Azure DevOps](https://dev.azure.com)
2. Click your profile icon → Security → Personal Access Tokens
3. Find your existing token
4. Click the "..." menu → Edit
5. Extend the expiration date
6. Save

**No need to update the GitHub secret** - the token value stays the same, only the expiration changes.

## What's the recommended expiration?

- **1-2 years**: Good balance of security and convenience
- **No expiration**: Convenient but less secure (not recommended for production)
- **30-90 days**: More secure but requires frequent updates

For personal projects, 1-2 years is recommended. For organizational use, follow your security policies.

## What happens when the PAT expires?

- GitHub Actions workflow will fail with authentication error
- You'll receive email notifications before expiration
- Simply extend the expiration date (no new token needed)
- No need to update the GitHub secret

## Security Best Practices

- Use minimum required scope: `Marketplace (Manage)` only
- Store PAT as GitHub secret (never commit to code)
- Set reasonable expiration (1-2 years for personal projects)
- Monitor expiration dates
- Rotate if compromised (create new token, update GitHub secret)
