import json
#import httpclient
import math
import heapMin
import nodeLocations

proc cmp(a, b: LocationNode): int =
  if a.distance < b.distance: return -1
  elif a.distance > b.distance: return 1
  else: return 0

proc loadLocationsHeap(lon, lat: float, filename: string): MinHeap[LocationNode] = 
    #let client = newHttpClient()
    #let response = client.getContent(url)
    let data = parseJson(readFile(filename))
    var heap = constructMinHeap[LocationNode]()

    for item in data["features"].items:
        
        let properties = item["properties"]
        let stop_latt = properties["stop_lat"].getFloat()
        let stop_lonn = properties["stop_lon"].getFloat()
        let dist = sqrt((stop_latt - lat) * (stop_latt - lat) + (stop_lonn - lon) * (stop_lonn - lon))

        let node = LocationNode(
            stop_name: properties["stop_name"].getStr(),
            stop_lat: stop_latt,
            stop_lon: stop_lonn,
            distance: dist
        )
        heap.insert(node)
    return heap





when isMainModule: # test case
  let 
    myLat = 38.252  # Your reference latitude
    myLon = -85.758 # Your reference longitude
    filename = "NTAD_National_Transit_Map_Stops_-7235353874239529355.geojson"
  var heap = loadLocationsHeap(myLon, myLat, filename)

  var extracted: seq[LocationNode] = @[]
  while heap.arr.len > 0:
    extracted.add(heap.extractMin())

  # Check if min heap properties are violated
  for i in 0..<extracted.len - 1:
    doAssert cmp(extracted[i], extracted[i + 1]) <= 0, "Heap property violated"
  echo "Test passed!"
  echo "Top 5 closest stops:"
  for i in 0..<min(5, extracted.len):
    echo extracted[i].stop_name, "              Distance: ", extracted[i].distance