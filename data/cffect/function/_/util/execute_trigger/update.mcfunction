#> cffect:_/util/execute_trigger/update
#--------------------
# ./main
#--------------------

$data modify storage cffect:data entities.active[{uuid:$(uuid)}].cffects[{id:'$(id)'}].data set from storage cffect:api this[0].instance.data