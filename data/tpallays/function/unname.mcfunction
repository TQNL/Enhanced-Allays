# unname allay if named
execute as @n[type=allay] if entity @s[tag=tpallays_named] run function tpallays:unname2

# kill wolf armor placeholder
kill @s
