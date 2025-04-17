FROM nimlang/nim

RUN apt-get update && apt-get install -y make
RUN git config --global advice.detachedHead false

ADD https://github.com/Accommodus/NearestPublicTransport.git#main /home/workspace/

RUN nimble install -y nimlangserver
RUN nimble install -y karax jsonrpc futhark

