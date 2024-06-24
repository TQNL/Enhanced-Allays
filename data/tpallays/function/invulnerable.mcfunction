schedule function tpallays:invulnerable 1s replace

# invulnerable
scoreboard players enable @a invulnerable_allays
execute as @a[scores={invulnerable_allays=1}] run function tpallays:invulnerable_allays with entity @s
execute as @e[type=allay,nbt={Invulnerable:1b}] unless data entity @s Brain.memories."minecraft:liked_player".value run data merge entity @s {Invulnerable:0b}
execute as @a[scores={invulnerable_allays=2..}] run function tpallays:invulnerable_allays_off with entity @s
