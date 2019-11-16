# 使用 Docker 安装 GitLab

## 安装 GitLab

参考文档: https://docs.gitlab.com/omnibus/docker/README.html

其中主要是 docker-compose.yml 部分, 以及如果修改端口.

首次登陆需要页面设置 root 用户密码.

各种文件配置在 `/var/opt/gitlab` 路径下.

Ps: 之后想要在外层再架设一个 nginx, 确保单机部署多任务, 共享 80 端口.

## GitLab 支持 Container Registry

管理员开启支持: https://docs.gitlab.com/ee/administration/packages/container_registry.html
