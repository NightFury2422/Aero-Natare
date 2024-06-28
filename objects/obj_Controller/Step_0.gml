load1++;

if load1 > 2 load1 = 2

if load1 == 1 {
	audio_play_sound(snd_titlemusic,1,true)	
}

if global.heichpea <= 0 and !dead_as_hell{
	dead_as_hell = true
	alarm[0] = 30
}

if room == room_CloudtopHeights
{
	BGCloud1 = layer_get_id("BGCloud1")
	BGCloud2 = layer_get_id("BGCloud2")
	if keyboard_check_pressed(vk_escape)
	    {
		    paused = !paused;
		    if paused == false
		        {
			     instance_activate_all();
				 layer_set_visible("textLayer", true)
				 if layer_sequence_is_paused(obj_ChunkGenerator.sqTutorial) layer_sequence_play(obj_ChunkGenerator.sqTutorial)
			     surface_free(paused_surf);
			     paused_surf = -1;
				 layer_vspeed(BGCloud1, -3)
				 layer_vspeed(BGCloud2, -3)
		        }
		    }
	if paused == true
	    {
		    alarm[1]++;
		    alarm[2]++
	    }
}


if room == room_GameOver and keyboard_check_pressed(vk_space) transition_start(room_HighScores, sq_FadeOut, sq_FadeIn)
if room == room_GameWin {
	if keyboard_check_pressed(vk_space) transition_start(room_HighScores, sq_FadeOut, sq_FadeIn)
}
if room == room_HighScores or room == room_Credits {
	if keyboard_check_pressed(vk_space) {
		transition_start(room_TitleScreen, sq_FadeOut, sq_FadeIn)
		if !audio_is_playing(snd_titlemusic) {
			game_restart()
		}
	}
}

if room == room_TitleScreen {
	if keyboard_check_pressed(ord("W")) menu -= 1
	if keyboard_check_pressed(ord("S")) menu += 1 
	if keyboard_check_pressed(vk_space) {
		if menu == 0 transition_start(room_CloudtopHeights, sq_FadeOut, sq_FadeIn)
		if menu == 1 transition_start(room_HighScores, sq_FadeOut, sq_FadeIn)
		if menu == 2 transition_start(room_Credits, sq_FadeOut, sq_FadeIn)
		if menu == 3 game_end()
	}
}

if keyboard_check_pressed(ord("R")) game_restart()

if keyboard_check_pressed(ord("F")) fullscreen *= -1

//Cheats
if keyboard_check_pressed(ord("N")) {
	instance_destroy(obj_Brachyanser)
	instance_destroy(obj_Selachicera)
	global.enemies_feinted = global.enemy_count_bonus
}

if keyboard_check_pressed(ord("M")) {
	instance_destroy(obj_Treasure)
	global.treasure_count = global.treasure_count_bonus
}

if keyboard_check_pressed(ord("J")) {
	instance_create_layer(room_height/2, room_width/2, "Instances", obj_BigTreasure)
}

if fullscreen == 1 window_set_fullscreen(false) else window_set_fullscreen(true)

menu = clamp(menu, 0, 3)