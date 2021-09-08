scoreboard players add @s fallflyticks 1
execute if entity @s[scores={fallflyticks=20}] run function old_elytra_behaviour:do_elytra_damage
execute if entity @s[scores={fallflyticks=20..}] run scoreboard players set @s fallflyticks 0