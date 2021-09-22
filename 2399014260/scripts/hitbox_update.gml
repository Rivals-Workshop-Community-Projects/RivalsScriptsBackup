if (attack == AT_FSPECIAL){
	if (hitbox_timer == 1) orig_y = y;
	y = orig_y;
	if place_meeting(x, y, asset_get("par_block")) hitbox_timer = length;
	if (hitbox_timer == length && player == orig_player){
		player_id.luma = instance_create(x, y - 16, "obj_article1");
		player_id.luma.spr_dir = spr_dir;
	}
	if hitpause_timer{
		hitpause_timer--;
		in_hitpause = 1;
	}
	else{
		in_hitpause = 0;
		if hitbox_timer % 5 == 4 spawn_hit_fx(x, y, player_id.vfx_sparkle);
	}
}



if (attack == AT_DSTRONG && hbox_num == 1){
	if (!free && hitbox_timer > 1) || has_hit{
		var hfx = spawn_hit_fx(x, y, player_id.vfx_pow);
		hfx.depth = -6;
		hfx.spr_dir = 1;
		
		create_hitbox(AT_DSTRONG, 2, x, y);
		var hfx = spawn_hit_fx(x, y, player_id.vfx_pow_shockwave);
		hfx.spr_dir = 1;
		
		sound_play(player_id.sfx_mario_flip_slam);
		// sound_play(player_id.sfx_yoshi_ground_pound_slam);
		
		instance_destroy();
		exit;
	}
}



if ("article_owner" in self && true_type == 1){
	if article_owner.state == PS_ATTACK_AIR{
		x = article_owner.x + offset_x * article_owner.spr_dir;
		y = article_owner.y + offset_y;
		in_hitpause = article_owner.hitstop;
		spr_dir = article_owner.spr_dir;
	}
	else{
		instance_destroy();
		exit;
	}
}



if (attack == AT_DSPECIAL){
	visible = !(hitbox_timer > length - 12 && hitbox_timer % 6 < 3);
	if ((hitbox_timer - 1) % 5 == 0) proj_angle -= 45;
	
	if player_id.luma != noone && distance_to_object(player_id.luma) < 1 && "lumad" not in self{
		x = lerp(player_id.luma.x, x, 0.5);
		y = player_id.luma.y - 32;
		
		vsp = -14;
		hsp = 0;
		hitbox_timer = 0;
		length = 120;
		
		sound_play(player_id.sfx_mario_pop_1);
		
		lumad = 1;
		
		with player_id.luma if state == PS_IDLE{
			state = PS_SPAWN;
			state_timer = 3;
			if x != other.x spr_dir = sign(other.x - x);
		}
	}
	
	if place_meeting(x, y, asset_get("par_block")){
		spawn_hit_fx(x, y, 302);
		instance_destroy();
		exit;
	}
	
	else if hitbox_timer == length{
		spawn_hit_fx(x, y, 302);
	}
}