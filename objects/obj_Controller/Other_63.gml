var i_d = ds_map_find_value(async_load, "id")
if i_d = global.nameid {
	if ds_map_find_value(async_load, "status") {
		if ds_map_find_value(async_load, "result") != "" {
			global.name = ds_map_find_value(async_load, "result")
			global.name = string_copy(global.name, 1, 3)
			global.name = string_upper(global.name)
			highscore_add(global.name, score)
		}
	}
}