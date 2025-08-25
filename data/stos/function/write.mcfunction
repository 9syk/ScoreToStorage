$data modify storage stos:score $(name).basePoint set value $(basePoint)
$data modify storage stos:score $(name).bonusPoint set value $(bonusPoint)
$data modify storage stos:score $(name).finalPoint set value $(finalPoint)
item replace entity @s container.9 with air