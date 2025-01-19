#レールガンのチャージ
execute unless score @s Nova_Pulling matches 1.. run item modify entity @s weapon.mainhand {"function": "minecraft:set_damage","damage": 0.001, "add": true}
execute if items entity @s weapon.mainhand bow[minecraft:damage=0,minecraft:custom_model_data={strings:[charge0]}] run function super_nova:enchantment/charge/charge_1
execute if items entity @s weapon.mainhand bow[minecraft:damage=0,minecraft:custom_model_data={strings:[charge1]}] run function super_nova:enchantment/charge/charge_2