
data modify storage cffect:data definitions.test.tester set value {start:'tellraw @a ["start effect - ", {storage:"cffect:api", nbt:"this[0]"}]', end:'tellraw @a ["end effect - ", {storage:"cffect:api", nbt:"this[0]"}]'}

data merge storage cffect:in {give:{id:'test.tester', duration:100, data:{bruh:'ok'}}}
function cffect:give

# DEBUG:
tellraw @a ["TASKS: ", {'storage':'delay:data', 'nbt':'tasks'}]

data remove storage cffect:data definitions.test

say TEST END