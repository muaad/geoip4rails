require "geoip4rails/version"
require "httparty"

module Geoip4rails
  module_function
  def find_by_ip ip
  	format = "json"
  	HTTParty.get("http://freegeoip.net/#{format}/#{ip}")
  end

  # def geolocation
  # 	ip = request.remote_ip
  # 	HTTParty.get("http://freegeoip.net/json/#{ip}")
  # end

  def country ip
  	find_by_ip(ip)["country_name"]
  end
  def country_code ip
  	find_by_ip(ip)["country_code"]
  end
  def city ip
  	find_by_ip(ip)["city"]
  end
  def region_code ip
  	find_by_ip(ip)["region_code"]
  end
  def region_name ip
  	find_by_ip(ip)["region_name"]
  end
  def zipcode ip
  	find_by_ip(ip)["zipcode"]
  end
  def latitude ip
  	find_by_ip(ip)["latitude"]
  end
  def longitude ip
  	find_by_ip(ip)["longitude"]
  end
  def metro_code ip
  	find_by_ip(ip)["metro_code"]
  end
  def area_code ip
  	find_by_ip(ip)["area_code"]
  end
end
