#> cffect : get : MAIN
# % AS [target]
#--------------------
# -> id: CffectID
#--------------------
# <- duration: int
# <- data: any
#--------------------
# TODO: description
#--------------------
# 1: success; [target] has cffect <id>.
# 0: failure; [target] does not have cffect <id>.
#--------------------
# MAIN

data modify storage cffect:in get.uuid set from entity @s UUID

# {..instance}:
function cffect:_/impl/get/get_instance with storage cffect:in
execute unless data storage cffect:_ v.get.instance run return 0

# calc duration:
execute store result score *x _cffect run data get storage cffect:_ v.get.instance.end_time
execute store result score *y _cffect run time query gametime
scoreboard players operation *x _cffect -= *y _cffect

execute store result storage cffect:out get.duration int 1 run scoreboard players get *x _cffect
data modify storage cffect:out get.data set from storage cffect:_ v.get.instance

return 1