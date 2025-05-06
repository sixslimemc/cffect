#> cffect:_/util/execute_trigger/main

# IN {util.execute_trigger.in}
# % AS [target]
# $> command: $command
# -> data: any
# -> uuid: uuid
# -> id: CffectID

# set data:
data modify storage cffect:api this prepend value {update:false, instance:{data:{}}}
data modify storage cffect:api this[0].instance.data set from storage cffect:_ util.execute_trigger.in.data

$$(command)

# update:
execute store result score *x _cffect run data get storage cffect:api this[0].update
execute if score *x _cffect matches 1 run function cffect:_/util/execute_trigger/update with storage cffect:_ util.execute_trigger.in

data remove storage cffect:api this[0]
