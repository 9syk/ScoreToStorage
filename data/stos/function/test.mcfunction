execute as @a store result score @s basePoint run random value 0..1000
execute as @a store result score @s bonusPoint run random value 0..1000
function stos:run
tag @s add me
tellraw @s "basePoint"
execute as @a run tellraw @p[tag=me] [" ",{selector:"@s"},": ",{score:{name:"@s",objective:"basePoint"},color:green}]
tellraw @s "bonusPoint"
execute as @a run tellraw @p[tag=me] [" ",{selector:"@s"},": ",{score:{name:"@s",objective:"bonusPoint"},color:green}]
tag @s remove me
tellraw @s {storage:"stos:",nbt:"score[-1]"}