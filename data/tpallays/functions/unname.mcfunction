# remove custom name command - broken due to https://bugs.mojang.com/browse/MC-128225
data merge entity @s {PersistenceRequired:0b}
give @p name_tag[custom_name='{"text":"unname"}'] 1