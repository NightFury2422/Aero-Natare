/// @description motion blur
if particle_type = 0 {
	part_type_sprite(obj_ParticleController.particle_RelicSparkles1, spr_Sparkle0,1,1,0)
	part_particles_create(obj_ParticleController.particle_System,x+10,y-10,obj_ParticleController.particle_RelicSparkles1,3)
}
if particle_type = 1 {
	part_type_sprite(obj_ParticleController.particle_RelicSparkles2, spr_Sparkle1,1,1,0)
	part_particles_create(obj_ParticleController.particle_System,x-10,y-10,obj_ParticleController.particle_RelicSparkles2,3)
}
if particle_type = 2 {
	part_type_sprite(obj_ParticleController.particle_RelicSparkles3, spr_Sparkle2,1,1,0)
	part_particles_create(obj_ParticleController.particle_System,x+5,y-10,obj_ParticleController.particle_RelicSparkles3,3)
}

particle_type += 1

if particle_type > 2 {
	particle_type = 0	
}

alarm_set(0, 10)