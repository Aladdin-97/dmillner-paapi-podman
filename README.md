# dmillner-paapi-podman
The workflow of building image is under .github/workflows, where it has defined various step of building and pushing images
The sensitive variables are set inside Settings (tab of repo ) > Security > Secrets and Variables > Actions

## Docker image test 

```
docker run -p 80:80 -d docker_username/repo:latest
```

or 

```
podman run -p 80:80 -d docker_username/test:latest
```