# WorkFlow on Docker
## 概要
GitHubのWorkFlow(action runner)をDocker上で動作させるコンテナ環境のリポジトリ

## 必要環境
- Docker Desktop
- Runnerのトークン等

## 構築方法
始めに、リポジトリフォルダ配下に`runner.txt`を作成します。

以下の内容を貼り付けます。
```
RUNNER_URL=[Workflowを適用するリポジトリURL]
RUNNER_TOKEN=[Runnersのトークン]
```

次に、`Dockerfile`からコンテナを構築します。

一連のコマンドを`build_run.sh`や`build_run.bat`で実行する事が可能。
```shell
$ ./build_run.sh [コンテナ名]
```