execute as @e[type=#bp_extrafeatures:mobs,tag=!raycast_immune,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function bp_extrafeatures:guns/handguns/basic_handgun/collide

scoreboard players add .distance raycast_distance 1

execute if score .distance raycast_distance matches 20.. run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 force

execute if score .distance raycast_distance matches ..499 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #bp_extrafeatures:raycast_passable run function bp_extrafeatures:guns/handguns/basic_handgun/raycasting