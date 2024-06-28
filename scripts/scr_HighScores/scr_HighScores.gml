function load_highscores() {
	highscore_clear()
	ini_open("High Scores.ini")
	
	for (var i = 0; i < 5; i++) {
		highscore_add(ini_read_string("players",string(i),"NUL"), ini_read_real("scores",string(i),0))
	}
}

function save_highscores() {
	for (var i = 0; i < 5; i++) {
		var scoer = highscore_value(i+1)
		ini_write_string("players",string(i), highscore_name(i+1))
		ini_write_real("scores", string(i), scoer)
	}
	ini_close()
}

function update_highscores() {
	for (var i = 0; i < 5; i++) {
		if score > highscore_value(i+1) {
			global.nameid = get_string_async("Please enter your name", "")
			break
		}
	}
}