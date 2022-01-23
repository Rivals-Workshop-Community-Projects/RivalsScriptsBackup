//article update








if place_meeting(x, y, asset_get("plasma_field_obj")) {
    
    
     if "discushitboxone" in self {
        if instance_exists(discushitboxone) {
            instance_destroy(discushitboxone)
            
              
            }}
            
             sound_play( asset_get( "sfx_clairen_hit_weak" ) );
          with(oPlayer) {
    
                if (id = other.player_id) {     nspecial_access_timer = 120 
                    
                    
                   spawn_hit_fx( other.x, other.y, torren_rock_small )
                    
                }}    
        
       
        
    instance_destroy();
    exit;
    
    
}




can_be_grounded = (vsp >= 0 && !free); // giik fix

state_timer++

 if "discushitboxone" in self {
if (!instance_exists(discushitboxone) && state = 0) {
    
  with(oPlayer) {
    
     if (id = other.player_id) {     nspecial_access_timer = 120 }}     instance_destroy();
    exit;
    
}}

//delete if out of bounds
if (y > room_height)
{
    
    if "discushitboxone" in self {
        if instance_exists(discushitboxone) {
            instance_destroy(discushitboxone)
            } }
            
          with(oPlayer) {
    
                if (id = other.player_id) {     nspecial_access_timer = 120 }}    
        
    instance_destroy();
    exit;
}

if ((x < 0 || x > room_width) && (state != 0 || hsp*spr_dir <= -11.9) )
{
    
    if "discushitboxone" in self {
        if instance_exists(discushitboxone) {
        instance_destroy(discushitboxone)
        } }


    
      with(oPlayer) {
    
                if (id = other.player_id) {     nspecial_access_timer = 120 }}
    instance_destroy();
    
    
    exit;
}
    
    
    

if (state == 0){
        
        if (state_timer == 1) {
        
        		discushitboxone = create_hitbox(19, 1, floor(x) + hsp + 20*spr_dir, floor(y) + vsp + 50 ); 
                discushitboxone.timer_thing = 5;
                additional_hsp = player_id.hsp*spr_dir/2
                  discushitboxone.x = x + hsp
        discushitboxone.y = y + vsp
        }
        		

        discushitboxone.x = x + hsp
        discushitboxone.y = y + vsp
        
        
        
        image_index += hsp*0.05 + 0.05
    
    hsp = clamp(12, -12, (((12+additional_hsp)-.3*state_timer)*spr_dir))
    
   if (hit_wall) {
       
       state = 1;
       state_timer = 0;
       
       
          if "discushitboxone" in self {
        if instance_exists(discushitboxone) {
        instance_destroy(discushitboxone)
        } }
       
       
   }
    
    if (player_id.vsp < -1) {
        
        
    vsp = -0.2
    } else { vsp = 0.2 }
        
        
        
        
          
        
        
        with (discushitboxone) {
            
          
            
            
                
            if (has_hit) {
                other.hsp = 0
                other.vsp = 0
                timer_thing --
                if (timer_thing < 0) {
                
                
                other.vsp = -8
                
                if (clamp(12, -12, (((12+other.additional_hsp)-.3*other.state_timer)*other.spr_dir))*spr_dir < 0) {
                    
                    other.hsp = spr_dir;
                    
                } else {
                    other.hsp = -1*spr_dir }
                
                
                other.state = 1;
                other.state_timer = 0
                
                with (other) {
                  if "discushitboxone" in self {
                     if instance_exists(discushitboxone) {
                        instance_destroy(discushitboxone)
                        } }
                } }
                
            }
        }
        
        
        
        
    if (hsp*spr_dir <= 0) {      
                with(oPlayer) {
            
            if (id = other.player_id && state_cat != SC_HITSTUN ) {
            if place_meeting(x,y,other) {
                other.player_id.you_have_a_fucking_chakram_out = false;

            fuck = spawn_hit_fx(other.x, other.y, 305)
            fuck.depth = depth + 1
           other.state = 4;
            sound_play( asset_get( "mfx_coin" ) );
        
        }
        } }
    }
        
        
        
}
    
    
 






if (state == 1) {
    
    sprite_index = sprite_get("discus_rotation");
    fun_amazing_number += spin_image_speed*0.1
    image_index = fun_amazing_number
    
   // hsp *= 0.99
    
     if (free){
    
   
    //vsp = 0
        vsp = clamp(vsp + gravity_spd, -10, max_fall)
        prev_vsp = vsp

        
        
    } else {
        
        
        if (hsp != 0) {
            
                sound_play( asset_get( "mfx_hp" ), 0, 0, prev_vsp/8, 0.5);

            
        }
        
    if (prev_vsp > 3) {
        
        
        vsp = -0.8*prev_vsp
        spin_image_speed *= 0.8;
        hsp *= 0.6
        
    }    else {
        
        vsp = 0
        spin_image_speed = 0
        hsp = 0
    }
        
        
        
    }


if (state_timer > 20) {
      with(oPlayer) {
            
            if (id = other.player_id && state_cat != SC_HITSTUN ) {
            if place_meeting(x,y,other) {
                other.player_id.you_have_a_fucking_chakram_out = false;

                fuck = spawn_hit_fx(other.x, other.y, 305)
            fuck.depth = depth + 1

           other.state = 4;
            sound_play( asset_get( "mfx_coin" ) );
        
        }
        } }
}




if (state_timer > 240) {
    
    if (state_timer%4 = 0) {
        
        sprite_index = sprite_get("empty_sprite");

    } else {
        
            sprite_index = sprite_get("discus_rotation");
    }
    
    
    if (state_timer > 300) {
        
        
            with(oPlayer) {
    
                if (id = other.player_id) {     nspecial_access_timer = 120 }}
        
        state = 4
    }
    
}


    
}

if (state == 4) {


  if "discushitboxone" in self {
        if instance_exists(discushitboxone) {
            instance_destroy(discushitboxone)
            } }
    instance_destroy();
    exit;

}









//estimated like 80% accurate imo
if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            
            
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        } 
    
    var currentHighestPriority = noone;
    with (pHitBox) 
    if ( player_id != other.player_id) {
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
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
    }
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            
            
                    //   set_a_state(AS.HITSTUN); //set_a_state is my article state setting function; replace this with yours lol
            
            
            
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            hsp = 1*lengthdir_x(orig_knock, kb_dir);
            vsp = 3*lengthdir_y(orig_knock, kb_dir);
            spin_image_speed = orig_knock*1.5
            free = true
            
            if (state == 0) {
                state = 1;
                state_timer = 0;
                
                         if "discushitboxone" in self {
                if instance_exists(discushitboxone) {
                    instance_destroy(discushitboxone)
                    } }
                
            }
            
            
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














