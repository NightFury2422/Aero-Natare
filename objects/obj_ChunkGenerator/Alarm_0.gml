// You can write your code in this editor
var randomSpot = random_range(352, room_width-352)

instance_create_layer(randomSpot,15,"Instances",obj_Relic)

if obj_BigTreasure.y < 1100 alarm[0] = -1
else alarm[0] = random_range(600, 900)