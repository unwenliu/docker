FROM busybox:1.30

ARG FRP_VERSION=0.28.0
ARG ARCH=amd64

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
&& tar -zxf frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
&& mkdir /frpc \
&& cp frp_${FRP_VERSION}_linux_${ARCH}/frpc* /frpc/ \
&& rm -rf frp_${FRP_VERSION}_linux_${ARCH}*

RUN mkdir /conf
VOLUME /conf

WORKDIR /frpc
ENTRYPOINT ["./frpc","-c","/conf/frpc.ini"]
