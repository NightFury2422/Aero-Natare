/// @description destroy the current hook target as well
instance_destroy(obj_GrapplingHookTarget.id)
obj_Player.cooldown_incrementor = 163
audio_pause_sound(chainsound)
audio_play_sound(snd_hookreturn,1,0,1,0.05)