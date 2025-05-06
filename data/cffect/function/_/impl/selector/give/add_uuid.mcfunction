#> cffect:_/impl/selector/give/add_uuid
#--------------------
# ./main AS [target]
#--------------------

data modify storage cffect:in give.uuids append value {}
data modify storage cffect:in give.uuids[-1].uuid set from entity @s UUID