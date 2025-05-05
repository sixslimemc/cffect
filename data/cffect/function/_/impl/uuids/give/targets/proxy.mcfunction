#> cffect:_/impl/uuids/give/targets/proxy
#--------------------
# ./each AS [proxy snowball]
#--------------------

data modify entity @s Owner set from storage cffect:_ s.give[-1].this_target
execute on origin run scoreboard players add *give.return_count _cffect 1



kill @s