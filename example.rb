#!/usr/bin/ruby

require 'rubygems'
require 'json'
require 'pp'
require 'open-uri'

obj = JSON.load(open("https://api.coinmarketcap.com/v1/ticker/qtum/"))

val = obj[0]["price_usd"].to_f.round(2)
puts '$ #{val}' 
