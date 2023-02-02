# WorkFlow on Docker
## 概要
GitHubのWorkFlow(action runner)をDocker上で動作させるコンテナ環境のリポジトリ

## 必要環境
- Docker Desktop
- Runnerのトークン等

## 構築方法
`Dockerfile`からコンテナを構築します。

一連のコマンドを`build_run.sh`や`build_run.bat`で実行する事が可能。
```shell
$ ./build_run.sh
```

次に、構築されたコンテナ内で`./config.sh`を実行します。
```shell
$ ./config.sh  --url [workflowを適用させるリポジトリURL] --token [runnerのトークン]
```