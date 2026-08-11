#> cffect:_/main/tick_reset/ticking
#--------------------
# _/preloads/tick_reset
#--------------------
schedule function cffect:_/main/tick_reset/ticking 1t
execute unless score *init _cffect matches 1 run return 0

function cffect:_/main/tick_reset/reset