BUILD IMAGE

TAG latest

```

docker build --platform linux/amd64 -t marsyang1/bitbucket-ci-runner:latest . && \
docker push marsyang1/bitbucket-ci-runner:latest

```


```

docker build --platform linux/amd64 -f gke.Dockerfile -t marsyang1/bitbucket-ci-runner:gke .
docker push marsyang1/bitbucket-ci-runner:gke

```