//

if attack == AT_UTHROW {
}

if attack == AT_NSPECIAL{
    if fangled > 0 {
        fangled -- 
    }
    if fangled < 0 {
        fangled += 0.5 
    }
    if fangle < 15 && up_down {
                fangle ++
            }
            if fangle > -15 && down_down {
                fangle --
            }
            
    if window_timer == 15 {
        if special_down {
            
            window_timer --
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, fangle*-3);
            if attack_pressed {
                
                if bulletnum > 0 {
                window_timer = 1
                state_timer = 300 
                sound_play(sound_get("gun3"),false,noone,1,1)
                shake_camera(4,4)
                create_hitbox(AT_NSPECIAL,1,x + 50*spr_dir,y - 30)
                muzzlefx = spawn_hit_fx(x + 30*spr_dir,y - 36 - fangle*2, 302)
                muzzlefx.pause = 3
                bulletnum --
                fangled = 8
                } else {
                 sound_play(sound_get("gunload"),false,noone,1,1)   
                 window_timer = 1
                }
            }
        }
    }
    
    if vsp > 0 {
        oldhsp = hsp
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1)
        move_cooldown[AT_JAB] = 5
        set_attack(AT_DTILT)
        window = 1
        window_timer = 20
    }
    
}

if attack == AT_DTILT {
     if !hitpause hsp = oldhsp
     
     if hsp > 0 {
            spr_dir = -1
        } else {
            spr_dir = 1
        }
        
    if !hitpause {
        //create_hitbox(AT_DTILT,1,x,y)
    }
    if window_timer == 30 && !free {
         if floor(x)%2 == 0 {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop1"));
        } else {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop2"));
        }

        sound_play(asset_get("sfx_blow_medium3"),false,noone,.8,1)
        take_damage(player,-1,5)
        
        move_cooldown[AT_JAB] = 5
        
        set_attack(AT_FTILT)
        window = 1
        window_timer = 0
        gonnaflop  = false 
    }
}

if state_timer == 1 {

if stamina < 0 && !free && attack != AT_DTHROW && attack != AT_DTILT && attack != AT_FTILT && attack != AT_DTILT {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,.5,.9)
        set_attack(AT_UTHROW)
        window = 1
        window_timer = 0
        stamina = 150
}

if attack != AT_DTILT {
    soft_armor = 0
}

}

if attack == AT_NSPECIAL_2 {
    soft_armor = 999
    
}

if attack == AT_NAIR {
    if !free && !has_hit {
        if floor(x)%2 == 0 {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop1"));
        } else {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop2"));
        }

        sound_play(asset_get("sfx_blow_medium3"),false,noone,.8,1)
        take_damage(player,-1,5)
        
        move_cooldown[AT_JAB] = 5
        
        set_attack(AT_FTILT)
        window = 1
        window_timer = 0
        gonnaflop  = false 
    }
}    
hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);


if attack != AT_USPECIAL && attack != AT_UTHROW && attack != AT_DSPECIAL && attack != AT_NSPECIAL && !hitpause && attack != AT_FTILT && attack != AT_NSPECIAL_2 && attack != AT_TAUNT
&& attack != AT_TAUNT_2 {
    stamina -= 1.6
}

if attack == AT_TAUNT_2 {
    move_cooldown[AT_UTILT] = 20
}

if attack == AT_DTHROW {
    if window_timer < 15 {
        invincible = true 
        invince_timer = 3
    }
    
    if !free {
        
        oldhsp = hsp
        sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1)
        move_cooldown[AT_JAB] = 5
        set_attack(AT_DTILT)
        window = 1
        window_timer = 20
    }
}

if attack == AT_FTHROW {
    if window_timer < 15 && window_timer > 5{
      create_hitbox(AT_DTILT,1,x,y)
    }
    hsp = (30 - window_timer)/-5*spr_dir
}

if attack == AT_JAB {
    
    if window == 3 && attack_pressed && !hitpause{
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,.9)
        window = 4
        window_timer = 0
    }
}

if attack == AT_FSTRONG {
    
    if window == 2 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1)
        hsp = 6*spr_dir
    }
}

if attack == AT_TAUNT {
    
     if window == 1 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_burnend"),false,noone,1,0.6)
        take_damage(player,-1,-2)
    }
    
    if window == 1 && window_timer == 10 && !hitpause{
        sound_play(asset_get("sfx_burnend"),false,noone,1,.8)
        take_damage(player,-1,-3)
    }
    
    if window_timer == 6*5 && taunt_down {
        sound_play(asset_get("sfx_burnend"),false,noone,1,1 - random_func(2,20,true)/100)
        take_damage(player,-1,-2)
        window_timer = 2*5
    }
}


if attack == AT_DSPECIAL {
    
    if window == 1 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,1,1.4)
        sound_play(asset_get("sfx_ell_eject"),false,noone,1,1.4)
        
    }
    
    move_cooldown[AT_DSPECIAL] = 9999
    if window == 1 && window_timer == 4*5 && !hitpause{
        flashbang = 300
        sound_play(sound_get("flash"),false,noone,1,1.3)
        sound_play(sound_get("flash"),false,noone,1,1.3)
        sound_play(sound_get("flash"),false,noone,1,1.3)
        sound_play(sound_get("flash"),false,noone,1,1.3)
    }

    
}

if attack == AT_FSPECIAL {
    if window == 1 && !free {
        hsp = (6 - window_timer/4)*spr_dir
    }
    if window == 1 && window_timer == 1 && !hitpause{
        sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1.2)
        sound_play(asset_get("sfx_absa_singlezap2"),false,noone,1,.8)
    }
    
    if window == 2 && !hitpause && window_timer % 2 == 0 && window_timer < 15 {
        if has_hit_player && hit_player_obj.state_cat == SC_HITSTUN {
            hit_player_obj.x += floor((x + 50*spr_dir - hit_player_obj.x)/6)
            hit_player_obj.y += floor((y - hit_player_obj.y)/6)
            
        }
        create_hitbox(AT_FSPECIAL,1,x,y)
    }
}

if attack == AT_USPECIAL {

     if !hitpause && window_timer % 2 == 0 {
        create_hitbox(AT_USPECIAL,1,x,y)
    }
    
    move_cooldown[AT_USPECIAL] = 999
    if vsp > 0 {
        vsp /= 2
    }
    hsp /= 1.2
    if vsp > -6 {
    vsp -= 0.7
    }
}