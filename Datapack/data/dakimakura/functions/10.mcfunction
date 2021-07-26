#replace pillow to pillow for bed 
execute as @a if predicate dakimakura:10/mainhand_is_sneaking run item replace entity @p weapon.mainhand with item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.10.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.10.lore1","italic":false}]','{"text":"item.dakimakura.pillow.10.lore2","italic":false}']},CustomModelData:343522,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343522,dakimakura:1}},Invisible:1b}} 1
execute as @a if predicate dakimakura:10/offhand_is_sneaking run item replace entity @p weapon.offhand with item_frame{display:{Name:'{"translate":"item.dakimakura.pillow.10.name","italic":false}',Lore:['[{"text":"item.dakimakura.pillow.10.lore1","italic":false}]','{"text":"item.dakimakura.pillow.10.lore2","italic":false}']},CustomModelData:343522,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343522,dakimakura:1}},Invisible:1b}} 1

#replace pillow for bed to pillow 
execute as @a if predicate dakimakura:10/mainhand_bed_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/10
execute as @a if predicate dakimakura:10/offhand_bed_not_sneaking run loot replace entity @p weapon.offhand loot dakimakura:pillow/10

#replace pillow item frame to pillow 
execute as @a if predicate dakimakura:10/mainhand_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/10

#floor crafting
#input
#base pillow
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34351}}}] add 10_craft1
#design
tag @e[nbt={OnGround:1b,Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:343521}}}] add 10_craft2

#output
execute at @e[tag=10_craft1] as @e[tag=10_craft2,distance=..1] run summon item ~ ~ ~ {PickupDelay:20,Tags:["itemkill1"],Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"translate":"item.dakimakura.pillow.10.name","italic":false}',Lore:['{"translate":"item.dakimakura.pillow.10.lore1","italic":false}','{"translate":"item.dakimakura.pillow.10.lore2","italic":false}']},CustomModelData:343521,EntityTag:{Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:343521}},Invisible:1b}}}}

#kill drop item
execute at @e[tag=itemkill1] run particle heart ~ ~ ~ 0 0 0 1 0 normal
execute at @e[tag=itemkill1] run kill @e[tag=10_craft1,distance=..1]
execute at @e[tag=itemkill1] run kill @e[tag=10_craft2,distance=..1]
tag @e[type=item] remove itemkill1