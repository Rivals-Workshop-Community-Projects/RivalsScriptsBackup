
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

//Is grabbed by the batarang
if ((place_meeting(x, y, player_id.batarang)) && state == 0){
	state = 1;
}



//State 0: Idle
if (state == 0){
	vsp = 8;
	player_id.mine_myself = false;
	
	if (free){
    	sprite_index = sprite_get("mine_air");
	}
	else {
    	sprite_index = sprite_get("mine");
	}
}

//State 1: Flying with the batarang
if (state == 1){
	can_be_grounded = false;
	ignores_walls = true;
	sprite_index = sprite_get("mine_air");
	x = player_id.batarang.x;
	y = player_id.batarang.y+25;
	batarang_carry = true;
	
	
//	if (x >= player_id.x-90 && x <= player_id.x+90 && player_id.batarang.state_timer > 10){
//		state = 2;
//	}
}

//State 2: Attached to me
if (state == 2){
	sprite_index = sprite_get("mine_air");
	x = player_id.x-5*player_id.spr_dir;
	y = player_id.y-10;
	player_id.mine_myself = true;
	batarang_carry = false;
}

//State 3: Explode
if (state == 3){
	if (state_timer == 1){
		sound_play(asset_get("sfx_abyss_explosion_big"));
		spawn_hit_fx( x, y-20, 143);
		create_hitbox(AT_DSPECIAL, 2, x, y-20);
	}
	if (state_timer == 2){
		if (player_id.was_parried == false){
			create_hitbox(AT_DSPECIAL, 1, x, y-20);
		}
		shoulddie = true;
	}
}

//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (((stage_y + stage_b < y) || (stage_xl > x) || (stage_xr < x)) && state == 0){
	shoulddie = true;
}



//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}



