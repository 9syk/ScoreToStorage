data modify storage stos: score set value []
scoreboard players set $storage stos 0
tellraw @a {text:"[ScoreToStorage] storageをリセットしました"}