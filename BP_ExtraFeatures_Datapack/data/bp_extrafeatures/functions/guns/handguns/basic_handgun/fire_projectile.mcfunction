tag @s add raycast_immune
scoreboard players reset @s warped_fungus_detect
scoreboard players set @s gun_cooldown 16
clear @s ink_sac{bp_basicbullet: 1b} 1
playsound entity.generic.explode player @a ~ ~ ~ 1 2
tp @s ~ ~ ~ ~ ~-5

execute anchored eyes positioned ^ ^ ^ run function bp_extrafeatures:guns/handguns/basic_handgun/raycasting

tag @s remove raycast_immune
scoreboard players reset .distance raycast_distance