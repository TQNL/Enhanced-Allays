data modify entity @s Pos set from entity @s Brain.memories."minecraft:liked_noteblock".value.pos
execute store result entity @s Pos[0] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[0]
execute store result entity @s Pos[1] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[1]
execute store result entity @s Pos[2] double 1 run data get entity @s Brain.memories."minecraft:liked_noteblock".value.pos[2]
tp @s ~0.5 ~1 ~0.5