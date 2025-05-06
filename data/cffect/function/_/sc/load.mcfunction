#> cffect:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _cffect dummy

execute unless data storage cffect:data entities.active run data merge storage cffect:data {entities:{active:[]}}
execute unless data storage cffect:data entities.inactive run data merge storage cffect:data {entities:{inactive:[]}}