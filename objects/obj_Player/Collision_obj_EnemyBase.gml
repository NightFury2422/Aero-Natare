if !invincible {
	invincible = true
	if !alarm[0] alarm[0] = 60
	if !(other.state == "grabbed") {
		global.heichpea -= other.enemy_damage
		if global.heichpea <= 0 {
			audio_play_sound(snd_johndeath,1,0)
		}
		else{
		hurt = true
		audio_play_sound(snd_Hurt,1,0)
		}
	}
	instance_destroy(other)
}