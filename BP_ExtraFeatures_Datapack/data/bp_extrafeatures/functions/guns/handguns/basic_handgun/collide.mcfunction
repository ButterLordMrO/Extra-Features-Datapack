scoreboard players set .distance raycast_distance 500

damage @s 7 minecraft:arrow by @e[tag=raycast_immune,limit=1]
execute if entity @s as @p[tag=raycast_immune] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~