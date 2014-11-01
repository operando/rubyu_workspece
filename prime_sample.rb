#!/usr/bin/env ruby
# encoding: utf-8

# Prime    
# http://docs.ruby-lang.org/en/2.1.0/Prime.html

require 'prime'

# N以下の素数を求める
puts Prime.each(30).to_a

puts Prime.each.take(10)

# N が素数かどうか調べる
[20, 24, 2, 4000].each{ |e| p "N=#{e} Prime.prime?=#{Prime.prime?(e)}" }