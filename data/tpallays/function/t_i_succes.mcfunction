tellraw @s {"color":"yellow","text":"invulnerable allays functionality disabled"}
execute as @e[type=allay,nbt={Invulnerable:1b}] run data merge entity @s {Invulnerable:0b}
scoreboard players reset @a invulnerable_allays
