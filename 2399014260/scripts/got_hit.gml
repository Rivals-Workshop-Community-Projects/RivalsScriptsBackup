if !array_equals(stopped_sounds, []){
	for (var i = 0; i < array_length(stopped_sounds); i++){
		sound_stop(stopped_sounds[i]);
	}
	stopped_sounds = [];
}



if phone_attacking && attack == AT_DSPECIAL && dspecial_window_tracker < 3{
	var vfx = instance_create(x, y - 48, "obj_article3");
	vfx.spr_dir = -spr_dir;
}