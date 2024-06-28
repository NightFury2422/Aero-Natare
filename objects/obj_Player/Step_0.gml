//Player Controls and Sprite Changing

//for some reason, this fixes the animation

if not keyboard_check(ord("A")) and not keyboard_check(ord("D")) and not keyboard_check(ord("W")) and not keyboard_check(ord("S")) and !invincible{
	sprite_index = spr_PlayerIdle
}

if hurt {
	sprite_index = spr_PlayerOuch
	global.damage_taken = true
	if !instance_exists(obj_Ouch) instance_create_layer(x,y,"ParticleInstances",obj_Ouch)
}

if global.heichpea <= 0 {
	image_angle+=10;
	y++;
}


if keyboard_check(ord("A")) and place_free(x - collision_speed, y) and global.heichpea > 0{
	if !invincible sprite_index = spr_PlayerLeft
	image_speed = 1
	//x -= move_speed*1.2
	hspeed -= move_speed
}

if keyboard_check(ord("D")) and place_free(x + collision_speed, y) and global.heichpea > 0{
	if !invincible sprite_index = spr_PlayerRight
	image_speed = 1
	//x += move_speed*1.2
	hspeed += move_speed
}

if keyboard_check(ord("W")) and place_free(x, y - collision_speed) and global.heichpea > 0{
	if !invincible sprite_index = spr_PlayerUp
	image_speed = 1
	//y -= move_speed*0.8
	vspeed -= move_speed
}

if keyboard_check(ord("S")) and place_free(x, y + collision_speed) and global.heichpea > 0 {
	if !invincible sprite_index = spr_PlayerUp
	image_speed = 1
	//y += move_speed
	vspeed += move_speed
}


if place_meeting(x + hspeed + 5, y, obj_Collision) hspeed = 0
if place_meeting(x, y + vspeed + 5, obj_Collision) {
	vspeed = 0
	y -= global.scroll_speed
}

if place_meeting(x, y + vspeed + 5, obj_Collision) and place_meeting(x, y - vspeed - 5, obj_Collision) and sprite_index != spr_Ouch {
	
	if !invincible {
	invincible = true
		if !alarm[0] alarm[0] = 60
			hurt = true
			global.heichpea -= 1
	}
}
//Limit the speed of the player
speed = clamp(speed, -move_speed, move_speed);
vspeed = clamp(vspeed, -move_speed*0.7, move_speed*0.7);

// Apply friction when no keys are pressed
hspeed *= (1 - friction_speed);
vspeed *= (1 - friction_speed);
// Limit the character's speed to prevent it from getting too slow
if (abs(hspeed) < 0.1) hspeed = 0;
if (abs(vspeed) < 0.1) vspeed = 0;


if cooldown == false and mouse_check_button_pressed(mb_left) and obj_StaticGrapplingHook.visible {
	if state == "normal" {
		
		cooldown_incrementor = 0
		cooldown = true
		alarm[1] = 20
		hook = instance_create_layer(obj_GrapplingHook.x,obj_GrapplingHook.y,"GrapplingHook", obj_GrapplingHookHook)
		hook.image_angle = point_direction(x, y, mouse_x, mouse_y);
		
		// Desired distance from obj_Player
		var spawnDistance = 500;

		// Calculate the spawn position
		var spawnX = obj_Player.x + lengthdir_x(spawnDistance, hook.image_angle);
		var spawnY = obj_Player.y + lengthdir_y(spawnDistance, hook.image_angle);
		
		// Spawn hook target at the adjusted position
		hook_target = instance_create_layer(spawnX,spawnY,"GrapplingHook", obj_GrapplingHookTarget)
		
		
	} else {
		var thrown_enemy = instance_create_layer(x,y,"Instances", obj_EnemyThrow)
		state = "normal"
	}
}

if cooldown = true and mouse_check_button_released(mb_left){
	cooldown = false
	if instance_exists(obj_GrapplingHookHook){
		obj_GrapplingHookHook.alarm[0] = 10 // This basically triggers the return of the hook
	}
}

if cooldown_incrementor != 163 cooldown_incrementor += 4

if obj_BigTreasure.y < 1100 and !instance_exists(obj_Jetpack) instance_create_layer(x,y,"ParticleInstances",obj_Jetpack)

if global.heichpea <= 0 {
	vspeed = 0
	hspeed = 0
}

//Clamp Player to not run off screen
y = clamp(y, sprite_height/2 + 32, room_height-sprite_height/2 - 32)
x = clamp(x, sprite_width/2  + 320, room_width-sprite_width/2 - 320)

//Tell where the player is in the level
player_depth -= .113
player_depth = clamp(player_depth, -366, 1)

//Clamp Cooldown to fit bar
cooldown_incrementor = clamp(cooldown_incrementor, 0, 163)

