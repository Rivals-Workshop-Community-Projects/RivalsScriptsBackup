// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if get_player_color(player) == 7 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}


if (grassknot_exists = 0 && free = 1){
	move_cooldown[AT_NSPECIAL] = 9999;
}

if (grassknot_exists = 0 && free = 0){
	move_cooldown[AT_NSPECIAL] = 0;
}

if grassknot_exists = 0 && !place_meeting(x + (128 * spr_dir),y + vsp + 1, asset_get("par_block")) && !place_meeting(x + (110 * spr_dir),y + vsp + 1, asset_get("par_jumpthrough")){
	move_cooldown[AT_NSPECIAL] = 9999;
}

if grassknot_exists = 1 && grassknot_article.state = PS_ATTACK_GROUND{
	move_cooldown[AT_NSPECIAL] = 9999;
}

if (state_cat = SC_HITSTUN){
	        in_grassknot_loop = 0; 
}


if (in_grassknot_loop = 0){
sound_stop(grassknot_travel_SFX);
}

// poison status

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        vileplume_poison_effect = false;
    }
}





with (asset_get("oPlayer")) {
	


	
	if (other.leechseed != 0){
		if (player != other.player && invincible = 0 && !vileplume_poison_effect && collision_circle( other.leechseed.x, other.leechseed.y, other.leechseed.effect_radius, self, true, false) && other.leechseed.poison_seed = 1){
		vileplume_poison_effect = true;
    	vileplume_poison_effect_id = other.id; 
    	vileplume_poison_effect_timer = 0;
		}

		if (vileplume_poison_effect && other.leechseed.poison_seed = 0 && vileplume_poison_effect_id == other.id && collision_circle( other.leechseed.x, other.leechseed.y, other.leechseed.effect_radius, self, true, false)){
		vileplume_poison_effect = false;
    	vileplume_poison_effect_timer = 0;
		}	



		if (vileplume_poison_effect && vileplume_poison_effect_id == other.id && !collision_circle( other.leechseed.x, other.leechseed.y, other.leechseed.effect_radius, self, true, false)){
		vileplume_poison_effect = false;
    	vileplume_poison_effect_timer = 0;
		}		
		
	}
	
	if (other.leechseed = 0){	

		if (vileplume_poison_effect && vileplume_poison_effect_id == other.id){
		vileplume_poison_effect = false;
    	vileplume_poison_effect_timer = 0;
		}	
		
	}
	
	
	if (vileplume_poison_effect && vileplume_poison_effect_id == other.id && !hitpause) {

		vileplume_poison_effect_timer += 1;
		

		if (vileplume_poison_effect_timer == 20){
		    take_damage(player, other.player, 1);
		    sound_play(other.poison_tick_sound);
		    vileplume_poison_effect_timer = 0;
		} 
		

	}

}

