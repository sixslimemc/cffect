#> cffect:_/impl/uuids/give/targets/trigger_end
#--------------------
# ./do AS [target]
#--------------------

data modify storage cffect:api this prepend value {data:{}}
data modify storage cffect:api this[0].data set from storage cffect:_ s.give[-1].trigger.end.data
$$(end)
data remove storage cffect:api this[0]