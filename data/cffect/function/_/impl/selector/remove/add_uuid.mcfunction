#> cffect:_/impl/selector/remove/add_uuid
#--------------------
# ./main AS [target]
#--------------------

data modify storage cffect:in remove.uuids append value {}
data modify storage cffect:in remove.uuids[-1].uuid set from entity @s UUID