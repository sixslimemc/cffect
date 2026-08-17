#> cffect : definitions/register

data remove storage cffect:out register

execute store result score *x _cffect run function cffect:_/impl/definitions/register/main

data remove storage cffect:_ v.register
data remove storage cffect:in register

return run scoreboard players get *x _cffect