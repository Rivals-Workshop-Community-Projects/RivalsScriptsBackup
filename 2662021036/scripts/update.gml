

if get_player_color(player) == 7 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}

with (asset_get("pHitBox")) //references all hitbox objects
{
	//checks if the hitbox is a melee one that we own
	if (player_id == other and attack == 49)
	{
		sprite_index = other.final_hb_sprite; // changes the hitbox sprite
		image_xscale = other.spr_dir
		if (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR) && other.attack = 49 && other.window = 7 && other.window_timer % 3 == 0{
		for(var i = 0; i < 20; i++) can_hit[i] = true;	
		}
	}
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



