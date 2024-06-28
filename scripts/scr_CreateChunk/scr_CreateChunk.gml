//Script to generate level chunks. God help me go through 20 levels doing this manually
function scr_CreateChunk(room_number, load_below_amount) {
	
	switch room_number {
		case 0:
			
		break
		
		case 1:
			instance_create_layer(1440,320+load_below_amount,"RoomChunks",obj_Cloud5)
			
			instance_create_layer(480,384+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(480,512+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1280,576+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(1504,928+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(864,352+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(864,448+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(864,544+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(864,640+load_below_amount,"RoomChunks",obj_Crystal)
			
			instance_create_layer(1440,224+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(1536,224+load_below_amount,"RoomChunks",obj_Treasure)
	
			global.enemy_count_bonus += 4
			global.treasure_count_bonus += 2
		break
		
		case 2:
			instance_create_layer(484,448+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(1344,608+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(640,832+load_below_amount,"RoomChunks",obj_Cloud3)
			
			instance_create_layer(416,228+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1504,448+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1536,608+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(448,736+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(512,384+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(576,384+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1280,544+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1408,544+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(576,768+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(640,768+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(704,768+load_below_amount,"RoomChunks",obj_Crystal)
			
			instance_create_layer(1312,512+load_below_amount,"RoomChunks",obj_Treasure)
			
			global.enemy_count_bonus += 4
			global.treasure_count_bonus += 1
		break
		
		case 3:
			instance_create_layer(928,896+load_below_amount,"RoomChunks",obj_Cloud5)
			
			instance_create_layer(736,832+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1110,832+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(384,480+load_below_amount,"RoomChunks",obj_Selachicera)
			instance_create_layer(1536,672+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(736,384+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1120,384+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(736,512+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1120,512+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(832,832+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1024,832+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(864,960+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(996,960+load_below_amount,"RoomChunks",obj_Crystal)
			
			instance_create_layer(896,800+load_below_amount,"RoomChunks",obj_Treasure)
			
			global.enemy_count_bonus += 4
			global.treasure_count_bonus += 1
			
		break

		case 4:
			instance_create_layer(640,832+load_below_amount,"RoomChunks",obj_Cloud5)
			
			instance_create_layer(480,224+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(1440,224+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(1056,544+load_below_amount,"RoomChunks",obj_Cloud3)
			
			instance_create_layer(480,320+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1440,320+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1248,480+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1056,640+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(640,928+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(416,160+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(544,160+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1376,160+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1504,160+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(992,480+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1120,480+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(576,768+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(704,768+load_below_amount,"RoomChunks",obj_Crystal)
			
			instance_create_layer(480,736+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(736,736+load_below_amount,"RoomChunks",obj_Treasure)
			
			global.treasure_count_bonus += 2
			global.enemy_count_bonus += 5
		break
		
		case 5:
			instance_create_layer(1344,224+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(864,448+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(1440,800+load_below_amount,"RoomChunks",obj_Cloud3)
			instance_create_layer(608,928+load_below_amount,"RoomChunks",obj_Cloud3)
			
			instance_create_layer(1152,224+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1056,448+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(800,928+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(1504,608+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(1280,288+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1408,288+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(800,512+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(928,512+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1376,864+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1504,864+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(544,992+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(672,992+load_below_amount,"RoomChunks",obj_Crystal)
			
			instance_create_layer(1312,128+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(1408,704+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(576,832+load_below_amount,"RoomChunks",obj_Treasure)
			
			global.treasure_count_bonus += 3
			global.enemy_count_bonus += 4
		break
		
		case 6:
			instance_create_layer(544,320+load_below_amount,"RoomChunks",obj_Cloud3)
			
			instance_create_layer(1088,896+load_below_amount,"RoomChunks",obj_Cloud5)
			
			instance_create_layer(1312,256+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(768,768+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			var a = instance_create_layer(1472,576+load_below_amount,"RoomChunks",obj_Selachicera)
			a.image_xscale = 2
			
			instance_create_layer(480,256+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(544,256+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(608,256+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(960,832+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1056,832+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1120,832+load_below_amount,"RoomChunks",obj_Crystal)
			instance_create_layer(1216,832+load_below_amount,"RoomChunks",obj_Crystal)
			
			global.enemy_count_bonus += 3
			
		break
		
		case 7: //Introduce movement
			
		
		break
		
		case 8: // Introduce treasures and relics
			instance_create_layer(1312,128+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(1408,704+load_below_amount,"RoomChunks",obj_Treasure)
			instance_create_layer(576,832+load_below_amount,"RoomChunks",obj_Treasure)
		
		break
		
		case 9: // Introduce hook + crabs
			instance_create_layer(480,384+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(480,512+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1280,576+load_below_amount,"RoomChunks",obj_Brachyanser)
		break
		
		case 10: // Introduce sharks
			instance_create_layer(480,384+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1504,928+load_below_amount,"RoomChunks",obj_Selachicera)
		break
		
		case 20:
			
			instance_create_layer(480,192+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(608,192+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1152,192+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1280,192+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(608,768+load_below_amount,"RoomChunks",obj_Brachyanser)
			instance_create_layer(1184,768+load_below_amount,"RoomChunks",obj_Brachyanser)
			
			instance_create_layer(1538,544+load_below_amount,"RoomChunks",obj_Selachicera)
			instance_create_layer(416,672+load_below_amount,"RoomChunks",obj_Selachicera)
			
			instance_create_layer(928,928+load_below_amount,"RoomChunks",obj_BigTreasure)
			
			global.enemy_count_bonus += 8
		break
	}
}