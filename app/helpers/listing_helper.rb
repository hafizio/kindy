module ListingHelper
  def static_map(lon, lat)
    content_tag 'a', href: google_map(lat, lon) do
      image_tag "http://api.tiles.mapbox.com/v4/ibnukamy.kcg9ahj1/pin-s-bus+f44(#{lon},#{lat},16)/#{lon},#{lat},16/400x300.png?access_token=pk.eyJ1IjoiaWJudWthbXkiLCJhIjoiczRINE43YyJ9.1wTZ4Gkrv8C1EKD8iTkT3w"
    end
  end

  def google_map(lat, lon)
    "http://maps.google.com/maps?daddr=#{lat},#{lon}"
  end

  def dynamic_map(lon, lat)
    image_tag "http://api.tiles.mapbox.com/v4/ibnukamy.kcg9ahj1/pin-s-bus+f44(#{long},#{lat},30)/#{long},#{lat},13/500x300.png?access_token=pk.eyJ1IjoiaWJudWthbXkiLCJhIjoiczRINE43YyJ9.1wTZ4Gkrv8C1EKD8iTkT3w"
  end
end
