if moving {
	hspeed = -5
}

// Apply friction when no keys are pressed
hspeed *= (1 - friction_speed);
// Limit the character's speed to prevent it from getting too slow
if (abs(hspeed) < 0.0001) hspeed = 0;

y = y + sin(timer * 0.03) * 0.5

timer++