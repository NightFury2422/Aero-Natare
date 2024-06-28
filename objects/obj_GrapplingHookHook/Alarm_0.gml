hook_retract = true
hook_speed = clamp(hook_speed, hook_speed*3, hook_speed*3)
sprite_index = spr_GrapplingHookHookClosed
image_angle = obj_GrapplingHook.image_angle
alarm[1] = point_distance(obj_Player.x, obj_Player.y, self.x, self.y) / hook_speed