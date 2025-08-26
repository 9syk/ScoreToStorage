$data remove storage stos: score[$(value)]
scoreboard players remove $storage stos 1
$tellraw @a {text:"[ScoreToStorage] storageの$(value)番目を削除しました"}