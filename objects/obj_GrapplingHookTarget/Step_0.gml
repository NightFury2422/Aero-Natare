//Player movement code

//Player Controls and Sprite Changing
if keyboard_check(ord("A")){
	hspeed -= obj_Player.move_speed
}
if keyboard_check(ord("D")) {
	hspeed += obj_Player.move_speed
}
if keyboard_check(ord("W")){
	vspeed -= obj_Player.move_speed
}
if keyboard_check(ord("S")){
	vspeed += obj_Player.move_speed
}

//Limit the speed of the player
speed = clamp(speed, -obj_Player.move_speed, obj_Player.move_speed);

// Apply friction when no keys are pressed
hspeed *= (1 - obj_Player.friction_speed);
vspeed *= (1 - obj_Player.friction_speed);
// Limit the character's speed to prevent it from getting too slow
if (abs(hspeed) < 0.1) hspeed = 0;
if (abs(vspeed) < 0.1) vspeed = 0;