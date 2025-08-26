execute store result storage stos: storage int 1 if data storage stos: score[]
data modify storage stos: score append value {}
execute as @a if score @s basePoint matches -2147483648..2147483647 if score @s bonusPoint matches -2147483648..2147483647 run function stos:get
tellraw @a [{text:"[ScoreToStorage] スコアをstorageの"},{nbt:"storage",storage:"stos:"},{text:"番目に保存しました"}]