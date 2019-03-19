# docker_frpc
frp_client的docker镜像

## 使用方法
```bash
docker run -d --name frpc -v /etc/frpc/:/conf --net=host unwenliu/frpc:0.22.0
```
