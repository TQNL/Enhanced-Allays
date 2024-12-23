$execute as @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}] run data merge entity @s {Invulnerable:1b}
