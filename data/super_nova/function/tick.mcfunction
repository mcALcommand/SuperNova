#矢tick
execute as @e[type=arrow,tag=Nova_Projectile] at @s run function super_nova:super_nova/projectile/tick

#引いてる時間カウンターリセット
execute as @a[scores={Not_Nova_Pulling=0..}] run scoreboard players remove @s Not_Nova_Pulling 1
execute as @a[scores={Not_Nova_Pulling=..-1}] run function super_nova:super_nova/pulling_reset