sprite_index = spr_mc_attack2;
speed = 0;

if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))) {
    direction = radtodeg(arctan2(keyboard_check(ord("W")) - keyboard_check(ord("S")), keyboard_check(ord("D")) - keyboard_check(ord("A"))));
    speed = 2;
}

if(image_index > 1 || image_index <= 3){
	with(instance_create_layer(x,y,layer,obj_mc_hitbox)){
		image_angle = other.image_angle;
	}
};

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), 3) * sign(dd);

if(mouse_check_button_pressed(mb_left)){
	combo = 2;
}

if(image_index > image_number - 1) {
	if(combo == 2)
		state = mc_state.attack3;
	else if(combo == 1)
		state = mc_state.normal;
}

return;