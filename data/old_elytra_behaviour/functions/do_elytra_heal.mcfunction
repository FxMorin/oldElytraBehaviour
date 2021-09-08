execute store result storage old_elytra_durability:value main int 1 run scoreboard players get @s elytradurability
#execute store result score @s elytra_value run data get storage old_elytra_durability:value Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

execute store result score @s elytra_value run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
#execute unless score @s elytra_value matches 0 run scoreboard players set @s elytra_value 1

execute if score @s elytra_value matches ..0 run scoreboard players add @s elytradurability 1
execute if score @s elytra_value matches 1 if predicate old_elytra_behaviour:unbreaking_1 run scoreboard players add @s elytradurability 1
execute if score @s elytra_value matches 2 if predicate old_elytra_behaviour:unbreaking_2 run scoreboard players add @s elytradurability 1
execute if score @s elytra_value matches 3.. if predicate old_elytra_behaviour:unbreaking_3 run scoreboard players add @s elytradurability 1

item modify entity @s armor.chest old_elytra_behaviour:damageelytra
execute if score @s elytradurability >= Default elytradurability run scoreboard players set @s elytradurability 0