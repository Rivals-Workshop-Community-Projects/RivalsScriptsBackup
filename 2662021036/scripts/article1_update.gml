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

if (place_meeting( x , y + 1 , asset_get("par_block"))){
sprite_change_offset("grassknot_idle", 93, 110);
sprite_change_offset("grassknot_rise", 93, 110);
sprite_change_offset("grassknot_lower", 93, 110);
sprite_change_offset("grassknot_attack", 93, 150);
sprite_change_offset("grassknot_attack_seed", 93, 270);
}

if (place_meeting( x , y + 1 ,asset_get("par_jumpthrough"))){
sprite_change_offset("grassknot_idle", 93, 111);
sprite_change_offset("grassknot_rise", 93, 111);
sprite_change_offset("grassknot_lower", 93, 111);
sprite_change_offset("grassknot_attack", 93, 151);
sprite_change_offset("grassknot_attack_seed", 93, 271);
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
              create_hitbox( AT_NSPECIAL, 1, x + (3 * spr_dir), y - 50);  	
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
              create_hitbox( AT_NSPECIAL, 2, x + (3 * spr_dir), y - 110);  	
                }
       
        break;    
 
 
   
}

if (knot_health < 1){
	sound_play(asset_get("sfx_syl_dspecial_plantaway"));
parried_seed = spawn_hit_fx( x, y, player_id.leechseed_despawn );
parried_seed.depth = depth - 1; 	
            player_id.grassknot_exists = 0;
  		instance_destroy(self);
}

state_timer++;


if lockout <= 0  && (state = PS_IDLE || state = PS_JUMPSQUAT || state = PS_DOUBLE_JUMP){
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) 
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 && player_id != other.player_id {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                            currentHighestPriority = self;
                    } else {
                        currentHighestPriority = self;
                    }
                    
                    variable_instance_set(self, `hit_${article}`, true);
                }
            } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
                //prevent from running hit detection for optimization sake
                //with other print_debug("hit but also not");
                variable_instance_set(self, `hit_${article}`, true);
            }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            knot_health = knot_health - other.damage;
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }
} else hit_lockout--;