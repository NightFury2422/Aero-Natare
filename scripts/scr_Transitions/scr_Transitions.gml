function transition_place_sequence(type) {
	if layer_exists("transition") layer_destroy("transition")
	var lay = layer_create(-9999, "transition")
	layer_sequence_create(lay, 0, 0, type)
}

function transition_start(room_target, type_out, type_in) {
	if (!global.midTransition) {
		global.midTransition = true
		global.roomTarget = room_target
		transition_place_sequence(type_out)
		layer_set_target_room(room_target)
		transition_place_sequence(type_in)
		layer_reset_target_room()
		return true
	} else return false
}

function transition_change_room() {
	room_goto(global.roomTarget)
}

function transition_finished() {
	layer_sequence_destroy(self.elementID)
	global.midTransition = false
}