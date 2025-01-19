#
item modify entity @s weapon.offhand {"function": "minecraft:set_custom_data","tag": "{mode:normal}"}

item modify entity @s weapon.offhand {"function": "minecraft:set_enchantments","enchantments": {"super_nova:mode/explode": 0},"add": false}
item modify entity @s weapon.offhand {"function": "minecraft:set_enchantments","enchantments": {"super_nova:mode/piercing": 1},"add": false}

title @s actionbar {"text":"射撃モード:通常"}
tag @s add changed
