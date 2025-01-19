#

execute if entity @s[tag=Charge_1] run summon tnt ~ ~ ~ {explosion_power:1,fuse:0}
execute if entity @s[tag=Charge_2] run summon tnt ~ ~ ~ {explosion_power:2,fuse:0}
data merge entity @s {NoGravity:false}
scoreboard players reset @s Nova_Projectile
tag @s remove Nova_Projectile