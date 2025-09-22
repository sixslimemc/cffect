
data remove storage cffect:data definition.test
data modify storage cffect:data definition.test.1 set value {start:"say start 1", end:"say end 1"}
data modify storage cffect:data definition.test.2 set value {start:"say start 2", end:"say end 2"}

data merge storage cffect:in {give:{id:'test.1', duration:20}}
function cffect:give
data merge storage cffect:in {give:{id:'test.2', duration:30}}
function cffect:give


tellraw @a ">> TEST <<"