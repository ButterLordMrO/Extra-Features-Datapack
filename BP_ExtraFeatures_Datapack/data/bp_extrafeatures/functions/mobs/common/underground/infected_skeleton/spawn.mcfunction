execute as @e[type=skeleton,scores={y_level=..0},predicate=bp_extrafeatures:chance_50] run tag @s add infected_skeleton_tag
execute as @e[type=skeleton,scores={y_level=1..}] run tag @s add infected_skeleton_tag
execute as @e[type=skeleton,tag=!infected_skeleton_tag,tag=!custom_mob,scores={y_level=..0}] at @s run function bp_extrafeatures:mobs/common/underground/infected_skeleton/replace