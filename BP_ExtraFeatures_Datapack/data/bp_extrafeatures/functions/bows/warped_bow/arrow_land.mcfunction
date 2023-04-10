execute at @e[nbt={HandItems:[{tag:{warped_bow:1b}}]}] positioned ~ ~1.5 ~ run tag @e[type=arrow,distance=..0.4] add warped_arrow

execute at @a[nbt={SelectedItem:{tag:{warped_bow:1b}}}, scores={arrow_cooldown=..0}] positioned ~ ~1.5 ~ run tag @e[type=arrow,distance=..0.4] add warped_arrow
execute as @a[nbt={SelectedItem:{tag:{warped_bow:1b}}}, scores={arrow_cooldown=..0}] at @s positioned ~ ~1.5 ~ if entity @e[type=arrow,tag=warped_arrow, nbt=!{inGround:1b},distance=..0.4] as @s run scoreboard players set @s arrow_cooldown 20

execute as @e[type=arrow, tag=warped_arrow] at @s run function bp_extrafeatures:bows/warped_bow/arrow_effects