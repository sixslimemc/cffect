#> cffect : give
# % AS [target]
#--------------------
# -> id: CffectID
# -> duration: int
# => data: any = {}
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: success.
# -1: failure; no definition exists for <id>.
# -2: failure; <duration> less than 1.
#--------------------

# wrapper around uuids/give

data merge storage cffect:in {give:{uuids:[{}]}}
data modify storage cffect:in give.uuids[0].uuid set from entity @s UUID
function cffect:uuids/give