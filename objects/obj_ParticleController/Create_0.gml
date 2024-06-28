particle_System = part_system_create_layer("ParticleInstances",0)


#region John's Shadow
particle_Shadow = part_type_create()

part_type_life(particle_Shadow,5,5) // how long particle exists

part_type_color1(particle_Shadow,c_white) // color

part_type_alpha3(particle_Shadow,0.25,0.20,0.001) // transparency


#region Enemy Shadow
particle_ShadowEnemy = part_type_create()

part_type_life(particle_ShadowEnemy,5,5) // how long particle exists

part_type_color1(particle_ShadowEnemy,c_white) // color

part_type_alpha3(particle_ShadowEnemy,0.25,0.1,0.001) // transparency


#region Relic Sparkles
particle_RelicSparkles1 = part_type_create()

part_type_life(particle_RelicSparkles1,20,45) // how long particle exists

part_type_color1(particle_RelicSparkles1,c_white) // color

part_type_alpha3(particle_RelicSparkles1,1,0.1,0.001) // transparency


particle_RelicSparkles2 = part_type_create()

part_type_life(particle_RelicSparkles2,20,45) // how long particle exists

part_type_color1(particle_RelicSparkles2,c_white) // color

part_type_alpha3(particle_RelicSparkles2,1,0.1,0.001) // transparency


particle_RelicSparkles3 = part_type_create()

part_type_life(particle_RelicSparkles3,20,45) // how long particle exists

part_type_color1(particle_RelicSparkles3,c_white) // color

part_type_alpha3(particle_RelicSparkles3,1,0.1,0.001) // transparency

#region John Death
particle_DeathSmoke = part_type_create()

part_type_life(particle_DeathSmoke,20,45) // how long particle exists

part_type_color1(particle_DeathSmoke,c_white) // color

part_type_alpha3(particle_DeathSmoke,1,0.1,0.001) // transparency