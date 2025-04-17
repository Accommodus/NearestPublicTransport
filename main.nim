import
  json_rpc/rpcserver

var router = RpcRouter.init()

router.rpc("hello") do():
  result = %"Hello"