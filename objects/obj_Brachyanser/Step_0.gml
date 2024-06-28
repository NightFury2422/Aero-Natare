last_isChasing = isChasing
if instance_exists(obj_Player) {
	if distance_to_object(obj_Player) < attack_range {
		isChasing = true
		direction = point_direction(self.x, self.y, obj_Player.x, obj_Player.y)
		image_angle = direction - 90
		if obj_Player.y < y homing_speed = 4 else homing_speed = 2
		speed = homing_speed
	} else {
		isChasing = false
		direction = 0
		hspeed = patrol_speed
		
		y-=global.scroll_speed

		if y <= 0 instance_destroy()
	}
}

if (last_isChasing == false and isChasing = true) {
	audio_play_sound(snd_crabTarget, 1, false)
}

if place_meeting(x + hspeed + 8, y, obj_Collision) {
	hspeed = 0
	image_angle = direction - 90
}
if place_meeting(x, y + vspeed + 8, obj_Collision) {
	vspeed = 0
}


x = clamp(x, sprite_width/2  + 320, room_width-sprite_width/2 - 320)