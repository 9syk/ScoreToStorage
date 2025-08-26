data modify storage stos: score append value {}
execute as @a if score @s basePoint matches -2147483648..2147483647 if score @s bonusPoint matches -2147483648..2147483647 run function stos:get
tellraw @a [{text:"[ScoreToStorage] スコアをstorageに追加しました"}]