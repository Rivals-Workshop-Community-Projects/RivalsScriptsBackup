// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_USPECIAL && window == 2){
    prat_land_time = 4;//
    if(!free){
        set_state( PS_PRATLAND);
    }
    
    /* Funny suicide code
    if(y<(SD_Y_POS-SD_TOP_BLASTZONE) && in0g){
        set_state( PS_HITSTUN );
        y = y-1000;
    }*/
    if(in0g){
        prat_land_time = 25;
    }
    can_wall_jump = true;
    if(window_timer == 1){
        explosiontracker = spawn_hit_fx( x, y+24, upex );
        explosiontrackertimer = 4;
    }
    if(window_timer mod 5 == 0){
        spawn_hit_fx( x, y, smoke );
    }
    can_shield = false;
    //if(window_timer > 30){
    //    can_wall_jump ==
    //}
}
if (attack == AT_NSPECIAL){ 
    
    if(free)can_shield = true;
    if(window_timer == 1) {
        //spawn_hit_fx( x, y, zeroG );//zeroG
        //ogdrawtrigger = true;
        //if(!has_airdodge && !in0g){
        //    sound_play(sound_get( "0goff" ));
        //    hitin0g = true;
        //    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "fake0g" ));
        //    airdodge0g = true;
        //}
        if(can0g && !in0g){
            sound_play(sound_get( "0g" ));
            off_edge = true;
            in0g = true;
            vsp = max(vsp,-8);
            can0g = false;
            timer0g = 180;
            gravity_speed = 0;
            hitstun_grav = 0;
            max_fall = 0; //maximum fall speed without fastfalling
            fast_fall = 0;
            //can_fast_fall = false;
            air_friction = 0;
            max_djumps = 0;
            air_max_speed = 0;
            air_accel = 0;
            knockback_adj = .5;
            has_airdodge = false;
            if(!free){
                vsp = -2;
            }
            outline_color = [ 0, 0, 200 ];
            init_shader();
            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "0g" ));
        }
        else if(in0g){
            sound_play(sound_get( "0goff" ));
            in0g = false;
            //can0g = true;//DELETE LATER
            timer0g = 0;
            gravity_speed = .65;
            hitstun_grav = .55;
            max_fall = 12; //maximum fall speed without fastfalling
            fast_fall = 16;
            //can_fast_fall = true;
            air_friction = .07;
            max_djumps = 1;
            air_max_speed = 4;
            air_accel = .2;
            knockback_adj = 1.10;
            outline_color = [ 0, 0, 0 ];
            init_shader();
            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "fake0g" ));
        }
        else{
            sound_play(sound_get( "0goff" ));
            hitin0g = true;
            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "fake0g" ));
        }
        create_hitbox(AT_NSPECIAL, 2, x, y);
    }
    if(window_timer == 5 && special_down) {
        vsp = 0;
        hsp = 0;
    }
    if(window_timer == 12 && !in0g){
        if(!hitin0g){
            set_state(PS_PRATFALL);
        }
        
        else has_airdodge = true;
        //else if(!airdodge0g){
        //    has_airdodge = true;
            
        //}
        hitin0g = false;
        //airdodge0g = false;
    }
}
if (attack == AT_DATTACK){
    if(window == 1) dattackID = noone;
    if(window == 4){
        if(!attack_down ){
            window = 5;
            sound_stop(dattackSound);
            window_timer = 0;
            destroy_hitboxes();
            if (has_hit_player){
                dattackID = hit_player_obj;
            }
        }
        else if ((window_timer mod 3) == 0){
            spe = 1 + random_func(1,4,false);
            offsetx = x - (18 * spr_dir) + random_func(2,16,true);
            offsety = y - 29 + random_func(3,16,true);
            anglel = 90 + (spr_dir*70);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 80/spe);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, spr_dir * lengthdir_x(spe, anglel));
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, lengthdir_y(spe, anglel));
            airp = create_hitbox(AT_NSPECIAL_2, 1, offsetx, offsety);
            airp.proj_angle = anglel;//1 = 160,-1 = 20
        }
        if(window_timer == 1){
            sound_play(dattackSound);
        }
    }
    if(window==5 && dattackID != noone){
        if(dattackID.x > x - 75 && dattackID.x < x + 75 && dattackID.state == PS_HITSTUN){ 
            dattackID.x = ((8 * spr_dir + x) + dattackID.x*3)/4;
            //dattackID.y = ((y - 65) + dattackID.y*7)/8;
            
        }
    }
}
if (attack == AT_NSPECIAL_2){ 
    if(window == 2 && window_timer == 1) {
        ang = 90;
        
        if (joy_pad_idle == false) {
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
            ang = joy_dir;
            if(jump_down){
                ang = (ang + 22.5) mod 360;
            }
            vsp += lengthdir_y(6, ang);
            hsp += lengthdir_x(6, ang);
            sprid = (((ang + 11.25) mod 360) div 22.5) + 1;
            //sprid = ((((spr_dir == 1)(ang + 11.25) + (spr_dir == -1)(540-(ang + 11.25))) mod 360) div 22.5) + 1;
            if(spr_dir == -1){
                sprid = (((540-(ang + 11.25)) mod 360) div 22.5) + 1;
            }
            hasAirdashed = true;
            //draw_debug_text(x,y+15,"sprind: " + string(sprind));
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, sprid);
            
            //set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, -spr_dir * lengthdir_x(6, ang));
            //set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -lengthdir_y(6, ang));
            //create_hitbox(AT_NSPECIAL_2, 1, x, y);
            var i;
            for (i = 0; i < 10; i += 1){
                spe = 1 + random_func_2(i,4,false);
                offsetx = x - 8 + random_func_2(i+10,16,true);
                offsety = y - 28 + random_func_2(i+20,16,true);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 80/spe);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, -spr_dir * lengthdir_x(spe, ang));
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -lengthdir_y(spe, ang));
                airp = create_hitbox(AT_NSPECIAL_2, 1, offsetx, offsety);
                //airp = create_hitbox(AT_NSPECIAL_2, 1, x, y);
                airp.proj_angle = ang;
            }
            
            //arrow.spr_dir =  point_direction(0, 0, hsp, vsp);
            //spawn_hit_fx( x, y-25, arrow );
        }
        else{
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 0);
        }
        
    }
    if(window_timer == 4)iasa_script();
}
if (attack == AT_USTRONG && window == 2 && window_timer == 1){ 
    spawn_hit_fx( x, y -76, forcewave );
}
if (attack == AT_DSTRONG){ 
    if((window == 2 && window_timer == 3) || (window == 4 && window_timer == 4) ){
        //spawn_hit_fx( x + (spr_dir * 34), y, shockwave );
       
        peak = random_func( 20, 7, true);
        var j;
        for (j = 0; j < 7; j += 1){
            if(j == peak){
                set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, swparts[6]);
            }
            else{
                tempa = random_func( j, 7, true);
                set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, swparts[tempa]);//+ (string)te));
            }
            
            xoffsetd =  x + (spr_dir * ((8 * j) + 34));
            sw = create_hitbox(AT_DSTRONG, 6, xoffsetd, y-2);
            //sw.y += 2;
            //if(sw.free)sw.destroyed = true;
            
        }
    }
    
    if(window == 5 && window_timer == 20){
        move_cooldown[AT_USTRONG] = 5;
            
    }
}
if (attack == AT_DSPECIAL){ 
    if(window == 2 && window_timer == 1){
        canTrap = false;
        banan.state = 1;
        spawn_hit_fx( banan.x, banan.y-20, 14 );
        banan.image_index = 0;
        banan.x = x - (14 * spr_dir); 
        banan.y = y - 28; 
        banan.vsp = -9;
        instance_destroy( banandetect );
        banandetect = create_hitbox(AT_DSPECIAL, 1, banan.x, banan.y-17);
        //attack_end(); 
    }
}
if (attack == AT_FSPECIAL){ 
    if(window == 1 && window_timer == 11){
        torndir = spr_dir;
    }
    if(window == 4 || (window == 3 && window_timer > 3)){
        iasa_script();
        move_cooldown[AT_FSPECIAL] = 30;
    }
}