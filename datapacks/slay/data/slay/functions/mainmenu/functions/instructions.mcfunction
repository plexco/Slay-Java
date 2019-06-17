kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]

replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:written_book"}]}] hotbar.8 minecraft:written_book{title:"How to play",author:"Plagiatus",generation:0,pages:['{"text":"\\uEff4","color":"white"}','{"text":"This is just a test, nothing to see here (yet)"}']}