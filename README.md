# hello_podman

## 概要

- ローカルのDockerでビルドしたDockerイメージをVagrantVM上のpodmanで実行する
- ネットワークはまだ疎通確認できていない

## VagrantVMの準備

```sh
vagrant init
```

## Dockerイメージのビルド

```sh
docker build -t hellopodman .
```

## VagrantVMにDockerイメージを転送する

```sh
docker save hellopodman | vagrant ssh -c 'podman load'
```

## VagrantVM上でコンテナを実行する

```sh
vagrant ssh -c 'podman run --rm hellopodman'
```

## その他

```
WARN[0000] The cgroupv2 manager is set to systemd but there is no systemd user session available
WARN[0000] For using systemd, you may need to login using an user session
WARN[0000] Alternatively, you can enable lingering with: `loginctl enable-linger 1000` (possibly as root)
WARN[0000] Falling back to --cgroup-manager=cgroupfs
```

という警告が表示されるがどうしたらいいのかよくわかってない。
