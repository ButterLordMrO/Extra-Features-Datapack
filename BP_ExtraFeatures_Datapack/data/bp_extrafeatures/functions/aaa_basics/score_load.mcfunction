##Testing Scores
scoreboard objectives add raycast_distance dummy
scoreboard objectives add warped_fungus_detect used:warped_fungus_on_a_stick
scoreboard objectives add gun_cooldown dummy
scoreboard objectives add y_level dummy

scoreboard objectives add nearby_entities dummy

##Attack Scores
scoreboard objectives add melee_cooldown dummy
scoreboard objectives add arrow_cooldown dummy
execute as @a unless score @s arrow_cooldown matches 0.. run scoreboard players set @s arrow_cooldown 0
scoreboard objectives add mob_attack_cd_1 dummy
execute as @a unless score @s melee_cooldown matches 0.. run scoreboard players set @s melee_cooldown 0