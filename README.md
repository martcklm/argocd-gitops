# Production-Grade GitOps Java Webapp

## Structure
- app/java-webapp: Java source code (Dockerfile inside)
- infrastructure/gitops: K8s manifests with Kustomize overlays
- infrastructure/argo: Argo CD Application manifests
- cloudbuild.yaml: Cloud Build pipeline with logsBucket configured

## Build & Deploy
1. Build the Java webapp with Maven:
   ```bash
   cd app/java-webapp
   mvn clean package
   ```
2. Build & push Docker image:
   ```bash
   cd app/java-webapp
   docker build -t us-central1-docker.pkg.dev/$PROJECT_ID/gcp-poc/java-app:TAG .
   docker push us-central1-docker.pkg.dev/$PROJECT_ID/gcp-poc/java-app:TAG
   ```
3. Update image tag in `infrastructure/gitops/base/deployment.yaml` and commit.
4. Argo CD auto-syncs changes to GKE.
