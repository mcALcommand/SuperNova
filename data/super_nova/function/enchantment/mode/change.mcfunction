#
execute unless entity @s[tag=changed] if items entity @s weapon.offhand bow[minecraft:custom_data~{mode:normal}] run function super_nova:enchantment/mode/change_sniper
execute unless entity @s[tag=changed] if items entity @s weapon.offhand bow[minecraft:custom_data~{mode:sniper}] run function super_nova:enchantment/mode/change_normal
tag @s remove changed

#
playsound minecraft:block.piston.extend player @s ~ ~ ~ 1 2

#
execute unless items entity @s weapon.mainhand minecraft:air run function super_nova:enchantment/mode/main_hand

#
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air