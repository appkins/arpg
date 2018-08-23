enum mc_state{
	normal,
	attack,
	attack2,
	attack3,
	dodge,
	hit
}

window_set_cursor(cr_none);
instance_create_depth(mouse_x, mouse_y, -10000, obj_cursor);