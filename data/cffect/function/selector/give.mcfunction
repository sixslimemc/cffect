#> cffect : selector/give
#--------------------
# -> id: CffectID
# -> selector: $selector
# -> duration: int
# => data: any = {}
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: success; count of entities that ceffect was applied too.
# -1: failure; no definition exists for <id>.
# -2: failure; <duration> less than 1.
#--------------------

# wrapper around uuids/give

return run function cffect:_/impl/selector/give/main with storage cffect:in give