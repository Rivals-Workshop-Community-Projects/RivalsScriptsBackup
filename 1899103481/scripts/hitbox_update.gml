if (attack == AT_NAIR && window == 3 ){
	destroyed = true;
}

if (attack == AT_DSPECIAL_2){
	if (!free){
		spawn_hit_fx(x, y+12, hit_fx_create(sprite_get("ustrong_destroyed"), 6));
		destroyed = true;
		instance_destroy();
		exit;
	}
}

if (attack == AT_NSPECIAL){
	fuckthisshit_timer++;

	if (place_meeting(x, y, oPlayer)){

		if ((other != player_id)
		&& (hitbox_timer > 1
		|| fuckthisshit_timer > 1)){
			fuckthisshit_timer = 0;
			destroyed = true;
		}
	}
}

if (attack == AT_DSPECIAL_2){
    proj_angle = point_direction(x, y, x+hsp, y+vsp)-90;
}

if (attack == AT_USTRONG){
	image_speed = 0.4;
	var article3 = noone;

	with(asset_get("obj_article3")){
		if (player_id == other.player_id){
			article3 = id;
		}
	}
    proj_angle = point_direction(x, y, x+hsp, y+vsp)-90;
    
    if(place_meeting(x, y, article3)){
		isBoosted = true;
    	if (sprite_index != sprite_get("turret_proj_boosted")){
    		sound_play(asset_get("sfx_clairen_uspecial_swing"));
    	}
    	sprite_index = sprite_get("turret_proj_boosted");
    	// with (player_id){
	    	damage = 12;// damage_start+6;
			kb_value = 7;// kb_start+2
			// set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12+floor(strong_charge/10));
			// set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9+floor(strong_charge/10));
    	// }
    }
    
    if (!free){
        
        spawn_hit_fx(x, y+12, hit_fx_create(sprite_get("ustrong_destroyed"), 6));
        destroyed = true;
        instance_destroy();
        exit;
    }
}

if (attack == AT_DTILT){
	var article1 = noone;

	with(asset_get("obj_article1")){
		if (player_id == other.player_id){
			article1 = id;
		}
	}
	
	timer++;
	image_index = floor(timer/70);
	
	if (place_meeting(x, y, article1)){
		destroyed = true;
	}
}

// if (attack == AT_EXTRA_1){
//     proj_angle += 50
// }