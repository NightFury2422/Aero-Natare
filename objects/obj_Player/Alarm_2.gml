/// @description motion blur

if (sprite_index == spr_PlayerUp) {
	if (image_index == 2) {
		if global.heichpea > 0 part_type_sprite(obj_ParticleController.particle_Shadow, spr_PlayerUpMotionBlur, false, false, false)
	}
} else {
	if global.heichpea > 0 part_type_sprite(obj_ParticleController.particle_Shadow, sprite_index, true, false, false)
}

if global.heichpea <= 0 {
	part_type_sprite(obj_ParticleController.particle_DeathSmoke, spr_deathSmoke,true,false,false)
	part_particles_create(obj_ParticleController.particle_System,x,y,obj_ParticleController.particle_DeathSmoke,1)
	
}

if global.heichpea > 0 part_particles_create(obj_ParticleController.particle_System,x,y,obj_ParticleController.particle_Shadow,1)

alarm_set(2, 1)