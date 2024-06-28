if other.grabbable {
	other.x = x
	other.y = y
	obj_Player.state = "grabbed"
	obj_Player.held_enemy = other.sprite_index
	audio_play_sound(snd_squeak,1,0)
	if !enemy_incrementor {
		global.enemies_feinted += 1
		enemy_incrementor = true
	}
	if alarm[0] > 0 alarm[0] = 1
} else {
	instance_destroy()
	obj_Player.alarm[1] = 1
}