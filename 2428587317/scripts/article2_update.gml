//article2_update
if(timer > 0){
    timer--;

    if(timer == 30){
            //sound_play(sound_get( "timesup" ));
        
        sound_play(sound_get( "timesup" ));
    }
}

    /*
    if(timer == 118){
        myEnemy.hsp = 0;
        hsp = 0;
        myEnemy.has_airdodge = false;
    }
    if(myEnemy.state != PS_HITSTUN && myEnemy.state != PS_DEAD && myEnemy.state != PS_RESPAWN){
        if(vso < 0 && timer > 85){// && state_cat != SC_HITSTUN){//timer0g > 100 && 
            vsp += .125;
        }
        //stucky += stuckvsp;
        //stuckx += stuckhsp;
        myEnemy.x = x;
        myEnemy.y = y;
        //vsp = 0;
        //hsp = 0;
    }
    else{
        if(myEnemy.vsp < 0 && timer > 85){// && state_cat != SC_HITSTUN){//timer0g > 100 && 
            myEnemy.vsp += .125;
        }
        vsp = myEnemy.vsp;
        hsp = myEnemy.hsp;
        x = myEnemy.x;
        y = myEnemy.y;
    }
    if(!myEnemy.free || myEnemy.state == PS_DEAD || myEnemy.state == PS_RESPAWN) timer = 0;
    if(timer == 0){
        if(myEnemy.state == PS_HITSTUN){
            timer = 2;
        }
        else{
            myEnemy.gravity_speed = myEnemy.enemygravity_speed;
            myEnemy.hitstun_grav = myEnemy.enemyhitstun_grav;
            myEnemy.max_fall = myEnemy.enemymax_fall; //maximum fall speed without fastfalling
            myEnemy.fast_fall = myEnemy.enemyfast_fall;
            //can_fast_fall = true;
            myEnemy.air_friction = myEnemy.enemyair_friction;
            myEnemy.max_djumps = myEnemy.enemymax_djumps;
            myEnemy.air_max_speed = myEnemy.enemyair_max_speed;
            myEnemy.air_accel = myEnemy.enemyair_accel;
            myEnemy.knockback_adj = myEnemy.enemyknockback_adj;
            //can_jump = true;
            myEnemy.has_airdodge = true;
            myEnemy.outline_color = [ 0, 0, 0 ];
            myEnemy.init_shader();
        }
    }
    else if(timer < 30){
    wh = 207 - ((timer0g mod 10)*23);
    myEnemy.outline_color = [ wh, wh, 200 ];
    myEnemy.init_shader();
    }
    else{
            
        myEnemy.outline_color = [ 0, 0, 200 ];
        myEnemy.init_shader();
    }*/