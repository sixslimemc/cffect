#> cffect : selector/give : MAIN
#--------------------
# -> id: CffectID
# -> selector: $selector
# -> duration: int
# => data: any = {}
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: success; count of entities that ceffect was applied too.
# -1: failure; no definition exists for <id>.
# -2: failure; <duration> less than 1.
#--------------------
# MAIN

data merge storage cffect:in {give:{uuids:[]}}
$execute as $(selector) run function cffect:_/impl/selector/give/add_uuid
return run function cffect:uuids/give