#> cffect:_/sc/init
# @ INIT
scoreboard players set *init _cffect 1

data modify storage cffect:data entities set value {active:[], inactive:[]}

data modify storage cffect:data definitions set value {list:[], map:{}}

data modify storage cffect:data technical set value {end_queued:[], tick_called:false}

# tick reset:
function cffect:_/main/tick_reset/reset