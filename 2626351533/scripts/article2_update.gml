
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

//Flies back
if (state_timer >= 45 && state < 3){
	state = 3;
}

//State 0: Flying Forward
if (state == 0){
	if (state_timer == 1){
		player_id.batarang_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
	sprite_index = sprite_get("batarang");
	image_angle -= 35*spr_dir;
	hsp = 8*spr_dir;
}

//State 1: Flying Upward
if (state == 1){
	if (state_timer == 1){
		player_id.batarang_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
	sprite_index = sprite_get("batarang");
	image_angle -= 35*spr_dir;
	hsp = 5*spr_dir;
	vsp = -4;
}

//State 2: Flying Downward
if (state == 2){
	if (state_timer == 1){
		player_id.batarang_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
	sprite_index = sprite_get("batarang");
	image_angle -= 35*spr_dir;
	hsp = 5*spr_dir;
	vsp = 4;
	if (!free){
		state = 1;
	}
}

//State 3: Flying Back
if (state == 3){
	
	if (state_timer == 46){
		spr_dir *= -1;
	}
	
	if (state_timer == 60){
		player_id.batarang_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
	}
	
	sprite_index = sprite_get("batarang");
	image_angle -= 35*spr_dir;
	
	can_be_grounded = false;
	ignores_walls = true; 
	
	if (x > player_id.x && hsp >= -6){
		hsp -= 2;
	}
	if (x < player_id.x && hsp <= 6){
		hsp += 2;
	}
	if (y+30 > player_id.y && vsp >= -4){
		vsp -= 1;
	}
	if (y+30 < player_id.y && vsp <= 4){
		vsp += 1;
	}
	x = round(x);
	if (x >= player_id.x-90 && x <= player_id.x+90 && state_timer > 60){
		state = 4;
	}
}

//State 4: Pass by
if (state == 4){
	image_angle += 35*spr_dir;
}

//Grabs the mine
if ((place_meeting(x, y, player_id)) && (state >= 3) && 
(player_id.state != PS_AIR_DODGE && player_id.state != PS_ROLL_BACKWARD && player_id.state != PS_ROLL_FORWARD)){
	if ((instance_exists(player_id.mine)) && player_id.mine.state == 1){
            player_id.mine.state = 2;
        }
	shoulddie = true;
}

//Destroy after a certain time
if (state >= 3 && state_timer > 600){
	shoulddie = true;
}

//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (((stage_y + stage_b < y) || (stage_xl > x) || (stage_xr < x)) && state_timer > 200){
	if ((instance_exists(player_id.mine)) && player_id.mine.state == 1){
            player_id.mine.state = 0;
        }
	shoulddie = true;
}


//Dying
if (shoulddie == true){
	sprite_index = asset_get("empty_sprite");
	player_id.batarang_hitbox.destroyed = true;
	player_id.killarticles = false;
    instance_destroy();
    exit;
}



