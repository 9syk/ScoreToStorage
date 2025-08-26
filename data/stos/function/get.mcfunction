scoreboard players set @s finalPoint 0
scoreboard players operation @s finalPoint += @s basePoint
scoreboard players operation @s finalPoint += @s bonusPoint

execute in overworld positioned 0.0 0.0 0.0 run loot replace entity @n[type=armor_stand,tag=this,distance=..1] armor.head loot stos:head
execute in overworld positioned 0.0 0.0 0.0 run data modify storage stos: name set from entity @n[type=armor_stand,tag=this,distance=..1] equipment.head.components."minecraft:profile".name
execute store result storage stos: basePoint int 1 run scoreboard players get @s basePoint
execute store result storage stos: bonusPoint int 1 run scoreboard players get @s bonusPoint
execute store result storage stos: finalPoint int 1 run scoreboard players get @s finalPoint
function stos:write with storage stos: