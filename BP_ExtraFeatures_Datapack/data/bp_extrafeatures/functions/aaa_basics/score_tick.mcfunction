##Player Attacks
execute as @a unless score @s gun_cooldown matches 0.. run scoreboard players set @s gun_cooldown 0
execute as @a[scores={gun_cooldown=1..}] run scoreboard players remove @s gun_cooldown 1
execute as @a[scores={arrow_cooldown=1..}] run scoreboard players remove @s arrow_cooldown 1

##Y-Level Check
execute as @e store result score @s y_level run data get entity @s Pos[1]

##Mob Attacks
execute as @a unless score @s arrow_cooldown matches 0.. run reload
execute as @e[scores={mob_attack_cd_1=1..}] run scoreboard players remove @s mob_attack_cd_1 1