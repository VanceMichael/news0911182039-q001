# 纸品风险台账

这是一个用于记录纸品合约、库存与交割信息的后端工程。当前仅提供可运行的 HTTP 健康探针，业务模型和接口将在此基础上建立。

构建镜像：`docker build -t paper-ledger .`

启动服务：`docker run --rm -p 8080:8080 paper-ledger`

访问 `GET /health` 可确认进程已启动。
