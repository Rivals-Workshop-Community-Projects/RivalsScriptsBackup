//Updating initializer

moved = false;
spark = false;
spark_rng = random_func(0, 3, true);
spark_dist = random_func(0, 20, false);

hit_player_id = noone;

if (attack == AT_USPECIAL_2 ){
	if (hbox_num >= 3 && hbox_num <= 6){ 
    var particleeffect = spawn_hit_fx(x, y-20, 109);
    //particleeffect.force_depth = true;
    //particleeffect.depth = depth-20;
	if (spr_dir == 1){ proj_angle = -310; }
	if (spr_dir == -1){ proj_angle = 310; }
	}
	if (hbox_num == 3 || hbox_num == 4 || hbox_num == 5){ sound_play(sound_get("S3&K_missilefire")); }
	if (hbox_num == 6){ sound_play(sound_get("S3&K_missilefire2")); }
	if (hbox_num == 7){
		sound_play(sound_get("uspecial_shot"));
		var particleeffect = spawn_hit_fx(x+10 * spr_dir, y-10, 144);
    	particleeffect.force_depth = true;
    	particleeffect.depth = depth-50;
	}
	if (hbox_num == 8){
		sound_play(sound_get("uspecial_shot"));
		var particleeffect = spawn_hit_fx(x-10 * spr_dir, y-1, 144);
    	particleeffect.force_depth = true;
    	particleeffect.depth = depth-50;
	}
}