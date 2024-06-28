/// @description create stuff with player
// Create grappling hook with player
grappling_hook = instance_create_layer(x,y,"Instances",obj_GrapplingHook)
hook = noone
hook_target = noone
cooldown = false
cooldown_incrementor = 163
image_speed = 1
alarm[2] = 1
particle_move = 0
player_depth = 0
canTakeDamage = true
hurt = false