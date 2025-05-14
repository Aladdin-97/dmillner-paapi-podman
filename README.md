# dmillner-paapi-podman
The workflow of building image is under .github/workflows, where it has defined various step of building and pushing images
The sensitive variables are set inside Settings (tab of repo ) > Security > Secrets and Variables > Actions

## Docker image test 

```
docker run -p 80:80 -d docker_username/reponame:latest
```

or 

```
podman run -p 80:80 -d docker_username/reponame:latest
```

always pull image after a build:

```docker pull docker_username/reponame:latest```
or
```podman pull docker_username/reponame:latest```