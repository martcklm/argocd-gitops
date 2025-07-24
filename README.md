# Simple Java Webapp with GitOps

## Build with Cloud Build
Cloud Build is configured in cloudbuild.yaml to build and push Docker image.

## Deploy with Argo CD
- Prod overlay: infrastructure/gitops/overlays/prod
- Dev overlay: infrastructure/gitops/overlays/dev

Argo CD Applications:
- application-prod.yaml
- application-dev.yaml
