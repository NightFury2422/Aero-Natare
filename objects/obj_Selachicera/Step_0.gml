last_isChasing = isChasing
if y > 1079 {
	hspeed = 0
	y-=global.scroll_speed
} else {
	
	if place_meeting(x + hspeed + 5, y, obj_Collision) hspeed = 0
	if place_meeting(x, y + vspeed + 5, obj_Collision) {
		vspeed = 0
		y -= global.scroll_speed
	}
 
	if instance_exists(obj_Player) {
		if distance_to_object(obj_Player) < attack_range {
			state = "chasing"
			isChasing = true
			direction = point_direction(x, y, obj_Player.x, obj_Player.y)
			image_angle = direction - 180
			if obj_Player.y < y homing_speed = 5 else homing_speed = 3
			speed = homing_speed
		} else {
			state = "normal"
			isChasing = false
			vspeed = 0
			speed = patrol_speed
			image_angle = 0
			
			if place_meeting(x + hspeed, y, obj_Wall) {
				speed = patrol_speed
				direction = point_direction(self.x, self.y, obj_Player.x, obj_Player.y)
				if obj_Player.x < x {
					image_xscale = 1 
				} else {
					image_xscale = -1
				}
			}
			y -= global.scroll_speed

			if y <= 0 instance_destroy()
		
		}
	
		if state == "chasing" {
			if obj_Player.x < x {
				image_xscale = 1
				image_angle = direction - 180
			}
			else {
				image_xscale = -1
				image_angle = direction
			}
			
		}
	}
	
	if (last_isChasing = false and isChasing) {
		audio_play_sound(snd_Shark,1,0, 0.38,0,0.80)	
	}


	x = clamp(x, sprite_width/2  + 320, room_width-sprite_width/2 - 320)
}