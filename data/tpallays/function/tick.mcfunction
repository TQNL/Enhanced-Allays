# tp to the player
execute as @e[type=allay,tag=!tpallays_named] if data entity @s CustomName unless data entity @s {CustomName:'""'} run tag @s add tpallays_named
execute as @e[type=allay,tag=tpallays_named] if data entity @s {CustomName:'""'} run tag @s remove tpallays_named
execute as @e[type=allay,predicate=!tpallays:in_vehicle,tag=!tpallays_named] at @s unless data entity @s Brain.memories."minecraft:liked_noteblock" unless block ~ ~ ~ #tpallays:trap unless block ~ ~-1 ~ #tpallays:trap run function tpallays:tp_to_player with entity @s Brain.memories."minecraft:liked_player"

# tp to liked noteblock
execute as @e[type=allay,predicate=!tpallays:in_vehicle,tag=!tpallays_named,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:0}}}}] at @s unless block ~ ~ ~ #tpallays:trap unless block ~ ~-1 ~ #tpallays:trap run function tpallays:resetallaypos

# leash
execute as @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_noteblock":{value:{}}}}}] if data entity @s leash.UUID run function tpallays:leashallay
execute as @e[type=allay,tag=allayleashed] unless data entity @s leash.UUID run function tpallays:unleashallay

# unname
execute as @e[type=allay,nbt={CustomName:'"unname"'}] run function tpallays:unname
