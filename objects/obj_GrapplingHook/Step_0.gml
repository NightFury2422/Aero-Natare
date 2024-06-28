/// @description visible grappling hook

//Look at the mouse
image_angle = point_direction(x,y,mouse_x,mouse_y)-90;

//Follow the player
x = obj_Player.x + 40;
y = obj_Player.y - 40;