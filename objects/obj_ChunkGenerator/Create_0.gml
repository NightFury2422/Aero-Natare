scr_CreateChunk(0,0)

scr_CreateChunk( 7, 928 ) // Intro movement

sqTutorial = layer_sequence_create("textLayer",0,0,sq_tutorial)

scr_CreateChunk( 8, 928*2 ) // Intro treasures
scr_CreateChunk( 9, 928*3 ) // Intro crabs + hook
scr_CreateChunk( 10, 928*4 ) // Intro shark

for (var i = 5; i < 11; i++) {
	scr_CreateChunk(irandom_range(1,6),928*i)
}
scr_CreateChunk(20,10208)
draw_text(1312, 120, "Rooms Loaded")

alarm[0] = random_range(600, 900)
alarm[1] = layer_sequence_get_length(sqTutorial)