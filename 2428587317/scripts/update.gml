//update
if(timer0g > 0){
    
    //can_fast_fall = false;
    fast_fall = vsp;
    fall_through = true;
    //free = true;
    timer0g--;
    has_airdodge = false;
    if(timer0g < 177 && !free){//timer0g < 177 &&
        //timer0g = 0;
        y = y - 1;
        vsp = 0;
    }
    if(timer0g == 0){
        if(state == PS_HITSTUN){
            timer0g = 2;
        }
        else{
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
            if(!hitin0g){
                set_state(PS_PRATFALL);
            }
            else has_airdodge = true;
            hitin0g = false;
        }
    }
    else if(timer0g < 30){
        wh = 207 - ((timer0g mod 10)*23);
        outline_color = [ wh, wh, 200 ];
        init_shader();
    }
    if(timer0g == 30){
        sound_play(sound_get( "timesup" ));
    }
    if(y<(upblast) && state_cat != SC_HITSTUN){ //funny suicide code && !(attack == AT_USPECIAL && state == PS_ATTACK_AIR)){
        y = upblast;//(SD_Y_POS-SD_TOP_BLASTZONE);
        vsp=0;
    }
    
}
if(in0g && shield_pressed && move_cooldown[AT_NSPECIAL_2] == 0 && !(attack == AT_USPECIAL && state == PS_ATTACK_AIR) && state_cat != SC_HITSTUN && state != PS_PRATFALL){//attack != AT_USPECIAL){
    
    move_cooldown[AT_NSPECIAL_2] = 8;
    set_state(PS_ATTACK_AIR);
    destroy_hitboxes();
    attack = AT_NSPECIAL_2;
    window = 1;
}
if(state == PS_AIR_DODGE){
    move_cooldown[AT_NSPECIAL] = 5;
}
if(prat_land_time != 25 && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL)){
    prat_land_time = 25;
}
if(dstrongID != noone ){
    if(dstrongID.state == PS_HITSTUN){
        //shake = (((get_gameplay_time() mod 4) - 2) mod 2) * 2;
        dstrongID.x += (((get_gameplay_time() mod 4) - 2) mod 2) * 2;//replace with draw_x?
    }
    else{
        dstrongID = noone;
    }
}

if(mastermonkey){//makes sure this code only runs once if there is multiple Zogos
with(oPlayer){
    if(timer0g > 0 && !("can0g" in self)){
        timer0g--;
        knockback_adj = tempknockback_adj;
        if(timer0g == 118){
            hsp = 0;
            //has_airdodge = false;
        }
        if((y > lasty + 22 || y < lasty - 22 || x < lastx - 22 || x > lastx + 22) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
            if(myPhysics0g.vsp < 0 && timer0g > 85){// && state_cat != SC_HITSTUN){//timer0g > 100 && 
                myPhysics0g.vsp += .125;
            }
            vsp = myPhysics0g.vsp;
            hsp = myPhysics0g.hsp;
            
            myPhysics0g.x = x;
            myPhysics0g.y = y;
        }
        else if(/*state != PS_HITSTUN*/shortTimer <= 0 && state != PS_DEAD && state != PS_RESPAWN && state != PS_WALL_JUMP){//none hitstun block
            if(myPhysics0g.vsp < 0 && timer0g > 85){// && state_cat != SC_HITSTUN){//timer0g > 100 && 
                myPhysics0g.vsp += .125;
            }
            x = myPhysics0g.x;
            y = myPhysics0g.y;
            //myPhysics0g.vsp = myPhysics0g.vsp * .97;
            //myPhysics0g.hsp = myPhysics0g.hsp * .97;
            vsp = myPhysics0g.vsp;
            hsp = myPhysics0g.hsp;
        }
        else if(state != PS_DEAD && state != PS_RESPAWN){//hitstun block
            //if(vsp < 0 && timer0g > 85){// && state_cat != SC_HITSTUN){//timer0g > 100 && 
            //    vsp += .125;
            //}
            
            if(abs(vsp) > abs(myPhysics0g.vsp)) myPhysics0g.vsp = vsp;
            if(abs(hsp) > abs(myPhysics0g.hsp)) myPhysics0g.hsp = hsp;
            //if(myPhysics0g.vsp != 0 || myPhysics0g.hsp != 0)shortTimer--;
            if(myPhysics0g.vsp < -1 || myPhysics0g.vsp > 1 || myPhysics0g.hsp < -1 || myPhysics0g.hsp > 1)shortTimer--;
            x = myPhysics0g.x;
            y = myPhysics0g.y;
            //myPhysics0g.x = x;
            //myPhysics0g.y = y;
        }
        
        stx=get_stage_data(SD_X_POS);
        sblast=get_stage_data(SD_SIDE_BLASTZONE);
        if(!free || state == PS_DEAD || state == PS_RESPAWN || (state != PS_HITSTUN && (x < (stx - sblast)+120 || x > (((room_width - stx)+sblast) - 120) || y < get_stage_data( SD_Y_POS ) - get_stage_data( SD_TOP_BLASTZONE ) + 100))){
            timer0g = 0;
            myPhysics0g.timer = 0;
            vsp = 0;
            hsp = 0;
        }
        
        //if(state != PS_HITSTUN && (x < stx - 275 || x > (room_width - stx) + 275 )){
        //    timer0g = 0;
        //    myPhysics0g.timer = 0;
        //}

        if(timer0g == 0){
            if(state == PS_HITSTUN){
                timer0g = 2;
            }
            else{
                gravity_speed = enemygravity_speed;
                hitstun_grav = enemyhitstun_grav;
                max_fall = enemymax_fall; //maximum fall speed without fastfalling
                fast_fall = enemyfast_fall;
            //can_fast_fall = true;
                air_friction = enemyair_friction;
                max_djumps = enemymax_djumps;
                air_max_speed = enemyair_max_speed;
                air_accel = enemyair_accel;
                knockback_adj = enemyknockback_adj;
            //can_jump = true;
                //has_airdodge = true;
                outline_color = [ 0, 0, 0 ];
                init_shader();
            }
        }
        else if(timer0g < 30){
        wh = 207 - ((timer0g mod 10)*23);
        outline_color = [ wh, wh, 200 ];
        init_shader();
        }
        else{
            
            outline_color = [ 0, 0, 200 ];
            init_shader();
        }
        //if(timer0g == 30){
            //sound_play(sound_get( "timesup" ));
        //    other.playTheTimesUpSound = true;
        //}
        lasty = y;
        lastx = x;
    }
    
    if(sidebhit > 0){
        
        x += -mytorndir * sidebhit;
        sidebhit -= .4;
        if(timer0g > 0 && !("can0g" in self)){
        myPhysics0g.hsp = -mytorndir * 6;
        hsp = -mytorndir * 6;
        sidebhit = 0;
        }
    }
    
}
}

if(explosiontrackertimer > 0 && explosiontracker != noone){
    if(vsp < 0){
        
        explosiontracker.y -= 7;
        explosiontrackertimer--;
    }
    else{
        explosiontrackertimer = 0;
    }
    
}
/*if(playTheTimesUpSound){
    playTheTimesUpSound = false;
    sound_play(sound_get( "timesup" ));
}*/