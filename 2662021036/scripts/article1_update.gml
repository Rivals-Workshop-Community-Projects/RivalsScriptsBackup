if ((player_id.state = PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) && player_id.attack == AT_NSPECIAL && player_id.window = 2){
	if (player_id.spr_dir = 1){
		spr_dir = 1;		
		if (hsp < 8){
		hsp = hsp + 0.25;
		}
	}

	if (player_id.spr_dir = -1){
		spr_dir = -1;
		if (hsp > -8){
		hsp = hsp - 0.25;
		}
	}
	
}

if (hsp > 2.5 && state = PS_LAND && get_gameplay_time()%4 == 0){
	spawn_hit_fx( x + 20, y, player_id.grassknot_right_fx );
}

if (hsp < -2.5 && state = PS_LAND && get_gameplay_time()%4 == 0){
	spawn_hit_fx( x - 20, y, player_id.grassknot_right_fx );	
}


if ((player_id.state = PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) && player_id.attack == AT_NSPECIAL && player_id.window = 3){
hsp = 0;

	if (player_id.window_timer = 0){
		
	if (player_id.leechseed = 0){		
				state = PS_ATTACK_GROUND;
		state_timer = 0;	
		
	}
		
	if (player_id.leechseed != 0){
		
		if (!collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_GROUND;
		state_timer = 0;	
		}
		
			if (collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_AIR;
		state_timer = 0;	
		}
		
	}
	
}

}

if (player_id.state_cat = SC_HITSTUN && state != PS_IDLE && state != PS_DOUBLE_JUMP && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	player_id.grassknot_exists = 0;
			instance_destroy(self);
}


if (hit_wall){
 if ((player_id.state = PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) && player_id.attack == AT_NSPECIAL && player_id.window = 2){ 
 
 	if (player_id.leechseed = 0){		
				state = PS_ATTACK_GROUND;
		state_timer = 0;	
		
	}
		
	if (player_id.leechseed != 0){
		
		if (!collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_GROUND;
		state_timer = 0;	
		}
		
			if (collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_AIR;
		state_timer = 0;	
		}
		
	}	
          player_id.window = 3;
        player_id.window_timer = 0; 
 }	
}

if ((state = PS_LAND) && (!place_meeting(x + (40 * spr_dir),y + vsp + 1, asset_get("par_block"))) && (!place_meeting(x + (40 * spr_dir),y + vsp + 1, asset_get("par_jumpthrough")))){
	if (player_id.leechseed = 0){		
				state = PS_ATTACK_GROUND;
		state_timer = 0;	
		
	}
		
	if (player_id.leechseed != 0){
		
		if (!collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_GROUND;
		state_timer = 0;	
		}
		
			if (collision_circle( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed.effect_radius, self, true, false)){
		state = PS_ATTACK_AIR;
		state_timer = 0;	
		}
		
	}
          player_id.window = 3;
        player_id.window_timer = 0; 	
}


switch(state){
    
    //idle
    case PS_IDLE:
            sprite_index = sprite_get("grassknot_idle");  
        	image_index = state_timer / 4;
        break;
        

    //lower while travelling
    case PS_LAND:
        sprite_index = sprite_get("grassknot_lower");
        if (image_index != 5){
        image_index = state_timer / 2;
        }
     
         break;   
         
      //rise after shielding
    case PS_DOUBLE_JUMP:
        sprite_index = sprite_get("grassknot_rise");
        image_index = state_timer / 3;
        if (state_timer = 0){
        sound_play( sound_get("vileplume_grassknot_holdseed"));        	
        }
        if state_timer = 14{
            state = PS_IDLE;
            state_timer = 0;
        }   
       
        break;        
 
    //rise after shielding
    case PS_JUMPSQUAT:
        sprite_index = sprite_get("grassknot_rise");
        image_index = state_timer / 3;
        if (state_timer = 0){
        sound_play( sound_get("vileplume_grassknot_hold"));        	
        }
        if state_timer = 14{
            state = PS_IDLE;
            state_timer = 0;
        }   
       
        break; 
        
    //attack
    case PS_ATTACK_GROUND:
        sprite_index = sprite_get("grassknot_attack");
        image_index = state_timer / 4;
        if image_index = 8{
            player_id.grassknot_exists = 0;
            instance_destroy(self);
        }   
                if state_timer = 4{
              create_hitbox( AT_NSPECIAL, 1, x + 3, y - 50);  	
                }
       
        break;         
 
    //attack (seed)
    case PS_ATTACK_AIR:
        sprite_index = sprite_get("grassknot_attack_seed");
        image_index = state_timer / 4;
        if image_index = 8{
            player_id.grassknot_exists = 0;
            instance_destroy(self);
        } 
        if (state_timer = 0){
        	sound_play(sound_get("vileplume_grassknot_swipeseed"))
        }
        if (state_timer = 1){
        	parried_seed = spawn_hit_fx( player_id.leechseed.x, player_id.leechseed.y, player_id.leechseed_despawn );
			parried_seed.depth = depth - 1; 
			instance_destroy(player_id.leechseed);
			sound_play(asset_get("sfx_syl_dspecial_plantaway"));
			player_id.leechseed = 0;
			  	player_id.move_cooldown[AT_DSPECIAL] = 180;
        }
                if state_timer = 4{
              create_hitbox( AT_NSPECIAL, 2, x + 3, y - 110);  	
                }
       
        break;    
 
 
   
}

state_timer++;