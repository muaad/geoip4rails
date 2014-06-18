require "geoip4rails/version"

module Geoip4rails
  def geolocation ip, format
  	HTTParty.get("http://freegeoip.net/#{format}/#{ip}")
  end
  
  def geolocation
  	ip = request.remote_ip
  	HTTParty.get("http://freegeoip.net/json/#{ip}")
  end

  # def country
  	
  # end
  # def country_code
  	
  # end
  # def city
  	
  # end
  # def country
  	
  # end
end
