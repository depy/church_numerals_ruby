# -*- coding: utf-8 -*-

toInt = ->(f) { f.(->(x) { x + 1 }).(0) }
succ = ->(n) { ->(f) { ->(x) { f.((n.(f)).(x)) } } }
plus = ->(m) { ->(n) { ->(f) { ->(x) { (m.(f)).((n.(f)).(x))  } } } }

zero = ->(f) { ->(x) { x } }
one = ->(f) { ->(x) { f.(x) } }
two = ->(f) { ->(x) { f.(f.(x)) } }
three = succ.(two)
four = succ.(three)
five = plus.(two).(three)

r0 = toInt.(zero)
r1 = toInt.(one)
r2 = toInt.(two)
r3 = toInt.(three)
r4 = toInt.(four)
r5 = toInt.(five)

puts "Results: #{r0}, #{r1}, #{r2}, #{r3}, #{r4}, #{r5}"

