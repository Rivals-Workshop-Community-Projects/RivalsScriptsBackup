
if player_id.lamp == self player_id.move_cooldown[AT_DSPECIAL] = 100;

in_use = false;
x = round(x);
y = round(y);

with(oPlayer){
	if(url == other.player_id.url && "uspec_lamp_id" in self && uspec_lamp_id == other){
		other.in_use = true;
	}
}
if state == 2 in_use = true;
if(on_cooldown){
	on_cooldown--;
	in_use = true;
	if(!on_cooldown) {
		var hfx = spawn_hit_fx(x, y, HFX_SHO_FLAME_SMALL);
		hfx.depth = depth - 1;
		sound_play(asset_get("sfx_burnapplied"));
	}
}

if in_use player_id.move_cooldown[AT_DSPECIAL_2] = max(player_id.move_cooldown[AT_DSPECIAL_2], 2)
if in_use player_id.move_cooldown[AT_DSPECIAL] = max(player_id.move_cooldown[AT_DSPECIAL], 2)

// if(in_use || on_cooldown || state != 1) is_hittable = false;
// else is_hittable = true;

switch(state){
	case 1:
	sprite_index = on_cooldown ? sprite_get("lamp_off") : sprite_get("lamp") ;
	if state_timer > 0 ignores_walls = true;
	var die = false;
	with(oPlayer){
		if(!other.in_use && url == other.player_id.url && place_meeting(x, y, other) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL)
		&& window == 2 && !has_hit {
			die = true;
			has_hit = true;
			set_num_hitboxes(AT_FSPECIAL, 1);
		    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
		    set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 9);
    		window = 8;
    		window_timer = 0;
    		if(left_down && spr_dir == 1 || right_down && spr_dir == -1){
    			old_hsp = 5 * spr_dir;
    			old_vsp = -11; // -12
    			destroy_hitboxes();
    			create_hitbox(AT_FSPECIAL, 6, x, y);
    		} else {
	    		old_hsp = 9 * spr_dir;
	    		old_vsp = -8; // -10
    			destroy_hitboxes();
    			create_hitbox(AT_FSPECIAL, 5, x, y);
    		}
    		hitpause = true;
    		hitstop = 4;
    		hitstop_full = 4;
    		// burned = true;
    		// burnt_id = self;
    		// burn_timer = 0;
    		sound_play(asset_get("sfx_burnapplied"));
		}
	}
	if(die){
		// sound_play(asset_get("sfx_forsburn_reappear_hit"));
		sound_play(asset_get("sfx_forsburn_combust"));
		sound_play(asset_get("sfx_rag_whip"));
		spawn_hit_fx(x, y, HFX_MAY_RAG_WHIP);
		instance_destroy(self);
		exit;
	}
	break;
	case 2:
	sprite_index = sprite_get("lamp_explode")
	if(state_timer >= 3){
		sound_play(asset_get("sfx_forsburn_combust"));
		sound_play(asset_get("sfx_rag_whip"));
		spawn_hit_fx(x, y, HFX_SHO_FLAME_BIG);
		create_hitbox(AT_DSPECIAL, 2, x, y);
		instance_destroy(self);
		exit;
	}
	break;
}



image_index = state_timer/8;
state_timer++;