#> cffect:_/sc/manifest
# @ MANIFEST

data remove storage slimecore:in manifest.pack

data modify storage slimecore:in manifest.pack.pack_id set value "cffect"
data modify storage slimecore:in manifest.pack.author_id set value "sixslime"
data modify storage slimecore:in manifest.pack.version set value {major:0, minor:1, patch:0}
data modify storage slimecore:in manifest.pack.url set value "https://github.com/sixslimemc/cffect/releases/download/v0.1.0/sixslime.cffect.0.1.0.zip"

data modify storage slimecore:in manifest.pack.display.name set value "C-ffect"
data modify storage slimecore:in manifest.pack.display.summary set value "TODO: DESC"
data modify storage slimecore:in manifest.pack.display.author_name set value "SixSlime"

data modify storage slimecore:in manifest.pack.display.links.author set value "https://github.com/sixslimemc"
data modify storage slimecore:in manifest.pack.display.links.info set value "https://github.com/sixslimemc/cffect"
data modify storage slimecore:in manifest.pack.display.links.versions set value "https://github.com/sixslimemc/cffect/releases"

data modify storage slimecore:in manifest.pack.entrypoints set value []
data modify storage slimecore:in manifest.pack.entrypoints append value {id:"join_activate", after:[{id:"join_resume", pack_ref:"delay-prt"}, {id:"main", pack_ref:"doorman"}]}
data modify storage slimecore:in manifest.pack.entrypoints append value {id:"leave_deactivate", after:[{id:"leave_pause", pack_ref:"delay-prt"}, {id:"main", pack_ref:"doorman"}]}
data modify storage slimecore:in manifest.pack.entrypoints append value {id:"cffect_tick"}

data modify storage slimecore:in manifest.pack.preload_entrypoints set value []
data modify storage slimecore:in manifest.pack.abstract_declarations set value []
data modify storage slimecore:in manifest.pack.abstract_implementations set value []

data modify storage slimecore:in manifest.pack.dependencies set value []
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"delay", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/delay/releases/download/v0.1.0/sixslime.delay.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"delay-prt", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/delay-prt/releases/download/v0.1.0/sixslime.delay-prt.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"doorman", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/doorman/releases/download/v0.1.0/sixslime.doorman.0.1.0.zip", version:{major:0, minor:1, patch:0}}}

data modify storage slimecore:in manifest.pack.is_library set value true

data modify storage slimecore:in manifest.pack.loader_version set value {major:0, minor:3}

function slimecore:api/manifest