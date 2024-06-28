//set direction and speed of hook
if(hook_retract){
	direction = point_direction(obj_GrapplingHookHook.x,obj_GrapplingHookHook.y,obj_Player.x,obj_Player.y)
}else{
	direction = point_direction(obj_GrapplingHook.x,obj_GrapplingHook.y,obj_GrapplingHookTarget.x,obj_GrapplingHookTarget.y)
	
}



speed = hook_speed + playerSpeedWhenSpawned
speed = clamp(speed, hook_speed * 1.50, (hook_speed * 1.50))

// Calculate the number of chains needed
distance = point_distance(x, y, obj_GrapplingHook.x, obj_GrapplingHook.y)
num_chain_pieces = int64(round(distance / 32))

// Calculate the step values for positioning chain pieces
stepX = (obj_GrapplingHook.x - x) / num_chain_pieces
stepY = (obj_GrapplingHook.y - y) / num_chain_pieces

//Creates chains from the grappler to the hook
for (var i = 1; i < num_chain_pieces; i++) {
	var chain_piece = instance_create_layer((x + stepX * i), (y + stepY * i), "GrapplingHook", obj_GrapplingHookChain)
}

//Don't worry about it

//Player Controls and Sprite Changing
if keyboard_check(ord("A")){
	x -= obj_Player.move_speed/2
}
if keyboard_check(ord("D")) {
	x += obj_Player.move_speed/2
}
if keyboard_check(ord("W")){
	y -= obj_Player.move_speed/2
}
if keyboard_check(ord("S")){
	y += obj_Player.move_speed/2
}