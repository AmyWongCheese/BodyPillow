#replace pillow to pillow for bed 
execute as @a if predicate dakimakura:1/mainhand_is_sneaking run replaceitem entity @p weapon.mainhand item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.1.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.1.lore1","italic":false}]','{"text":"item.dakimakura.pillow.1.lore2","italic":false}']},CustomModelData:34354,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34354,dakimakura:1}},Invisible:1b}} 1
execute as @a if predicate dakimakura:1/offhand_is_sneaking run replaceitem entity @p weapon.offhand item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.1.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.1.lore1","italic":false}]','{"text":"item.dakimakura.pillow.1.lore2","italic":false}']},CustomModelData:34354,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34354,dakimakura:1}},Invisible:1b}} 1

#replace pillow for bed to pillow 
execute as @a if predicate dakimakura:1/mainhand_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/1
execute as @a if predicate dakimakura:1/offhand_not_sneaking run loot replace entity @p weapon.offhand loot dakimakura:pillow/1

#floor crafting
#input
#base pillow
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34351}}}] add 1_craft1
#design
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:34353}}}] add 1_craft2

#output
execute at @e[tag=1_craft1] as @e[tag=1_craft2,distance=..1] run summon item ~ ~ ~ {PickupDelay:20,Tags:["itemkill1"],Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"translate":"item.dakimakura.pillow.1.name","italic":false}',Lore:['{"translate":"item.dakimakura.pillow.1.lore1","italic":false}','{"translate":"item.dakimakura.pillow.1.lore2","italic":false}']},CustomModelData:34353,EntityTag:{Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34353}},Invisible:1b}}}}

#kill drop item
execute at @e[tag=itemkill1] run particle heart ~ ~ ~ 0 0 0 1 0 normal
execute at @e[tag=itemkill1] run kill @e[tag=1_craft1,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=1_craft2,distance=..1]
tag @e[type=item] remove itemkill1