#> cffect : uuids/give
#--------------------
# -> id: CffectID
# -> uuids: {uuid: uuid}
# -> duration: int
# ~> data? any
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: success; count of entities that ceffect was applied too.
# -1: failure; no definition exists for <id>.
# -2: failure; <duration> less than 1.
#--------------------

data remove storage cffect:out give

data modify storage cffect:_ s.give append value {}
data modify storage cffect:_ s.give[-1].in set from storage cffect:in give
data remove storage cffect:in give

execute store result score *x _cffect run function cffect:_/impl/uuids/give/main

data remove storage cffect:_ s.give[-1]

return run scoreboard players get *x _cffect