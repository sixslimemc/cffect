#> cffect:_/sc/load
# @ LOAD

scoreboard objectives add _cffect dummy



# DEBUG
scoreboard players reset *init _cffect

execute unless score *init _cffect matches 1 run function cffect:_/sc/init