#
item modify entity @s weapon.offhand {"function": "minecraft:set_custom_data","tag": "{mode:sniper}"}

item modify entity @s weapon.offhand {"function": "minecraft:set_enchantments","enchantments": {"super_nova:mode/piercing": 0},"add": false}
item modify entity @s weapon.offhand {"function": "minecraft:set_enchantments","enchantments": {"super_nova:mode/explode": 1},"add": false}

title @s actionbar {"text":"射撃モード:精密射撃"}
tag @s add changed