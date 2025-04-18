import std/json

type LeafletMap* {.importjs: "L.Map", nodecl.} = ref object
proc initMap*(name: string): LeafletMap {.importjs: "L.map(#)", nodecl.}
proc setView*(m: LeafletMap, lat, lng: float, zoom: int) {.importjs: "#.setView(@)", nodecl.}