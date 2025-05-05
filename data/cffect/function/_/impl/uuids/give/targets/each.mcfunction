#> cffect:_/impl/uuids/give/targets/each
#--------------------
# ../main AS [proxy snowball]
#--------------------
kill @s

data modify storage cffect:_ s.give[-1].this_target set from storage cffect:_ s.give[-1].in.uuids[0].uuid
data modify entity @s Owner set from storage cffect:_ s.give[-1].this_target

execute on origin at @s run function cffect:_/impl/uuids/give/targets/on_target with storage cffect:_ s.give[-1]

data remove storage cffect:_ s.give[-1].in.uuids[0]
execute if data storage cffect:_ s.give[-1].in.uuids[0] summon snowball run function cffect:_/impl/uuids/give/targets/each