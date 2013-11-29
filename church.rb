# -*- coding: utf-8 -*-

toInt = ->(f) { f.(->(x) { x + 1}).(0) }

zero = ->(f) { ->(x) { x } }
one = ->(f) { ->(x) { f.(x) } }
two = ->(f) { ->(x) { f.(f.(x)) } }

r0 = toInt.(zero)
r1 = toInt.(one)
r2 = toInt.(two)

puts "Results: #{r0}, #{r1} and #{r2}"

