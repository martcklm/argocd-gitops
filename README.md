# Production-Grade GitOps Java Webapp

## Structure
- app/java-webapp: Java source code
- infrastructure/gitops: K8s manifests with Kustomize overlays
- infrastructure/argo: Argo CD Application manifests

## Build & Deploy
1. Build the Java webapp with Maven:
   ```bash
   cd app/java-webapp
   mvn package
   ```
2. Build & push Docker image:
   ```bash
   docker build -t us-central1-docker.pkg.dev/PROJECT/REPO/my-java-app:TAG .
   docker push us-central1-docker.pkg.dev/PROJECT/REPO/my-java-app:TAG
   ```
3. Update image tag in `infrastructure/gitops/base/deployment.yaml` and commit.
4. Argo CD auto-syncs changes to GKE.
