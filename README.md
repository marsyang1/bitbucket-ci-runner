BUILD IMAGE

TAG latest

```

docker build -t marsyang1/bitbucket-ci-runner:latest . && \
docker push marsyang1/bitbucket-ci-runner:latest

```


```

docker build -f gke.Dockerfile -t marsyang1/bitbucket-ci-runner:gke .
docker push marsyang1/bitbucket-ci-runner:gke

```