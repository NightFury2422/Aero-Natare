/// @description Insert description here
// You can write your code in this editor
last_isRaining = isRaining

var rainID = layer_get_id("rainy")
var dorknessID = layer_get_id("dorkness")
var BackgroundDarkID = layer_get_id("Background_Dark")
var windyLeftID = layer_get_id("windy_left")
var windyRightID = layer_get_id("windy_right")


if alarm[0] == true{
	State_selector = random(4)
	if State_selector <= 1{
		weatherState = weather.normal
	} else if State_selector <= 2{
		weatherState = weather.rainy
	} else if State_selector <= 3{
		weatherState = weather.windyLeft
	} else if State_selector <= 4{
		weatherState = weather.windyRight
	}
}

if keyboard_check(ord("K")){
	weatherState = weather.rainy
}
if keyboard_check(ord("L")){
	weatherState = weather.normal
}


if weatherState == weather.normal{
	isRaining = false
	layer_set_visible(dorknessID, false)
	layer_set_visible(windyRightID, false)
	layer_set_visible(windyLeftID, false)
	layer_set_visible(rainID, false)
	layer_set_visible(BackgroundDarkID, false)
	global.scroll_speed = 3
} else if weatherState == weather.rainy{
	isRaining = true
	layer_set_visible(dorknessID, true)
	layer_set_visible(windyRightID, false)
	layer_set_visible(windyLeftID, false)
	layer_set_visible(rainID, true)
	layer_set_visible(BackgroundDarkID, true)
	global.scroll_speed = 4
} else if weatherState == weather.windyLeft{
	isRaining = false
	layer_set_visible(dorknessID, false)
	layer_set_visible(windyRightID, false)
	layer_set_visible(windyLeftID, true)
	layer_set_visible(rainID, false)
	layer_set_visible(BackgroundDarkID, false)
	obj_Player.hspeed -= 0.4
	global.scroll_speed = 3
} else if weatherState == weather.windyRight{
	isRaining = false
	layer_set_visible(dorknessID, false)
	layer_set_visible(windyRightID, true)
	layer_set_visible(windyLeftID, false)
	layer_set_visible(rainID, false)
	layer_set_visible(BackgroundDarkID, false)
	obj_Player.hspeed += 0.4
	global.scroll_speed = 3
}

if isRaining == true and last_isRaining == false {
	audio_play_sound(snd_rain,1,true)
}

if isRaining == false and last_isRaining == true {
	audio_group_stop_all(rain)	
}
