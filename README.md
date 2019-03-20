# docker_frpc
frp_client的docker镜像

## 使用方法
需要搭配docker_frps使用
```bash
docker run -d --name frpc -v /etc/frpc/:/conf --net=host unwenliu/frpc:0.22.0
```
/etc/frpc 文件夹里放配置文件
```ini
# frpc.ini
[common]
server_addr = x.x.x.x
server_port = 7000
  
[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6000
  
[web01]
type = http
local_port = 6880
custom_domains = your.domain
```
