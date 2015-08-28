class MapboxMarkerService
  attr_reader :geojson

  def initialize(listings, url)
    @geojson = []
    listings.each do |listing|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [listing.longitude.to_f, listing.latitude.to_f]
        },
        properties: {
          title: listing.name,
          description: "<i class='icon star yellow'></i>".html_safe + "#{listing.average_rating}",
          url: "#{url}listings/#{listing.id}",
          :'marker-color' => '#007d1d',
          :'marker-symbol' => 'restaurant',
          :'marker-size' => 'medium'
        }
      }
    end
  end
end
