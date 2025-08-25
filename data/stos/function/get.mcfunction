scoreboard players set @s finalPoint 0
scoreboard players operation @s finalPoint += @s basePoint
scoreboard players operation @s finalPoint += @s bonusPoint
loot replace entity @s container.9 loot stos:head
data modify storage stos: name set from entity @s Inventory[{id:"minecraft:player_head"}].components."minecraft:profile".name
execute store result storage stos: basePoint int 1 run scoreboard players get @s basePoint
execute store result storage stos: bonusPoint int 1 run scoreboard players get @s bonusPoint
execute store result storage stos: finalPoint int 1 run scoreboard players get @s finalPoint
function stos:write with storage stos: