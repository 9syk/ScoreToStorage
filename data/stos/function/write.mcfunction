$data modify storage stos: score[-1].$(name).basePoint set value $(basePoint)
$data modify storage stos: score[-1].$(name).bonusPoint set value $(bonusPoint)
$data modify storage stos: score[-1].$(name).finalPoint set value $(finalPoint)
item replace entity @s container.9 with air