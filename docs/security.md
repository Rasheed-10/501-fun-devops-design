# Security

Security is designed across the edge, application, infrastructure and CI/CD layers.

## Edge Security

- Cloudflare DNS protects the public entry point.
- Cloudflare WAF filters malicious traffic before it reaches Azure.
- Cloudflare DDoS protection reduces the risk of volumetric attacks.
- Rate limiting protects APIs from abuse.
- Bot protection helps reduce automated attacks.

## Azure Security

- Azure Front Door WAF adds another layer of protection.
- HTTPS is enforced for public endpoints.
- Azure API Management can enforce authentication, throttling and request policies.
- Azure Key Vault stores secrets and certificates.
- Managed identities are used for service-to-service authentication.
- Private endpoints should be used for Key Vault, Storage and Database.
- RBAC follows least privilege.

## CI/CD Security

- GitHub Actions uses OIDC to authenticate to Azure.
- No long-lived cloud credentials are stored in the repository.
- Container images are scanned before deployment.
- Terraform changes go through pull request review.
- Production deployment uses approval gates.

## Data Security

- Storage accounts require TLS.
- Sensitive data should be encrypted at rest.
- Database access should be private.
- Logs should avoid storing sensitive personal information.