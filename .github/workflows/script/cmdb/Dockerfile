# 第一阶段：构建阶段
FROM golang:1.20-bullseye AS builder

# 安装 Node.js 及系统工具
RUN apt-get update && apt-get install -y curl build-essential \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

# 设置工作目录
WORKDIR /app

# 设置 Go module 模式
RUN go env -w GO111MODULE="auto"

# 下载 Go 依赖
RUN go mod tidy

# 下载源码
RUN git clone  -b release-v3.14.6  https://github.com/TencentBlueKing/bk-cmdb configcenter  --single-branch

# 编译前端 UI
WORKDIR /app/configcenter/src
RUN make ui

# 编译 Go 项目
WORKDIR /app/configcenter/src
RUN make server
RUN make package

# 第二阶段：运行阶段
FROM debian:bullseye-slim

# 安装运行时依赖（按需添加）
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# 创建目录
WORKDIR /app

# 从构建阶段复制编译好的二进制和资源
COPY --from=builder /app/configcenter/bin/pub/cmdb.tar.gz /app/cmdb.tar.gz

# 如果有配置文件、静态文件等也可以复制过来
# COPY --from=builder /app/configcenter/config /app/config

# 运行命令（改成你的启动命令）
CMD ["bash"]
