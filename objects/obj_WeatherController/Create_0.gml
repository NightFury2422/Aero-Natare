enum weather {
	normal,
	rainy,
	windyLeft,
	windyRight
}
weatherState = weather.normal
audio_play_sound(snd_rain, 1, true)
audio_group_stop_all(rain)
alarm[0] = 1200