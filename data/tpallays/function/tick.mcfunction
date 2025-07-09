# tp to the player
execute as @e[type=allay,tag=!tpallays_named] if data entity @s CustomName run function tpallays:named_allay
execute as @e[type=allay,predicate=!tpallays:in_vehicle,tag=!tpallays_named] at @s unless data entity @s Brain.memories."minecraft:liked_noteblock" unless block ~ ~ ~ #tpallays:trap unless block ~ ~-1 ~ #tpallays:trap run function tpallays:tp_to_player with entity @s Brain.memories."minecraft:liked_player"

# tp to liked noteblock
execute as @e[type=allay,predicate=!tpallays:in_vehicle,tag=!tpallays_named,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:0}}}}] at @s unless block ~ ~ ~ #tpallays:trap unless block ~ ~-1 ~ #tpallays:trap run function tpallays:resetallaypos

# leash
execute as @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_noteblock":{value:{}}}}}] if data entity @s leash.UUID run function tpallays:leashallay
execute as @e[type=allay,tag=allayleashed] unless data entity @s leash.UUID run function tpallays:unleashallay

# unname (wolf armor cant go in hopper/minecarts and such) - snipped wolf armor will trigger unname and then despawn
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{enhanced_allays_shearing:1b}}}}] at @s run function tpallays:unname
