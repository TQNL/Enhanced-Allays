#to the player
execute at @p as @e[type=allay,distance=64..96,nbt=!{Brain:{memories:{"minecraft:liked_noteblock":{value:{}}}}}] at @s unless block ~ ~ ~ #trap unless block ~ ~-1 ~ #trap unless data entity @s CustomName run tp @s @p

#to liked noteblock
execute as @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_noteblock_cooldown_ticks":{value:0}}}}] at @s unless block ~ ~ ~ #trap unless block ~ ~-1 ~ #trap unless data entity @s CustomName run function tpallays:resetallaypos

#leash
execute as @e[type=minecraft:allay,nbt={Leash:{}},nbt={Brain:{memories:{"minecraft:liked_noteblock":{value:{}}}}}] run function tpallays:leashallay
execute as @e[type=minecraft:allay,nbt=!{Leash:{}},tag=allayleashed] run function tpallays:unleashallay

#unname
execute as @e[type=allay,nbt={CustomName:'{"text":"unname"}'}] run function tpallays:unname
