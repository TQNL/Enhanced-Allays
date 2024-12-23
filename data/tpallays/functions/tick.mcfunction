#to the player
execute as @e[type=allay] at @s unless data entity @s Brain.memories."minecraft:liked_noteblock" unless block ~ ~ ~ #trap unless block ~ ~-1 ~ #trap unless data entity @s CustomName unless data entity @s Leash run function tpallays:tp_to_player with entity @s Brain.memories."minecraft:liked_player"

#to liked noteblock
execute as @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:0}}}}] at @s unless block ~ ~ ~ #trap unless block ~ ~-1 ~ #trap unless data entity @s CustomName run function tpallays:resetallaypos

#leash
execute as @e[type=minecraft:allay,nbt={leash:{}},nbt={Brain:{memories:{"minecraft:liked_noteblock":{value:{}}}}}] run function tpallays:leashallay
execute as @e[type=minecraft:allay,nbt=!{leash:{}},tag=allayleashed] run function tpallays:unleashallay

#unname - broken due to bug https://bugs.mojang.com/browse/MC-128225
#execute as @e[type=allay,nbt={CustomName:'"unname"'}] run function tpallays:unname
