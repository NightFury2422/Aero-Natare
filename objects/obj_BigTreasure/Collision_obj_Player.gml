sprite_index = spr_BigTreasureOpen

if !gameWon {
	audio_play_sound(snd_Treasure,1,0)
	gameWon = true
}