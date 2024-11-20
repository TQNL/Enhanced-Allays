# <remove custom name> command
data remove entity @s CustomName
tag @s remove tpallays_named
data merge entity @s {PersistenceRequired:0b}
give @p name_tag[custom_name='{"text":"unname"}'] 1