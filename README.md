# hello_podman

## 準備

```sh
sudo sysctl kernel.unprivileged_userns_clone=1
```

## Dockerコンテナのビルド

```sh
docker build -t hellopodman .
```

## VagrantVMにdockerイメージを転送

```sh
docker save hellopodman | vagrant ssh -c 'podman load'
```

## コンテナの実行（VagrantVM上）

```sh
podman run --rm hellopodman
```

## その他

```
WARN[0000] The cgroupv2 manager is set to systemd but there is no systemd user session available
WARN[0000] For using systemd, you may need to login using an user session
WARN[0000] Alternatively, you can enable lingering with: `loginctl enable-linger 1000` (possibly as root)
WARN[0000] Falling back to --cgroup-manager=cgroupfs
```

という警告が表示されるがどうしたらいいのかよくわかってない。
