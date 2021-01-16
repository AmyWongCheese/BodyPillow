#make pillows placing sound
execute as @e[type=minecraft:item_frame,tag=dakimakura,tag=!placed] at @s run function dakimakura:place

#remove invisible item frame in survival mode
execute as @e[type=item,nbt={Item:{id:"minecraft:item_frame",Count:1b,tag:{dakimakura:1}}}] at @s run kill @e[type=item_frame,limit=1,sort=nearest,distance=..0.5]

#body pillows
function dakimakura:base
function dakimakura:1
function dakimakura:2
function dakimakura:3
function dakimakura:4
function dakimakura:5
function dakimakura:6
function dakimakura:7
function dakimakura:8
function dakimakura:9
function dakimakura:10
function dakimakura:11
function dakimakura:12
function dakimakura:13
function dakimakura:14
function dakimakura:15
function dakimakura:16
