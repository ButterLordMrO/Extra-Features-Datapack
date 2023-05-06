execute as @e[type=zombie,predicate=bp_extrafeatures:structure_graveyard,predicate=bp_extrafeatures:chance_25] run tag @s add cursed_necromancer_tag
execute as @e[type=zombie,tag=!mesa_warrior,tag=!custom_mob,predicate=bp_extrafeatures:structure_graveyard] at @s run function bp_extrafeatures:mobs/common/graveyard/cursed_necromancer/replace

execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob] at @s store result score @s nearby_entities if entity @e[type=zombie, distance=..16]
execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob] at @s unless score @s mob_attack_cd_1 matches 1.. if entity @p[distance=..10] run scoreboard players set @s mob_attack_cd_1 300
execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob,scores={mob_attack_cd_1=1}] at @s run summon zombie ~ ~1 ~ {Tags: ["cursed_necromancer_tag"]}
execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob,scores={mob_attack_cd_1=1}] at @s run playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 0.8
execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob,scores={mob_attack_cd_1=40}] at @s run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2
execute as @e[type=zombie,tag=cursed_necromancer_tag,tag=custom_mob,scores={mob_attack_cd_1=1..40}] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 2