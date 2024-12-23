execute as @e[type=allay] if data entity @s Brain.memories."minecraft:liked_player" run data merge entity @s {Invulnerable:0b}
scoreboard players reset @s invulnerable_allays_all
