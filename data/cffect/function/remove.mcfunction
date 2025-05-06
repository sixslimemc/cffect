#> cffect : remove
# % AS [target]
#--------------------
# -> id: CffectID
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: success.
# 0: [target] does not have cffect <id>.
#--------------------

# wrapper around uuids/remove

data merge storage cffect:in {remove:{uuids:[{}]}}
data modify storage cffect:in remove.uuids[0].uuid set from entity @s UUID
function cffect:uuids/remove