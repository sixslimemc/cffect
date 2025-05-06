#> cffect : selector/remove : MAIN
#--------------------
# -> id: CffectID
# -> selector: $selector
#--------------------
# .
#--------------------
# TODO: description
#--------------------
#
#--------------------
# MAIN

data merge storage cffect:in {remove:{uuids:[]}}
$execute as $(selector) run function cffect:_/impl/selector/remove/add_uuid
return run function cffect:uuids/remove