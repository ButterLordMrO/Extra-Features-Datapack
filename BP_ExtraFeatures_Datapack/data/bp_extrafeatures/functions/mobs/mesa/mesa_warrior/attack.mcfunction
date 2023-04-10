execute as @e[type=zombie,tag=mesa_warrior_tag,scores={mob_attack_cd_1=0}] at @s if entity @p[distance=..10] at @a[distance=..15] run function bp_extrafeatures:mobs/mesa/mesa_warrior/spear_attack
execute as @e[type=zombie,tag=mesa_warrior_tag] at @s unless score @s mob_attack_cd_1 matches 1.. if entity @p[distance=..10] run scoreboard players set @s mob_attack_cd_1 150

execute at @e[tag=mesa_warrior_spears] run particle dust 1 1 1 1 ~ ~3 ~ 0.3 0 0.3 0 1
execute as @e[tag=mesa_warrior_spears] at @s if score @s mob_attack_cd_1 matches 169..170 run tp @s ~ ~0.9 ~
execute as @e[tag=mesa_warrior_spears] at @s if score @s mob_attack_cd_1 matches 168 run playsound block.anvil.place hostile @a ~ ~-1.9 ~ 1 2
execute as @e[tag=mesa_warrior_spears] if score @s mob_attack_cd_1 matches 0 run kill @s

execute as @e[tag=mesa_warrior_spears] unless score @s mob_attack_cd_1 matches 170.. at @s as @a[dx=0] run damage @s 7 minecraft:cactus by @e[tag=mesa_warrior_spears, limit=1, sort=nearest]