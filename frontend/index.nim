include karax / prelude

const leafletIncludes = """
<link rel="stylesheet"
      href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
      integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
      crossorigin=""/>

<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
        integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
        crossorigin=""></script>
"""

proc createDom(): VNode =
  result = buildHtml(html):
    head:
      verbatim(leafletIncludes)
    body:
      tdiv(id="map")
      script:
        verbatim("""
          var map = L.map('map').setView([51.505, -0.09], 13);
          L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap contributors'
          }).addTo(map);
        """)

setRenderer createDom
