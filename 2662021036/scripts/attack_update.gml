//attack_update

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 48;
}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 90;
}

if (attack == AT_FAIR){
    move_cooldown[AT_FAIR] = 13;
}

if (attack == AT_JAB && window = 2){
           clear_button_buffer( PC_ATTACK_PRESSED ); 
}

if (attack == AT_JAB && window = 1 && window_timer = 1){
     sound_play( sound_get("vileplume_flail"));   
}

if (attack == AT_JAB && window = 4 && window_timer = 1){
     sound_play( sound_get("vileplume_flail"));   
}

if (attack == AT_DSTRONG && window = 2){
    
    if (left_down){
        hsp = hsp - 1.4;
    }
    
    if (right_down){
        hsp = hsp + 1.4;
    }
    
}

if (attack == AT_FSPECIAL && window = 4){
    iasa_script();
}

if (attack == AT_NSPECIAL && window = 1 && window_timer = 15){
    var spawn_x = 90;
    check_spawn_knot(x + 90 * spr_dir, y);    
}

if (attack == AT_NSPECIAL && window = 1 && window_timer = 16){
    if (grassknot_exists = 0){
            if (can_spawn = false){
                sound_play(sound_get("vileplume_grassknot_fail"))
        attack = AT_NSPECIAL_2;
        window = 1;
        window_timer = 0;
        hurtboxID.sprite_index = sprite_get("idle_hurtbox");
    }
                if (can_spawn = true){
        grassknot_exists = 1;
        grassknot_article = instance_create( x + (64 * spr_dir), spawn_y - 12, "obj_article1" );
    }
    }
    
}

if (attack == AT_NSPECIAL && window = 1 && window_timer = 15){
        if (grassknot_exists = 1){
        
        if (special_down){
        window = 3;
        window_timer = 0;
        }
    }
}

if (attack == AT_NSPECIAL && window = 1 && window_timer = 1){
    if (grassknot_exists = 1){    
        grassknot_article.state = PS_LAND;
        grassknot_article.state_timer = 0; 
    }
}


if (attack == AT_NSPECIAL && window = 2){
    if (in_grassknot_loop = 0){
        in_grassknot_loop = 1;
        grassknot_travel_SFX = sound_play( sound_get("vileplume_grassknot_travel"));
    }
    
    if (special_pressed){
         window = 3;
        window_timer = 0;
    }
    

    if (shield_pressed){
        
        if (leechseed != 0){
    
    if !collision_circle( leechseed.x, leechseed.y, leechseed.effect_radius, grassknot_article, true, false){
    

        grassknot_article.state = PS_JUMPSQUAT;
        grassknot_article.state_timer = 0;        
        window = 3;
        window_timer = 13;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }
    
    
    if collision_circle( leechseed.x, leechseed.y, leechseed.effect_radius, grassknot_article, true, false){
    
        grassknot_article.state = PS_DOUBLE_JUMP;
        grassknot_article.state_timer = 0;        
        window = 3;
        window_timer = 13;
        clear_button_buffer( PC_SHIELD_PRESSED );
    }
    
    }
    
     if (leechseed = 0){
         
         grassknot_article.state = PS_JUMPSQUAT;
        grassknot_article.state_timer = 0;        
        window = 3;
        window_timer = 13;
        clear_button_buffer( PC_SHIELD_PRESSED );
         
     }
    
    }
    
    
}

if (attack == AT_NSPECIAL && window = 3){
        in_grassknot_loop = 0;  

    if (window_timer = 1){
        move_cooldown[AT_NSPECIAL] = 36;
    }    
}

if (attack == AT_USTRONG){
    if (window = 2 || window = 3 || (window = 4 && window_timer < 11)){
        hud_offset = 72;
    }
}


if (attack == AT_FSTRONG){
        hud_offset = 78;
}

if (attack == AT_DSTRONG && window = 2){
        hud_offset = 40;
}



if (attack == AT_USTRONG && window = 2 && window_timer = 1 && hitpause = false){
    sound_play(asset_get("sfx_zetter_downb"));
}

if (attack == AT_DAIR && window = 1 && window_timer = 1 && hitpause = false){
    sound_play(asset_get("sfx_swipe_weak1"));
}

if (attack == AT_USPECIAL){
    
    if (window > 2 && free && shield_pressed){
    state = PS_PRATFALL;
    state_timer = 0;
    vsp = -6;
    old_vsp = -6;
    sound_play( asset_get("sfx_frog_fspecial_cancel"));
    hurtboxID.sprite_index = sprite_get("idle_hurtbox");
    destroy_hitboxes();    
    attack_end();
    }
    
    if (window = 1 && window_timer = 1 && !hitpause){
        sound_play(asset_get("sfx_swipe_weak1"));
    }
    
    if (window = 1 && window_timer = 9){
        if (left_down){
            spr_dir = -1;
        }

        if (right_down){
            spr_dir = 1;
        }        
    }

    
    
    
    
        uspecialtrail_x_random1 = (x - 20) + random_func( 7, 30, false );
    uspecialtrail_x_random2 = (x - 20) + random_func( 8, 30, false );
    uspecialtrail_y_random1 = (y - 20) + random_func( 9, 30, false );
    uspecialtrail_y_random2 = (y - 20) + random_func( 10, 30, false );
    
    can_move = false;
    
    if (vsp < -2 && !hitpause){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
    }
    
    if (vsp < 2 && vsp > -2 && !hitpause){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
    }    
    
    if (vsp > 2 && !hitpause){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
    }
    
    if (window = 2 || window = 3){
        can_wall_jump = true;
        if (get_gameplay_time() mod 2 == 0){
    uspecial_sludgetrail1 = spawn_hit_fx( uspecialtrail_x_random1, uspecialtrail_y_random1, fspecialtrail1 );
    uspecial_sludgetrail2 = spawn_hit_fx( uspecialtrail_x_random2, uspecialtrail_y_random2, fspecialtrail2 );    
}

if (left_down){
    if (hsp > 3){    
        hsp = hsp - 0.215;
    }
}

if (right_down){
    if (hsp < 3){
        hsp = hsp + 0.215;
    }
}



    }
    
    if (window = 3){
        vsp = vsp + 0.4;
        

        if (spr_dir = 1 && hsp > 0){
            hsp = hsp - 0.05;
        }
        if (spr_dir = -1 && hsp < 0){
            hsp = hsp + 0.05;
}

    }
    
    if (window = 3 && free = 0){
        sound_play(sound_get("vileplume_sludgewave_impact"));
        destroy_hitboxes();
        hsp = 0;
        window = 4;
        window_timer = 0;
    }
    
}

if (attack == AT_EXTRA_2){

super_armor = true;

if (window_timer = 90 && secret_v != 99){
secret_v.y = 999999;
secret_v.hitpause = 0;
secret_v.hitstop = 0;
}

}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49){
    
    can_move = false;
    
    if (window == 1 && window_timer == 2){

instance_create( room_width/2, room_height/2, "obj_article2" );


}




if (window < 6){
    with (oPlayer){
        if (player != other.player){
            hitpause = true;
            hitstop = 1;
            old_hsp = hsp;
            old_vsp = vsp;

        }
    }
}   

if (window = 1){
        if (window_timer = 2){  
     finalsunmovement = 0; 
    finalsuncounter = 0;   
        }
        if (window_timer > 2){    
    finalsunmovement = ease_quartOut(0, 160, finalsuncounter, 20)
    if (finalsuncounter < 20){
    finalsuncounter += 1;
    }  
}
}

    if (window > 5 && window < 8){
        
        shake_camera(2, 2);
    }

}


#define check_spawn_knot(_spawn_x, _spawn_y)
spawn_y = _spawn_y;
spawn_x = _spawn_x;
can_spawn = true;
var old_mask_index = mask_index
mask_index = sprite_get("grassknot_mask");
while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
{
    spawn_y += 1;
    if (spawn_y > room_height)
    {
        can_spawn = false;
        break;
    }
}
mask_index = old_mask_index;