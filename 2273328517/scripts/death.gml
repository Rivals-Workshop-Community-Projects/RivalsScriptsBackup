// called when the character gets KO'd
cam_frozen = false;
cam_freeze_timer = 0;
if (instance_exists(nspecial_in) && nspecial_in != 0) {
    nspecial_in.state = 2;
    nspecial_in.state_timer = 0;
}
if (ds_list_size(edge_statics) > 0 && !tamats_are_coming) {
	for (i = 0; i < ds_list_size(edge_statics); i++) {
	    ds_list_find_value(edge_statics, i).cd = static_death;
	}
}