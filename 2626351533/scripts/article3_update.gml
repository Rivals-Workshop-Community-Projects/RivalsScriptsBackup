
//Make time progress
state_timer++;

//Gets destroyed on Clairen's Plasma Field
//if (place_meeting(x, y, asset_get("plasma_field_obj")) && state_timer > 0) {
//	sound_play(asset_get("sfx_clairen_hit_med"));
//	spawn_hit_fx(floor(x),floor(y),256);
//	state_timer = -40;
//}

/*
with (asset_get("pHitBox")){
	if (damage > 0 && kb_value > 0 && hit_priority > 0 && other.state_timer > 0){
		if (place_meeting(x,y,other.id) && other.player != player){
			if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
					if (other.whirlwind_second == false){
						other.whirlwind_active_hitbox.destroyed = true;	
					}
					else {
						other.whirlwind2_active_hitbox.destroyed = true;	
					}
				other.state_timer = -24;
		    }
		}
	}
}
*/

if (instance_exists(player_id.batarang)){
	if ((place_meeting(x, y, player_id.batarang)) && state == 0){
		player_id.grapple_cont += 2;
		player_id.grapple_pull_back = 2;
	}
	if ((place_meeting(x, y, player_id.batarang)) && state == 2){
		player_id.grapple_cont += 2;
		player_id.grapple_pull_up = 2;
	}
}

if (instance_exists(player_id.mine)){	
	if ((place_meeting(x, y, player_id.mine)) && state == 0){
		player_id.grapple_cont += 2;
		player_id.grapple_pull_back = 2;
	}
	if ((place_meeting(x, y, player_id.mine)) && state == 2){
		player_id.grapple_cont += 2;
		player_id.grapple_pull_up = 2;
	}
}



if (state_timer >= 1010){
	shoulddie = true;
}

//State 0: Going Forward
if (state == 0){
	if (state_timer == 1){
		grapple_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y-20);
	}
	sprite_index = sprite_get("grapple_hook");
	hsp = 30*spr_dir;
}

//State 1: Going Back
if (state == 1){
	hsp = -60*spr_dir;
}

if (player_id.grapple_pull_back > 0){
	hsp = 0;
}

//State 2: Going Diagonally Down
if (state == 2){
	image_angle = -45*spr_dir;
	if (state_timer == 1){
		grapple_hitbox = create_hitbox(AT_FSPECIAL, 2, x, y-20);
	}
	sprite_index = sprite_get("grapple_hook");
	hsp = 15*spr_dir;
	vsp = 15;
}

//State 3: Going Up
if (state == 3){
	hsp = -30*spr_dir;
	vsp = -30;
}

if (player_id.grapple_pull_back > 0){
	hsp = 0;
}

if (player_id.grapple_pull_up > 0){
	hsp = 0;
	vsp = 0;
}

//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (((stage_y + stage_b < y) || (stage_xl > x) || (stage_xr < x)) && state_timer > 200){
	shoulddie = true;
}


//Dying
if (shoulddie == true){
	
	player_id.grapple_pull_back = 0;
	
if (instance_exists(grapple_hitbox)){
	grapple_hitbox.destroyed = true;
}
	
	player_id.killarticles = false;
    instance_destroy();
    exit;
}



