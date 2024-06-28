draw_text_color(room_width/2, 640, "Score: ",c_white,c_white,c_white,c_white,1)

if incrementor >= 1 {
	if damageless draw_text_color(room_width/2, 440, "Damageless Bonus +2000",c_white,c_white,c_white,c_white,1)
	if incrementor == 1 draw_text_color(room_width/2 + 128, 640, string(scr1),c_white,c_white,c_white,c_white,1)
}
if incrementor >= 2 {
	if allTreasure draw_text_color(room_width/2, 480, "All Treasures Bonus +2000",c_white,c_white,c_white,c_white,1)
	if incrementor == 2 draw_text_color(room_width/2 + 128, 640, string(scr2),c_white,c_white,c_white,c_white,1)
}
if incrementor >= 3 {
	if hunter draw_text_color(room_width/2, 520, "Hunter Bonus +2000",c_white,c_white,c_white,c_white,1)
	if incrementor == 3 draw_text_color(room_width/2 + 128, 640, string(scr3),c_white,c_white,c_white,c_white,1)
}
if incrementor >= 4 {
	if pacifist draw_text_color(room_width/2, 520, "Pacifist Bonus +2000",c_white,c_white,c_white,c_white,1)
	if incrementor == 4 draw_text_color(room_width/2 + 128, 640, string(scr3),c_white,c_white,c_white,c_white,1)
}
if incrementor >= 5 {
	if perfect draw_text_color(room_width/2, 560, "PERFECT BONUS x2",c_white,c_white,c_white,c_white,1)
	if incrementor == 5 draw_text_color(room_width/2 + 128, 640, string(scr4),c_white,c_white,c_white,c_white,1)
}

if incrementor == 6 draw_text_color(room_width/2 + 128, 640, string(score),c_white,c_white,c_white,c_white,1)





