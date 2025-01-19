#チャージ1
playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 0
playsound block.note_block.bell player @s ~ ~ ~ 1 1
item modify entity @s weapon.mainhand [{"function": "minecraft:set_damage","damage": 0},{"function": "minecraft:set_custom_model_data","strings": {"values": ["charge1"],"mode": "replace_all"}}]