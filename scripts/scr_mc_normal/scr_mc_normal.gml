sprite_index = spr_mc;
speed = 0;
combo = 0;

if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))) {
    direction = radtodeg(arctan2(keyboard_check(ord("W")) - keyboard_check(ord("S")), keyboard_check(ord("D")) - keyboard_check(ord("A"))));
    speed = 3;
}

//image_angle = point_direction(x, y, mouse_x, mouse_y);

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), 10) * sign(dd);

if (mouse_check_button_pressed(mb_left)){
	state = mc_state.attack;
}

if (keyboard_check_pressed(vk_space) && canDodge == true){
	alarm[0] = room_speed * .2;
	state = mc_state.dodge;
}

return;