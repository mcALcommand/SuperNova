#チャージ2
playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 2
playsound block.note_block.bell player @s ~ ~ ~ 1 1
item modify entity @s weapon.mainhand [{"function": "minecraft:set_custom_model_data","strings": {"values": ["charge2"],"mode": "replace_all"}}]