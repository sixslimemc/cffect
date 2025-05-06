#> cffect : uuids/remove
#--------------------
# -> id: CffectID
# -> uuids: {uuid: uuid}
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: amount of entities the Cffect was removed from.
#--------------------

data remove storage cffect:out remove

data modify storage cffect:_ s.remove append value {}
data modify storage cffect:_ s.remove[-1].in set from storage cffect:in remove
data remove storage cffect:in remove

execute store result score *x _cffect run function cffect:_/impl/uuids/remove/main

data remove storage cffect:_ s.remove[-1]

return run scoreboard players get *x _cffect