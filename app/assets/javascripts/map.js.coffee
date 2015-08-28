$(document).ready ->
  L.mapbox.accessToken = "pk.eyJ1IjoiaWJudWthbXkiLCJhIjoiczRINE43YyJ9.1wTZ4Gkrv8C1EKD8iTkT3w"

  map = L.mapbox.map("map", "ibnukamy.kcg9ahj1").setView(gon.user_location, 14)

  map.scrollWheelZoom.disable();

  L.control.locate({
    showPopup: true,
    locateOptions: { maxZoom: 14 }
  }).addTo(map)

  layer = L.mapbox.featureLayer().addTo(map)

  layer.setGeoJSON(gon.geojson)

  layer.on "click", (e) -> 
    e.layer.unbindPopup()
    window.open(e.layer.feature.properties.url)
    return

  layer.on "mouseover", (e) ->
    e.layer.openPopup()
    return

  layer.on "mouseout", (e) ->
    e.layer.closePopup()
    return
