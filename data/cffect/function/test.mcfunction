
data modify storage cffect:data definitions.test.tester set value {start:'say start', end:'say end'}

data merge storage cffect:in {give:{id:'test.tester', duration:100, data:{bruh:'ok'}}}
function cffect:give

# DEBUG:
tellraw @a ["TASKS: ", {'storage':'delay:data', 'nbt':'tasks'}]

data remove storage cffect:data definitions.test

say TEST END