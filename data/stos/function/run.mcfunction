execute store result storage stos: storage int 1 run scoreboard players get $storage stos
execute as @a if score @s basePoint matches -2147483648..2147483647 if score @s bonusPoint matches -2147483648..2147483647 run function stos:get
tellraw @a [{text:"[ScoreToStorage] スコアをstorageの"},{score:{name:"$storage",objective:stos}},{text:"番目に保存しました"}]
scoreboard players add $storage stos 1