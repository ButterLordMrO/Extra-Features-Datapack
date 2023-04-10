execute unless score @s mob_attack_cd_1 matches ..0 run particle sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0 1
execute if entity @s[nbt={inGround:1b}] unless score @s mob_attack_cd_1 matches 0..80 run scoreboard players set @s mob_attack_cd_1 40
execute if entity @s[nbt={inGround:1b}, scores={mob_attack_cd_1=1..}] run effect give @e[limit=1, type=#bp_extrafeatures:mobs, sort=nearest, distance=..3] slow_falling 1
execute if entity @s[nbt={inGround:1b}, scores={mob_attack_cd_1=10}] run damage @e[limit=1, type=#bp_extrafeatures:mobs, sort=nearest, distance=..3] 1.5 minecraft:arrow by @e[limit=1,sort=nearest,type=arrow] from @e[limit=1,sort=nearest,nbt={inGround:1b},type=arrow] 
execute if entity @s[nbt={inGround:1b}, scores={mob_attack_cd_1=30}] run damage @e[limit=1, type=#bp_extrafeatures:mobs, sort=nearest, distance=..3] 1.5 minecraft:arrow by @e[limit=1,sort=nearest,type=arrow] from @e[limit=1,sort=nearest,nbt={inGround:1b},type=arrow] 
execute if entity @s[nbt={inGround:1b}, scores={mob_attack_cd_1=1..}] run tp @e[limit=1, type=#bp_extrafeatures:mobs, sort=nearest, distance=..3] ~ ~2 ~