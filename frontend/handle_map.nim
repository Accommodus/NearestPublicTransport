import wrap_leaflet

when not defined(js):
  {.fatal.}

let map = initMap("map")
map.setView(37.7749, -122.4194, 13) # San Francisco