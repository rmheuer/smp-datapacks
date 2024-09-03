# Check if a player died this tick
execute as @a[scores={death_coords.died=1..}] run function death_coords:player_died
