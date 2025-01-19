#スコア減算
scoreboard players remove @s Nova_Projectile 1

#
execute if entity @s[nbt={inGround:true}] run function super_nova:super_nova/projectile/projectile_impact
execute if score @s Nova_Projectile matches ..-1 run function super_nova:super_nova/projectile/projectile_disable

#
execute if entity @s[tag=Charge_1,tag=Nova_Pulled,tag=mode_normal] store success score @s Nova_Success_Fill run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 air
execute if entity @s[tag=Charge_2,tag=Nova_Pulled,tag=mode_normal] store success score @s Nova_Success_Fill run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 air
execute if score @s Nova_Success_Fill matches 1.. run function super_nova:super_nova/projectile/fill_particle
scoreboard players reset @s Nova_Success_Fill

#パーティクル
particle dragon_breath ~ ~ ~ 0 0 0 0.1 50 force
execute if entity @s[tag=Charge_1] run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.05 10 force
execute if entity @s[tag=Charge_2] run particle trial_spawner_detection ~ ~ ~ 1 1 1 0.05 20 force
