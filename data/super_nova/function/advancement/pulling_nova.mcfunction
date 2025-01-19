#レールガンを引いてる
execute unless score @s Nova_Pulling matches 200.. run scoreboard players add @s Nova_Pulling 10
execute unless score @s Not_Nova_Pulling matches 1.. run scoreboard players add @s Not_Nova_Pulling 1

execute at @s if score @s Nova_Pulling matches 70 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.5 1
execute at @s if score @s Nova_Pulling matches 190 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.5 1.2
advancement revoke @s only super_nova:using_nova