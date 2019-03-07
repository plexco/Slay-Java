
scoreboard players operation funcBase_B random = funcBase random
scoreboard players operation funcSeed_B random = funcSeed random

## Randomize Calculations
scoreboard players operation funcSeed random %= funcBase random
scoreboard players operation funcSeed random *= funcMult random
scoreboard players operation funcSeed random %= funcModu random
scoreboard players operation funcOutp random = funcSeed random
scoreboard players operation funcOutp random %= #modulo random
scoreboard players add funcSeed random 1

## Randomize Base Modulo
scoreboard players operation funcBase random *= funcMult random
scoreboard players operation funcBase random %= funcModu random

scoreboard players operation @s random = funcOutp random