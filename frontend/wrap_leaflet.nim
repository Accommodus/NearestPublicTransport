import std/jsffi

{.emit: """
import L from 'https://unpkg.com/leaflet@1.9.4/dist/leaflet-src.esm.js';
import 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.css';
""".}

type LeafletMap* {.importjs: "L.Map", nodecl.} = ref object

proc initMap*(name: string): LeafletMap
  {.importjs: "L.map(#)", nodecl.}

proc setView*(m: LeafletMap; lat, lng: float; zoom: int)
  {.importjs: "#.setView([#, #], #)", nodecl.}
