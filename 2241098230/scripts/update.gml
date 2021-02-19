//Dashing hurtbox is lower to the ground.
if (state == PS_DASH || state == PS_DASH_TURN) {
    hurtboxID.sprite_index = crouchbox_spr
}

if (speedboost_timer > 0) {
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
		speedboost_timer --;
	walk_speed = walk_speed_def * 1.5;
	dash_speed = dash_speed_def * 1.5;
	air_max_speed = air_max_speed_def * 1.5;
}
else {
	walk_speed = walk_speed_def;
	dash_speed = dash_speed_def;
	air_max_speed = air_max_speed_def;
}

//Makes sure that grabbed opponents don't stay grabbed.
if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 4){
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
	else {
        grabbedid.hitstop = 2;
        grabbedid.hitpause = true;
        grabbedid.state = PS_HITSTUN;
        grabbedid.hsp = 0;
        grabbedid.vsp = 0;
	}
}
var smoke_r = 0;
var smoke_g = 0;
var smoke_b = 0;

smoke_r = get_color_profile_slot_r(get_player_color(player), 5)
smoke_g = get_color_profile_slot_g(get_player_color(player), 5)
smoke_b = get_color_profile_slot_b(get_player_color(player), 5)

//Status effects
with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        smoked = false;
        smoked_timer = 0;
        smoke_hit_cooldown = 0;
        smoked_id = noone;
    }
    if (smoke_hit_cooldown > 0) {
    	smoke_hit_cooldown --;
    }
    
    if (smoked) {
        smoked_timer --;
		outline_color = [smoke_r, smoke_g, smoke_b];
			init_shader();
		outline_color = [ 0, 0, 0 ];
        if (smoked_timer % 6 == 0) {
            var rand_x = round(bbox_left + random_func(2, bbox_right - bbox_left, true));
            var rand_y = round(bbox_top + random_func(3, bbox_bottom - bbox_top, true));
            
            with (other) {
            	var hitfx = spawn_hit_fx(rand_x, rand_y, smoked_fx);
            	hitfx.depth = other.depth - 1
            }
        }
        with (smoked_id) {
	        if (has_rune("N") && other.smoked_timer % 30 == 0) {
	        	with (other) take_damage(player, smoked_id, 1);
	        	sound_play(asset_get("sfx_ell_steam_hit"))
	        }
        }
        //manual_flash = 602;
        //Reset the effect
        if (smoked_timer <= 0)
        {
            //manual_flash = 0;
            sound_play(asset_get("sfx_forsburn_consume_fail"));
            smoked_timer = 0;
            smoked = false;
            smoked_damage = false;
            smoked_id = noone;
            init_shader();
        }
    }
}