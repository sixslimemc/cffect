#> cffect:_/impl/uuids/give/targets/entry/cffect/prepend
#--------------------
# ./targets/entry/cffect/prepend
# ./targets/entry/new
#--------------------

# IN
# (should be all from context)
# OUT {..new_cffect.out}
# <- instance: CffectInstance

# basic effect info:
data modify storage cffect:_ s.give[-1].new_cffect.out.instance.id set from storage cffect:_ s.give[-1].in.id
data modify storage cffect:_ s.give[-1].new_cffect.out.instance.data set from storage cffect:_ s.give[-1].in.data

# add tick info:
execute if data storage cffect:_ s.give[-1].definition.tick run data modify storage cffect:_ s.give[-1].new_cffect.out.instance.command set from storage cffect:_ s.give[-1].definition.tick
execute if data storage cffect:_ s.give[-1].definition.tick run data modify storage cffect:_ s.give[-1].new_cffect.out.instance.tick.enabled set value true

# create delay, store TaskID in end_task_id:
data modify storage cffect:_ s.give[-1].create_delay.in.ticks set from storage cffect:_ s.give[-1].in.duration
function cffect:_/impl/uuids/give/targets/create_delay
data modify storage cffect:_ s.give[-1].new_cffect.out.instance.end_task_id set from storage cffect:_ s.give[-1].create_delay.out.task_id