# Reset death flag
scoreboard players set @s death_coords.died 0

# Get player location
execute store result score @s death_coords.x run data get entity @s Pos[0]
execute store result score @s death_coords.y run data get entity @s Pos[1]
execute store result score @s death_coords.z run data get entity @s Pos[2]

# The Dimension tag is a string so dimension gets set to its length. Luckily
# each of the dimension IDs have different lengths
execute store result score @s death_coords.dimension run data get entity @s Dimension

# Send message

# Overworld (minecraft:overworld)
execute as @s[scores={death_coords.dimension=19}] run tellraw @s [{"text":"You died at X=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.x"},"color":"green"},{"text":" Y=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.y"},"color":"green"},{"text":" Z=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.z"},"color":"green"},{"text":" in the","color":"gold"},{"text":" Overworld","color":"green"}]

# Nether (minecraft:the_nether)
execute as @s[scores={death_coords.dimension=20}] run tellraw @s [{"text":"You died at X=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.x"},"color":"yellow"},{"text":" Y=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.y"},"color":"yellow"},{"text":" Z=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.z"},"color":"yellow"},{"text":" in the","color":"gold"},{"text":" Nether","color":"yellow"}]

# End (minecraft:the_end)
execute as @s[scores={death_coords.dimension=17}] run tellraw @s [{"text":"You died at X=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.x"},"color":"aqua"},{"text":" Y=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.y"},"color":"aqua"},{"text":" Z=","color":"gold"},{"score":{"name":"@s","objective":"death_coords.z"},"color":"aqua"},{"text":" in the","color":"gold"},{"text":" End","color":"aqua"}]
