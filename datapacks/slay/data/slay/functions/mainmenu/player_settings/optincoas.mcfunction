kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

clear @a[nbt={Inventory:[{tag:{opt:"in"}}]},tag=!optin] carrot_on_a_stick
clear @a[nbt={Inventory:[{tag:{opt:"out"}}]},tag=optin] carrot_on_a_stick
 
replaceitem entity @a[nbt=!{Inventory:[{tag:{opt:"out"}}]},tag=!optin] hotbar.0 carrot_on_a_stick{Damage:8,Unbreakable:1b,opt:"out",display:{Name:'{"text":"Participate","italic":false}'}}
replaceitem entity @a[nbt=!{Inventory:[{tag:{opt:"in"}}]},tag=optin] hotbar.0 carrot_on_a_stick{Damage:7,Unbreakable:1b,opt:"in",display:{Name:'{"text":"Don\'t participate","italic":false}'}}