schedule function battle:classes/lightwielder/cd 2t

scoreboard objectives add spyglassTimer dummy

tag @a[tag=class1] add lightwielderClass
tag @a[tag=2class1] add lightwielderClass

scoreboard players reset @a[tag=spyCD] lightChargeTicks
scoreboard players reset @a[nbt=!{Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] lightChargeTicks

execute as @a[scores={lightChargeTicks=1..},tag=!spyCD,tag=notUsingLight,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run function battle:classes/lightwielder/shoot

execute as @a[scores={lightChargeTicks=1..9},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 1 levels
execute as @a[scores={lightChargeTicks=10..19},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 2 points
execute as @a[scores={lightChargeTicks=20..29},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 4 points
execute as @a[scores={lightChargeTicks=30..39},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 6 points
execute as @a[scores={lightChargeTicks=40..49},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 2 levels
execute as @a[scores={lightChargeTicks=40..49},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 0 points
execute as @a[scores={lightChargeTicks=50..59},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 3 points
execute as @a[scores={lightChargeTicks=60..69},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 5 points
execute as @a[scores={lightChargeTicks=70..79},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 7 points
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 3 levels
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run experience set @s 0 points
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run title @s actionbar ["Your ",{"text":"Eye of the Lightwielder","color":"yellow","bold":true}," is ",{"text":"fully charged","color":"green"},"!"]

execute as @a[scores={lightChargeTicks=1..39},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 1 normal
execute as @a[scores={lightChargeTicks=40..79},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 3 normal
execute as @a[scores={lightChargeTicks=40..79},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:wax_off ~ ~0.5 ~ 0.5 1 0.5 1 3 normal
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 4 normal
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:wax_off ~ ~0.5 ~ 0.5 1 0.5 1 4 normal
execute as @a[scores={lightChargeTicks=80..},tag=!spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s run particle minecraft:instant_effect ~ ~0.5 ~ 0.5 1 0.5 0 4 normal

#Timer
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 0..99 run scoreboard players add @s spyglassTimer 1 

execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 01 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"10","color":"dark_red"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 10 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"9","color":"dark_red"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 20 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"8","color":"red"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 30 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"7","color":"red"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 40 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"6","color":"red"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 50 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"5","color":"gold"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 60 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"4","color":"gold"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 70 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"3","color":"gold"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 80 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"2","color":"yellow"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 90 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"1","color":"yellow"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 100 run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"yellow","bold":true},{"text":" Cooldown - "},{"text":"READY","color":"green"}]
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 80 run playsound block.bell.resonate block @s ~ ~ ~ 100 1
execute as @a[tag=spyCD,nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 100 run tag @s remove spyCD
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",components:{"minecraft:custom_data":{NoPickup:1b,LightRay:1b}}}]}] at @s if score @s spyglassTimer matches 100.. run scoreboard players reset @s spyglassTimer
