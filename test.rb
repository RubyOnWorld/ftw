require "rubygems"
require "addressable/uri"
require "thread"

$: << File.join(File.dirname(__FILE__), "lib")
require "net-ftw" # gem net-ftw
require "net/ftw/http/client2"

client = Net::FTW::HTTP::Client2.new
#uri = Addressable::URI.parse("http://httpbin.org/ip")
uri = Addressable::URI.parse("http://google.com/")
#uri = Addressable::URI.parse("http://twitter.com/")

# 'client.get' is not the end of this api. still in progress.
fiber = client.get(uri)
p fiber.resume
p fiber.resume
p fiber.resume
p fiber.resume

