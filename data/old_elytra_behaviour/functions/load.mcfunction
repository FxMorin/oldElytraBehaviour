scoreboard objectives add elytradurability dummy "Elytra Durability"
scoreboard objectives add fallflyticks dummy
scoreboard objectives add elytra_value dummy
execute as @a run scoreboard players set @s elytradurability 432
execute as @a store result score @s elytradurability run data get entity @s Inventory[{Slot:102b}].tag.Damage
scoreboard players set Default elytradurability 432