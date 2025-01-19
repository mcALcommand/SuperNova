#射撃

#
playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 2
playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 0

#
data merge entity @s {NoGravity:true}
tag @s add Nova_Projectile
execute if data entity @s {weapon:{components:{"minecraft:custom_model_data":{strings:["charge1"]}}}} run function super_nova:enchantment/fire/fire_charge_1
execute if data entity @s {weapon:{components:{"minecraft:custom_model_data":{strings:["charge2"]}}}} run function super_nova:enchantment/fire/fire_charge_2

#
scoreboard players set @s Nova_Projectile 1
execute store result score @s Nova_Pulling on origin run scoreboard players get @s Nova_Pulling
execute if score @s Nova_Pulling matches 100.. run scoreboard players operation @s Nova_Projectile *= @s Nova_Pulling
execute if score @s Nova_Pulling matches 180.. run tag @s add Nova_Pulled
execute if score @s Nova_Charge matches 1.. run scoreboard players operation @s Nova_Projectile *= @s Nova_Charge
scoreboard players reset @s Nova_Pulling
scoreboard players reset @s Nova_Charge

##耐久値を0に / チャージゲージを0に / 引きスコアリセット
execute on origin if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"equipment": {"mainhand": {"components": {"minecraft:custom_model_data": {"strings": ["charge2"]}}}}}} run item modify entity @s weapon.mainhand {"function": "minecraft:set_damage","damage": 0}
execute on origin run item modify entity @s weapon.mainhand {"function": "minecraft:set_custom_model_data","strings": {"values": ["charge0"],"mode": "replace_all"}}
execute on origin run scoreboard players reset @s Nova_Pulling