sprite_index = obj_Player.held_enemy
//play throw crab sound
audio_play_sound(snd_crabspin,1,0)
alarm[0] = 120
alarm[1] = 1
incrementor = 0
speed = throw_speed
direction = point_direction(x, y, mouse_x, mouse_y)
obj_Player.held_enemy = spr_NoHeldEnemy