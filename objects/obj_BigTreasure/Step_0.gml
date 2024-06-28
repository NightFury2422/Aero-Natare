y-=global.scroll_speed

if y <= 0 instance_destroy()

if y <= 1024 {
	instance_destroy(obj_WeatherController)
	global.scroll_speed = 0
	layer_vspeed("BGCloud2", 0)
	layer_vspeed("BGCloud1", 0)
}