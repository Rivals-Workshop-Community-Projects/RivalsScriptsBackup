//Updating initializer

spark = false;
spark_rng = random_func(0, 3, true);
spark_dist = random_func(0, 20, false);

super_beam_id = noone;

if (attack == AT_DTILT){
	force_depth = true;
	depth = depth+5;
}

if (attack == AT_NSPECIAL){
	if (player_id.state == PS_ATTACK_GROUND && player_id.window == 2){ spawn_hit_fx(x-28 * spr_dir, y-5, 259); }
	if (player_id.state == PS_ATTACK_AIR && player_id.window == 7){ spawn_hit_fx(x-35 * spr_dir, y-14, 259); }
	if (player_id.state == PS_ATTACK_AIR && player_id.window == 2){ spawn_hit_fx(x-16 * spr_dir, y-5, 259); }
}

if (attack == AT_FAIR){
	if (get_player_color(player_id.player) != 8) { sound_play(sound_get("gun")); }
	if (get_player_color(player_id.player) == 8) { sound_play(sound_get("EA_gun")); }
}

if (attack == AT_NSPECIAL_2){ //Super Mecha
	//image_yscale = 10;
	//sprite_width += 1; 
	//var flydir = point_direction(0,0,hsp,vsp);
    //hsp = -30 * spr_dir + ((player_id.state_timer / 0.9) * spr_dir);
    //vsp = 90 - ((player_id.state_timer / 1));
	//proj_angle = flydir * 2 + 180;
	//spawn_hit_fx(x+5 * spr_dir, y-20, 66 );
}

if (attack == AT_USPECIAL_2){
	if (hbox_num >= 3 && hbox_num <= 6){
    var particleeffect = spawn_hit_fx(x, y-20, 109);
    //particleeffect.force_depth = true;
    //particleeffect.depth = depth-20;
	if (spr_dir == 1){ proj_angle = -310; }
	if (spr_dir == -1){ proj_angle = 310; }
	}
		if (get_player_color(player_id.player) == 8){
	if (hbox_num == 3 || hbox_num == 4 || hbox_num == 5){ sound_play(sound_get("EA_missilefire")); }
	if (hbox_num == 6){ sound_play(sound_get("EA_missilefire3")); }
		} else {
	if (hbox_num == 3 || hbox_num == 4 || hbox_num == 5){ sound_play(sound_get("S3&K_missilefire")); }
	if (hbox_num == 6){ sound_play(sound_get("S3&K_missilefire2")); }
		}
		
	if (hbox_num == 7){
		if (get_player_color(player_id.player) != 8){ sound_play(sound_get("uspecial_shot")); }
		if (get_player_color(player_id.player) == 8){ sound_play(sound_get("EA_missilefire2")); }
		var particleeffect = spawn_hit_fx(x+10 * spr_dir, y-10, 144);
    	particleeffect.force_depth = true;
    	particleeffect.depth = depth-50;
	}
	if (hbox_num == 8){
		if (get_player_color(player_id.player) != 8){ sound_play(sound_get("uspecial_shot")); }
		if (get_player_color(player_id.player) == 8){ sound_play(sound_get("EA_missilefire2")); }
		var particleeffect = spawn_hit_fx(x-10 * spr_dir, y-1, 144);
    	particleeffect.force_depth = true;
    	particleeffect.depth = depth-50;
	}
	
}

if (attack == AT_USPECIAL_GROUND){
	if (player_id.window == 1){ destroyed = true; }
	player_id.Beam_id = id;
	rope_offset_x = 0;
	rope_offset_y = 0;
	force_depth = true;
	depth = depth+2;
	//sound_play(sound_get("S3&K_missilefire"));
	//sound_play(sound_get("dtilt_finalburn"));
	//var particleeffect = spawn_hit_fx(x, y-20, 110);
	//particleeffect.force_depth = true;
    //particleeffect.depth = depth-50;
}