# docker_frpc
frpc的docker镜像

# 使用方法
```bash
docker run -d --name frpc -v /etc/frpc/:/conf --net=host frpc:0.22.0
```
