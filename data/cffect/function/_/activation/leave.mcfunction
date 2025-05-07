#> cffect:_/activation/leave
#--------------------
# doorman <!> on_leave
#--------------------

$data modify storage cffect:data entities.inactive append from storage cffect:data entities.active[{uuid:$(UUID)}]
$data remove storage cffect:data entities.active[{uuid:$(UUID)}]