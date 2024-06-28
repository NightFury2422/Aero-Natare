if room == room_CloudtopHeights {
	instance_create_layer(438,80,"ParticleInstances",obj_gear)
	audio_group_stop_all(title_screen)
	audio_play_sound(snd_wind,1,true)
	audio_play_sound(snd_gamemusic,1,true)
}

if room == room_GameWin {
	instance_create_layer(0,0,"Instances",obj_Scoring)
	audio_play_sound(snd_gamewin,1,0)
	audio_group_stop_all(rain)
}

if room == room_HighScores {
	update_highscores()
	audio_group_stop_all(rain)
}

if room == room_GameOver {
	audio_group_stop_all(audiogroup_default)
	audio_group_stop_all(rain)
	audio_play_sound(snd_gameover,1,true)
}

if room = room_TitleScreen {
	audio_group_stop_all(audiogroup_default)
	if !audio_is_playing(snd_titlemusic) {
	 audio_play_sound(snd_titlemusic,1,true)	
	}
}