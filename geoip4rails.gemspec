# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoip4rails/version'

Gem::Specification.new do |spec|
  spec.name          = "geoip4rails"
  spec.version       = Geoip4rails::VERSION
  spec.authors       = ["muaad"]
  spec.email         = ["muadh24@gmail.com"]
  spec.description   = "Gives geolocation details based on IP"
  spec.summary       = "Uses freegeoip's API to fetch geolocation data given an IP address. freegeoip.net is a public REST API for searching geolocation of IP addresses and host names.

                        It has an internal database with geolocation information, which is queried via the API. There's no sorcery, it's just a database. And although the database is very accurate, don't expect it to be perfect. The API supports both HTTP and HTTPS.

                        Supported formats are csv, xml or json"
  spec.homepage      = "https://github.com/muaad/geoip4rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "httparty"
  # spec.add_development_dependency "geocoder"
end
