#
data modify storage nova Item set from entity @s SelectedItem
data remove storage nova Item.slot
function super_nova:enchantment/mode/summon with storage nova
data remove storage nova Item