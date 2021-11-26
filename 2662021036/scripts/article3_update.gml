

if (radius_view_timer < 0.7 && poison_seed = 0){
	radius_view_timer = radius_view_timer + 0.05
}

switch(state){
    
    //Idle
    case PS_IDLE:
            sprite_index = sprite_get("leechseed_idle");  
        	image_index = state_timer / 4;
        break;
        

    //Spawn
    case PS_LAND:
        sprite_index = sprite_get("leechseed_spawn");
        image_index = state_timer / 3;

        if state_timer = 12{
            state = PS_IDLE;
            state_timer = 0;
        }
     
         break;   
 
    //start_poison
    case PS_JUMPSQUAT:
        sprite_index = sprite_get("leechseed_poison_start");
        image_index = state_timer / 4;
        if state_timer = 12{
            state = PS_CROUCH;
            state_timer = 0;
        }   
       
               break; 
 
     //poison
    case PS_CROUCH:
        sprite_index = sprite_get("leechseed_idle_poison");
        image_index = state_timer / 3;
   
        break;
   
}

if (poison_view_timer > 0){
	poison_view_timer = poison_view_timer - 0.05;
}



if (seed_health < 1){
	sound_play(asset_get("sfx_syl_dspecial_plantaway"));
parried_seed = spawn_hit_fx( x, y, player_id.leechseed_despawn );
parried_seed.depth = depth - 1; 	
	player_id.leechseed = 0;
  	player_id.move_cooldown[AT_DSPECIAL] = 240;
  		instance_destroy(self);
}


with (pHitBox){
if (attack == AT_EXTRA_1 && player_id = other.player_id && collision_circle( other.x, other.y, other.effect_radius, self, true, false)){
		if (other.poison_seed = 0){
			sound_play(sound_get("vileplume_leechseed_poison"));
			leechpoisonenable = spawn_hit_fx( other.x, other.y, other.player_id.leechseed_poison_effect );	
			leechpoisonenable.depth = depth - 3;    
			other.poison_view_timer = 1;
			other.poison_seed = 1;
			other.state = PS_JUMPSQUAT;
            other.state_timer = 0;
		}
  }
 
 if (attack == AT_USPECIAL && hbox_num = 3 && player_id = other.player_id && collision_circle( other.x, other.y, other.effect_radius, self, true, false)){
		if (other.poison_seed = 0){
			sound_play(sound_get("vileplume_leechseed_poison"));
			leechpoisonenable = spawn_hit_fx( other.x, other.y, other.player_id.leechseed_poison_effect );	
			leechpoisonenable.depth = depth - 3;    
			other.poison_view_timer = 1;			
			other.poison_seed = 1;
			other.state = PS_JUMPSQUAT;
            other.state_timer = 0;			
			
		}
  }
  
        }

state_timer++;

if lockout <= 0 {
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
            
            seed_health = seed_health - other.damage;
            
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