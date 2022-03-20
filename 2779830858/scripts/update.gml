//update 
move_cooldown[AT_NSPECIAL_AIR] = move_cooldown[AT_NSPECIAL];


//rewind code
if (!instance_exists(rewind_clone) && move_cooldown[AT_DSPECIAL] == 0 && state != PS_RESPAWN){
rewind_clone = instance_create( x, y, "obj_article1" );
rewind_clone.cur_spr = sprite_index;
}



if (instance_exists(rewind_clone)){
    

    if (rewind_delay > 0){
    rewind_delay--;
        
    }
    else if (rewind_clone.primed){

            parry_cooldown = 1;
            has_airdodge = false;

        if (rewind_travel_time == 0){
            sound_play(sound_get("rewind_woosh"));
            sound_play(sound_get("rewind"));
            rewind_startx = x;
            rewind_starty = y;

        }

        hsp = 0;
        vsp = 0;

        invincible = true;
        invince_time = 1;

        if (!rewind_cancel || ball_check){
            x = ease_quartIn( rewind_startx, rewind_clone.x, rewind_travel_time , rewind_travel_max );
            y = ease_quartIn( rewind_starty, rewind_clone.y, rewind_travel_time , rewind_travel_max );

            // x = lerp(rewind_startx,rewind_clone.x,rewind_travel_time/rewind_travel_max);
            // y = lerp(rewind_starty,rewind_clone.y,rewind_travel_time/rewind_travel_max);

            spr_dir = rewind_clone.spr_dir;

            x = round(x);
            y = round(y);
        }
        else{
            rewind_clone.x = ease_quartIn( rewind_clone.x, rewind_startx, rewind_travel_time , rewind_travel_max );
            rewind_clone.y = ease_quartIn( rewind_clone.y, rewind_starty, rewind_travel_time , rewind_travel_max );

            // x = lerp(rewind_startx,rewind_clone.x,rewind_travel_time/rewind_travel_max);
            // y = lerp(rewind_starty,rewind_clone.y,rewind_travel_time/rewind_travel_max);

            rewind_clone.spr_dir = spr_dir;

            rewind_clone.x = round(rewind_clone.x);
            rewind_clone.y = round(rewind_clone.y);
        }


        rewind_travel_time++;
        
        set_state(PS_IDLE_AIR);

        if (rewind_travel_time == rewind_travel_max){

            sound_play(sound_get("rewind_boom"));



            x = rewind_clone.x;
            y = rewind_clone.y;

            create_hitbox( AT_DSPECIAL, 1, x - 5 * spr_dir, y - 38 );

            var rewind_boom = spawn_hit_fx( x, y, rewind_vfx );
            rewind_boom.image_xscale = spr_dir;

            start_draw = true;

            if (!free)
            set_state(PS_IDLE);
            else
            set_state(PS_IDLE_AIR);
        
            spr_dir = rewind_clone.spr_dir;
            rewind_clone.primed = false;
            rewind_cancel = false;
            ball_check = false;
            rewind_travel_time = 0;
            rewind_travel_max = rewind_travel_default; //travel back duration
            rewind_lowgrav_time = 12; //low gravity after rewind
            rewind_defensive_cd = rewind_defensive_cd_def;
            instance_destroy(rewind_clone);
        }
    }
    
    if (state == PS_RESPAWN){
        rewind_travel_time = 0;
        instance_destroy(rewind_clone);
    }

}


// print_debug(string(ball_check));

if (rewind_lowgrav_time > 0){

    if (!free)
    y -= 5;

    if (free)
    vsp *= 0;
    hsp *= 0.85;

    rewind_lowgrav_time--;
}



//reset cooldowns
if (!free || state == PS_WALL_JUMP || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
    uspec_used = false;

    move_cooldown[AT_FSPECIAL] = 0;
    fspec_used = false;
}

if (uspec_used)
    move_cooldown[AT_USPECIAL] = 2;

if (fspec_used)
    move_cooldown[AT_FSPECIAL] = 2;






//hitbox update for physical
with(pHitBox){

    if (orig_player == other.player){

            if !("ball_angle" in self){
            ball_angle = 0;
            ball_speed = 0;
            ball_last_hit = false;
            }

      
            if (attack != AT_NSPECIAL){
                with (player_id){
                        other.ball_angle = get_hitbox_value( other.attack, other.hbox_num, HG_BALL_ANGLE );
                        other.ball_speed = get_hitbox_value( other.attack, other.hbox_num, HG_BALL_SPEED );
                }
            }
    }


}
 
//time slow
with (oPlayer){



    if (other.player == slow_owner){

        if (state_cat == SC_HITSTUN){

        

            if (time_slowed)    
            {
                // dont_tumble = true;
                // can_tech = false;
                // can_wall_tech = false;

                if (slow_timer == slow_timer_full && !hitpause){

                    if (other.player = player)
                        y -= 5;

                    if (state == PS_HITSTUN_LAND){
                        y -= 10;
                        set_state(PS_HITSTUN);
                        vsp = -10;
                        hsp = 0;
                    }

                    slow_timer_full = slow_timer;
                    hitstun_full += slow_timer;
                    hitstun = hitstun_full;
                    

                }

                if (slow_hit && !hitpause){
                    normal_hsp = hsp;
                    normal_vsp = vsp;
                    slow_hit = false;
                }

                if (slow_timer > 0 && !hitpause){

                    //print_debug(string(slow_timer) + "/" + string(slow_timer_full));

                    slow_timer--;

                    if (slow_timer == 0){
                    hsp = normal_hsp;
                    vsp = normal_vsp;
                    }
                    else{
                    hsp = normal_hsp * 0.1;
                    vsp = normal_vsp * 0.1;
                    }

                }
            }

        }

            else{
                time_slowed = false;
                rc_draw = false;
                slow_hit = false;
            }
        
            if (time_slowed || time_draw_timer > 0){
                if (!rc_draw)
                time_draw_timer++;
                else if (rc_draw && !hitpause)
                time_draw_timer++;
            }

    }

}

// if get_player_color(player) == 0


if (object_index == oTestPlayer)
    sound_stop(ball_humm);