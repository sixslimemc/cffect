#> cffect:_/cffect_end/cancel_task
#--------------------
# ./execute
#--------------------

$data modify storage cffect:_ end.end_command set from storage delay:data tasks[{task_id:$(end_task_id)}].data.cffect.end_command
$data remove storage delay:data tasks[{task_id:$(end_task_id)}]

# fallback:
$execute unless data storage cffect:_ end.end_command run data modify storage cffect:_ end.end_command set from storage cffect:data definitions.$(id).end