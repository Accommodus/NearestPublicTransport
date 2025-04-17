FROM nimlang/nim

RUN git config --global advice.detachedHead false
RUN apt-get update && apt-get install -y make clang libclang-dev

RUN nimble install -y nimlangserver
RUN nimble install -y karax jsonrpc
