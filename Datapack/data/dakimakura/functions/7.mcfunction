#replace pillow to pillow for bed 
execute as @a if predicate dakimakura:7/mainhand_is_sneaking run item entity @p weapon.mainhand replace item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.7.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.7.lore1","italic":false}]','{"text":"item.dakimakura.pillow.7.lore2","italic":false}']},CustomModelData:343516,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343516,dakimakura:1}},Invisible:1b}} 1
execute as @a if predicate dakimakura:7/offhand_is_sneaking run item entity @p weapon.offhand replace item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.7.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.7.lore1","italic":false}]','{"text":"item.dakimakura.pillow.7.lore2","italic":false}']},CustomModelData:343516,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343516,dakimakura:1}},Invisible:1b}} 1

#replace pillow for bed to pillow 
execute as @a if predicate dakimakura:7/mainhand_bed_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/7
execute as @a if predicate dakimakura:7/offhand_bed_not_sneaking run loot replace entity @p weapon.offhand loot dakimakura:pillow/7

#replace pillow item frame to pillow 
execute as @a if predicate dakimakura:7/mainhand_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/7

#floor crafting
#input
#base pillow
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34351}}}] add 7_craft1
#design
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:343515}}}] add 7_craft2

#output
execute at @e[tag=7_craft1] as @e[tag=7_craft2,distance=..1] run summon item ~ ~ ~ {PickupDelay:20,Tags:["itemkill1"],Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"translate":"item.dakimakura.pillow.7.name","italic":false}',Lore:['{"translate":"item.dakimakura.pillow.7.lore1","italic":false}','{"translate":"item.dakimakura.pillow.7.lore2","italic":false}']},CustomModelData:343515,EntityTag:{Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343515}},Invisible:1b}}}}

#kill drop item
execute at @e[tag=itemkill1] run particle heart ~ ~ ~ 0 0 0 1 0 normal
execute at @e[tag=itemkill1] run kill @e[tag=7_craft1,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=7_craft2,distance=..1]
tag @e[type=item] remove itemkill1