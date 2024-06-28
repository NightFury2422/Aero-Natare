/// @description motion blur
part_type_sprite(obj_ParticleController.particle_ShadowEnemy, sprite_index,1,0,0)

part_particles_create(obj_ParticleController.particle_System,x,y,obj_ParticleController.particle_ShadowEnemy,1)

alarm_set(1, 1)