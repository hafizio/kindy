class UserLocationService
  attr_accessor :request, :user, :location, :error

  def initialize(request, user=nil)
    @request = request
    @user = user
    @error = nil
  end

  def locate!
    begin @request.location
      @location = "#{@request.location.city}, #{@request.location.country}"
      Geocoder.coordinates(@location)
    rescue StandardError => self.error
      self.error = "Application can't locate you due to connection problems"
    end
  end

  def by_location
    Geocoder.coordinates(@user.location) if @user.location
  end

  def by_ip
    if Rails.env.development?
      location = Geocoder.search("175.139.210.60")[0].data
    else
      location = Geocoder.search(@user.current_sign_in_ip)[0].data
    end
    Geocoder.coordinates("#{location['city']}, #{location['country']}")
  end

  def success?
    self.error == nil
  end
end

