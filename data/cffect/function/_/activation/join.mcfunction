#> cffect:_/activation/join
#--------------------
# doorman <!> on_join
#--------------------

$data modify storage cffect:data entities.active append from storage cffect:data entities.inactive[{uuid:$(UUID)}]
$data remove storage cffect:data entities.inactive[{uuid:$(UUID)}]