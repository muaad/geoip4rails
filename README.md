# Geoip4rails

Gives geolocation details based on an IP address/host name

## Installation

Add this line to your application's Gemfile:

    gem 'geoip4rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geoip4rails

## Usage

You can pass the IP address/hostname for which you want to check geolocation data to: 

    Geoip4rails.find_by_ip("208.95.216.41")
    Geoip4rails.find_by_ip("google.com")
    
These return the hashes below:

    {"ip"=>"208.95.216.41", "country_code"=>"US", "country_name"=>"United States", 
    "region_code"=>"VT", "region_name"=>"Vermont", "city"=>"Colchester", "zipcode"=>"05446", 
    "latitude"=>44.55, "longitude"=>-73.1552, "metro_code"=>"523", "area_code"=>"802"}
    
And

    {"ip"=>"173.194.115.72", "country_code"=>"US", "country_name"=>"United States", 
    "region_code"=>"CA", "region_name"=>"California", "city"=>"Mountain View", "zipcode"=>"94043", 
    "latitude"=>37.4192, "longitude"=>-122.0574, "metro_code"=>"807", "area_code"=>"650"}
    
for the second case.
    
You can of course select your desired value from this hash i.e.

    Geoip4rails.find_by_ip("208.95.216.41")["country_name"]
    => "United States"
    Geoip4rails.find_by_ip("208.95.216.41")["country_code"]
    => "US"
    
And so on. But we have shorthand methods for all this as shown below:

    Geoip4rails.country("208.95.216.41")
     => "United States" 
    Geoip4rails.city("208.95.216.41")
     => "Colchester" 
    Geoip4rails.area_code("208.95.216.41")
     => "802" 
    Geoip4rails.metro_code("208.95.216.41")
     => "523" 
    Geoip4rails.zipcode("208.95.216.41")
     => "05446" 
    Geoip4rails.region_code("208.95.216.41")
     => "VT" 
    Geoip4rails.region_name("208.95.216.41")
     => "Vermont" 
    Geoip4rails.latitude("208.95.216.41")
     => 44.55 
    Geoip4rails.longitude("208.95.216.41")
     => -73.1552 
     
## Pros and Cons

### Pros
This gem relies on the freegeoip.net API which already has an internal database with geolocation information, which is queried via the API. This means that you don't have to deal with the database yourself as you would with some of the gems out there.
### Cons
The freegoip.net API has a usage limit but, you will probably never have to worry about it. API usage is limited to 10,000 queries per hour. After reaching this limit, all requests will result in HTTP 403 (Forbidden) until the roll over.

If the usage limit is a problem, please consider running your own instance of this system. It's open source and freely available at GitHub.

Download the source code at https://github.com/fiorix/freegeoip.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
