
////sfx pass lmao why is it in here 
/// put spr_dir != 0 to make it apply both way


if spr_dir != 0 {
    
    if state == PS_SPAWN {
        if get_gameplay_time() < 90 {
         sprite_index = sprite_get("crouch_walk");
         image_index = floor(state_timer/8);
         
         draw_x = (90 - get_gameplay_time())*spr_dir*-1
         
        } else if get_gameplay_time() == 90 {
             var poof = spawn_hit_fx(x, y, hfx_crouch);
             poof.depth = -6
             sound_stop(sound_get("poof"));
             sound_stop(sound_get("meow"));
             sound_play(sound_get("poof"));
             sound_play(sound_get("meow"));
        }
    }
    
    
    if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
        
        if attack == AT_JAB {
            if state_timer == 1 {
                set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
            }
        }
        
        if attack == AT_FTILT {
            if window == 1 && window_timer == 1 && !hitpause {
                //set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
                //sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1,.8)
            }
        }
       
        
        if attack == AT_DTILT {
            if window == 1 && window_timer == 1 && !hitpause {
            	sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.4,1)
                //set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
            }
        }
        
        if attack == AT_DATTACK {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_stop(asset_get("sfx_swipe_medium2"))
                sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.5,1)
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.6,1.1)
            }
            
            if window == 1 && window_timer == 7 && !hitpause {
                sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
            }
        }
      
      
       if attack == AT_FSTRONG {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.6,1)
            }
            
            if window == 2 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_medium2"),false,noone,.8,1)
            }
            
            if window == 2 && window_timer == 2 && !hitpause {
                sound_play(asset_get("sfx_syl_ustrong_part3"),false,noone,.8 ,.85)
            }
        }  
        
    
     if attack == AT_DSTRONG {
     	
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_heavy1"),false,noone,.4,1)
            }
            
            if window == 2 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_medium1"),false,noone,.7,1)
                //sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1,.8)
            }
            
            if window == 3 && window_timer == 8 && !hitpause {
                sound_play(asset_get("sfx_swipe_heavy2"),false,noone, .8,1)
            }
        
    }

     if attack == AT_USTRONG {
            if window == 1 && window_timer == 1 && !hitpause {
                //set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1);
                //set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_stomp_hit"));
                //set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
                //sound_play(asset_get("sfx_bird_downspecial"),false,noone,.7,1.5)
            }
            
            if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.6,.8)
            }
            
        
    }
    
    if attack == AT_NAIR {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_upbcharge"),false,noone,.7,1)
            }
            if window == 2 && window_timer == 11 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.7,1.2)
            }
    }
    
    if attack == AT_FAIR {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.7,1.4)
                //set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
                
            }
    }
    
    
    if attack == AT_BAIR {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.6,1)
            }
            if window == 2 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_clairen_spin"),false,noone,.4,1)
            }
    }
    
    if attack == AT_UAIR {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.5,1.1)
            }
    }
    
    if attack == AT_DAIR {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.8,.8)
                sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,.3,1)
            }
    }
    
    if attack == AT_NSPECIAL {
            if window == 1 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.8,.9)
            }
            if window == 2 && window_timer == 1 && !hitpause {
                sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,.6,1.8)
            }
    }
    
    if attack == AT_FSPECIAL {
            if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.3,1.2)
                 //sound_play(sound_get("meow"),false,noone,.4,1.6);
            }
            if window == 1 && window_timer == 6 && !hitpause {
                 sound_play(asset_get("sfx_bird_downspecial"),false,noone,.4,1.2)
            }
    }
    
    
    if attack == AT_DSPECIAL {
            if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.9,1)
            }
             if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_upbcharge"),false,noone,.9,1.2)
            }
    }
    

    
    
     if attack == AT_TAUNT {
            if window == 1 && window_timer == 1 && !hitpause {
                 sound_play(asset_get("sfx_swipe_weak1"),false,noone,.7,1)
            }
             if window == 1 && window_timer == 16 && !hitpause {
                 sound_play(asset_get("sfx_swipe_weak2"),false,noone,.7,1)
            }
    }
    
    
    }
    
} else {
    set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
    
    set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
    
    set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    
    set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
    set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    
    set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 0);
    set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    
    set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}



if(state == PS_CROUCH ){
    switch(crouching_state){
        case 1:
            sprite_index = sprite_get("crouch");
        break;
        case 2:
            sprite_index = sprite_get("crouch_2");
        break;
        case 3:
            sprite_index = sprite_get("crouch_lick");
        break;
        case 4:
             sprite_index = sprite_get("crouch_walk");
        break;
        case 5:
            sprite_index = sprite_get("crouch_sleep");
            if(image_index > 8){
                crouching_state_timer = 16;
            }
        break;
    }
    if(crouching_state != 1){
        image_index = floor(crouching_state_timer/8);
    } else {
        image_index = 1+floor(crouching_state_timer/8);
    }
    if(left_down or right_down){
        floor(crouching_state_timer/8);
        sprite_index = sprite_get("crouch_walk");
    }
    
    if(!down_down){
        sprite_index = sprite_get("crouch");
        image_index = 9;
    }
    if(crouching_state_timer > 64 and crouching_state == 5){
        crouching_state_timer = 16;
    }
}

if(attack == AT_FSPECIAL and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
    switch(fspecial_direction){
        case 0:
            sprite_index = sprite_get("fspecial");
            
            break;
        case 1:
            sprite_index = sprite_get("fspecialup");
            hurtboxID.sprite_index  = sprite_get("fspecialup_hurt");
            break;
        case 2:
            sprite_index = sprite_get("fspecialdown");
            hurtboxID.sprite_index  = sprite_get("fspecialdown_hurt");
    }
}

if(clinging and state == PS_WALL_JUMP){
    image_index = 0;
}