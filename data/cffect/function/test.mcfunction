
data modify storage cffect:data definition.test.tester set value {start:'tellraw @a ["start effect - ", {storage:"cffect:api", nbt:"this[0]"}]', end:'tellraw @a ["end effect - ", {storage:"cffect:api", nbt:"this[0]"}]', tick:'particle flame ~ ~1 ~ 0.1 0.1 0.1 0.01 1'}

data merge storage cffect:in {give:{id:'test.tester', duration:50, data:{bruh:'ok'}}}
function cffect:give

data remove storage cffect:data definition.test

tellraw @a ">> TEST <<"