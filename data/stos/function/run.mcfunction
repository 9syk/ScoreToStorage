data modify storage stos: score append value {}
execute in overworld positioned 0.0 0.0 0.0 run summon armor_stand ~ ~ ~ {Tags:["this"]}
execute as @a if score @s basePoint matches -2147483648..2147483647 if score @s bonusPoint matches -2147483648..2147483647 run function stos:get
execute in overworld positioned 0.0 0.0 0.0 run kill @n[type=armor_stand,tag=this,distance=..1]
tellraw @a [{text:"[ScoreToStorage] スコアをstorageに追加しました"}]