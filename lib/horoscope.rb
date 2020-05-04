require_relative "horoscope/version"
require_relative "horoscope/cli"
require_relative "horoscope/period"
require_relative "horoscope/scraper"

require "pry"
require "nokogiri"

module Horoscope
  class Error < StandardError; end
  # Your code goes here...
end


#environment file