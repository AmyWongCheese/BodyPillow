#replace pillow to pillow for bed 
execute as @a if predicate dakimakura:base/mainhand_is_sneaking run item replace entity @p weapon.mainhand with item_frame{display:{Name:'{"translate":"item.dakimakura.base.name","italic":false}',Lore:['[{"text":"item.dakimakura.base.lore1","italic":false}]','{"text":"item.dakimakura.base.lore2","italic":false}']},CustomModelData:34352,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34352,dakimakura:1}},Invisible:1b}} 1
execute as @a if predicate dakimakura:base/offhand_is_sneaking run item replace entity @p weapon.offhand with item_frame{display:{Name:'{"translate":"item.dakimakura.base.name","italic":false}',Lore:['[{"text":"item.dakimakura.base.lore1","italic":false}]','{"text":"item.dakimakura.base.lore2","italic":false}']},CustomModelData:34352,EntityTag:{Silent:1b,Tags:["dakimakura"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:34352,dakimakura:1}},Invisible:1b}} 1

#replace pillow for bed to pillow 
execute as @a if predicate dakimakura:base/mainhand_bed_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/base
execute as @a if predicate dakimakura:base/offhand_bed_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/base

#replace pillow item frame to pillow 
execute as @a if predicate dakimakura:base/mainhand_not_sneaking run loot replace entity @p weapon.mainhand loot dakimakura:pillow/base