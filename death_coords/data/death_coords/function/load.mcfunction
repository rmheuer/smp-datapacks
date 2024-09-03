# Create objectives

# Gets incremented to 1 when a player dies, then reset back to 0 by player_died
scoreboard objectives add death_coords.died deathCount

# Player position for substituting into the message
scoreboard objectives add death_coords.x dummy
scoreboard objectives add death_coords.y dummy
scoreboard objectives add death_coords.z dummy
scoreboard objectives add death_coords.dimension dummy
