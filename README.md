# studying podman

## Dockerコンテナのビルド

```sh
docker build -t hellopodman .
```

## VagrantVMにdockerイメージを転送

```sh
docker save hellopodman | vagrant ssh -c 'podman load'
```
