scoreboard players operation #seed tmp = seed settings
scoreboard players operation #seed1 tmp = seed settings
scoreboard players operation #seed tmp /= 10 const
scoreboard players operation #seed10 tmp = #seed tmp
scoreboard players operation #seed tmp /= 10 const
scoreboard players operation #seed100 tmp = #seed tmp
scoreboard players operation #seed tmp /= 10 const
scoreboard players operation #seed1000 tmp = #seed tmp
scoreboard players operation #seed tmp /= 10 const
scoreboard players operation #seed10000 tmp = #seed tmp

scoreboard players operation #seed1 tmp %= 10 const
scoreboard players operation #seed10 tmp %= 10 const
scoreboard players operation #seed100 tmp %= 10 const
scoreboard players operation #seed1000 tmp %= 10 const
scoreboard players operation #seed10000 tmp %= 10 const