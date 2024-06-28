if(room == room_TitleScreen){
	//draw_sprite(spr_tempTitleScreen,0,room_width / 2, room_height / 2)
	draw_text(room_width / 2 - 144, room_height / 2 + 192, "Start Game")
	draw_text(room_width / 2 - 144, room_height / 2 + 256, "High Scores")
	draw_text(room_width / 2 - 144, room_height / 2 + 320, "Credits")
	draw_text(room_width / 2 - 144, room_height / 2 + 384, "Exit")
	
	if menu == 0 draw_text(room_width / 2 - 176, room_height / 2 + 192, ">")
	else if menu == 1 draw_text(room_width / 2 - 176, room_height / 2 + 256, ">")
	else if menu == 2 draw_text(room_width / 2 - 176, room_height / 2 + 320, ">")
	else if menu == 3 draw_text(room_width / 2 - 176, room_height / 2 + 384, ">")
}

if(room == room_CloudtopHeights){
	//Weather Stuff
	if paused == true
	{
	if !surface_exists(paused_surf) {
	    if paused_surf == -1
	        {
	        instance_deactivate_all(true);
			layer_sequence_pause(obj_ChunkGenerator.sqTutorial)
			layer_vspeed(BGCloud1, 0)
			layer_vspeed(BGCloud2, 0)
	        }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
		layer_set_visible("textLayer", false)
	} else {
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
	}
}
	//HP and Hook Recharge
	draw_circle_color(384, 96, 42, #FADE81, #FADE81, false)
	for (var i = 0; i < global.heichpea; i++) {
		var col = #93d73c
		if global.heichpea <= 5 col = #93d73c
		if global.heichpea <= 3 col = #C1AB58
		if global.heichpea <= 1 col = #ee7f73
		draw_rectangle_color(438 + i * 34, 83, 470 + i * 34, 106, col, col, col, col, false)
	}
	if global.heichpea >= 5 draw_sprite(spr_HP5,-1, 342,52)
	if global.heichpea == 4 {
		draw_sprite(spr_HP4,-1, 342,52)
	}
	if global.heichpea == 3 draw_sprite(spr_HP3,-1, 342,52)
	if global.heichpea == 2 draw_sprite(spr_HP2,-1, 342,52)
	if global.heichpea == 1 draw_sprite(spr_HP1,-1, 342,52)
	if global.heichpea <= 0 draw_sprite(spr_HP0,-1, 342,52)
	
	
	if object_exists(obj_Player) and not paused draw_rectangle_color(425, 123, 425 + obj_Player.cooldown_incrementor,136, #ee7f73, #ee7f73, #ee7f73, #ee7f73, false)
	draw_sprite(spr_HPBar, -1, 328, 40)
	
	//Score and Treasures
	draw_text(1312, 40, "Score: " + string(score))
	draw_text(1312, 80, "Treasures: " + string(global.treasure_count))
	
	//Held Enemy
	draw_roundrect(room_width / 2 - 40, 40, room_width / 2 + 40, 120, false)
	draw_set_color(#FADE81)
	draw_roundrect(room_width / 2 - 36, 44, room_width / 2 + 36, 116, false)
	draw_set_color(#7A2A04)
	if not paused draw_sprite(obj_Player.held_enemy,-1,room_width/2, 80)
	
	//Depth Meter
	if instance_exists(obj_Player) {
		draw_rectangle_color(340, 672 - obj_Player.player_depth, 378, 1019, #FADE81,#FADE81,#FADE81,#FADE81,false)
		draw_sprite(spr_DepthMeter, -1, 328, room_height - 32)
		draw_sprite(spr_DepthMeterPointer, -1, 373, 672 - obj_Player.player_depth)
	}
	
}

if room == room_GameOver {
	draw_text_transformed_colour(room_width / 2, room_height / 2, "SCORE: " + string(score), 2, 2, 0, c_white, c_white, c_white, c_white, 1);
}

if room == room_HighScores {
	draw_text(room_width/2, 128, "HIGH SCORES")
	for (var i = 0; i < 5; i++) {
		draw_text(room_width/2, 168+(i*40), string(highscore_name(i+1)) + " " + string(highscore_value(i+1)))
	}
}

if room == room_Credits {
	draw_text(room_width/2-144, 128, "CREDITS")
	draw_text(room_width/2-144, 160, "Aero Natare")
	draw_text(room_width/2-144, 224, "Original Concept: morning crash studios")
	draw_text(room_width/2-144, 256, "Scenario: andrew campbell")
	draw_text(room_width/2-144, 320, "Lead Programmer: andrew campbell")
	draw_text(room_width/2-144, 352, "Programmers: cameron east, logan bodenheimer")
	draw_text(room_width/2-144, 416, "Character Designer: hypnos chhabra")
	draw_text(room_width/2-144, 448, "UI Art Designer: hypnos chhabra")
	draw_text(room_width/2-144, 480, "Map Design: logan bodenheimer")
	draw_text(room_width/2-144, 544, "Music and Sound Effects: freesounds.org")
	draw_text(room_width/2-144, 608, "Producer: cameron east")
}