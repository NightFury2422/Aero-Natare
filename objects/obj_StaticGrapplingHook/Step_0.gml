//Follow the player
x = obj_Player.x + 40;
y = obj_Player.y - 40;

//Hook adjustments - match the sprite arm - this is *very* sloppy but it works

if keyboard_check(ord("D")){
	x = obj_Player.x + 50
	y = obj_Player.y - 35;
}
if keyboard_check(ord("A")){
	x = obj_Player.x + 30
}
if keyboard_check(ord("S")){
    x = obj_Player.x + 50
}
if keyboard_check(ord("W")){
	x = obj_Player.x + 50
	y = obj_Player.y - 50
}


//Make the grappling hook invisible if the hook is deployed
if(instance_exists(obj_GrapplingHookHook)){
	visible = false
}else if global.heichpea > 0{
	visible = true
}else{
	visible = false	
}