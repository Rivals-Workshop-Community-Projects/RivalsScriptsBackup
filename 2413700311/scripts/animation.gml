switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
//        image_index = floor(image_number*state_timer/(image_number*6.5));
//    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (state == PS_DASH_TURN) {
    if (turn == 0){
        sound_play(sound_get("miso_turn"));
        turn = 1;
    }
}else{
    turn = 0;
}



//------------------------------------------------------------------------------
//Intro
if (state == PS_SPAWN) {
	if(random_intro == 0){
	    if (introTimer < 25 && introTimer >= 0) {
	        sprite_index = sprite_get("intro");
	        image_index = introTimer;
	        introstart = true;
	    } else if (introTimer < 0) {
	        sprite_index = sprite_get("intro");
	        image_index = 0;
	        introstart = true;
	    } else {
	        sprite_index = sprite_get("idle");
	        introend = true;
	    }
	}
	if(random_intro == 1){
	    if (introTimer < 24 && introTimer >= 0) {
	        sprite_index = sprite_get("intro2");
	        image_index = introTimer;
	        introstart = true;
	    } else if (introTimer < 0) {
	        sprite_index = sprite_get("intro2");
	        image_index = 0;
	        introstart = true;
	    } else {
	        sprite_index = sprite_get("idle");
	        introend = true;
	    }
	}
}



//------------------------------------------------------------------------------
//待機モーション変化
if(state == PS_IDLE){
	if(rand_idle <= 55){//待機1
		if(image_index%4 == 0 and state_timer > 120){
			rand_idle = random_func(1,100,true);
			idle_anim_speed = .1;
			set_state(PS_IDLE);
		}
	}
	if(rand_idle > 55 and rand_idle <= 70 ){//待機2
		sprite_index = sprite_get("idle_2");
		idle_anim_speed = .1;
		if(state_timer == 69)//終わり
        {
        	rand_idle = 0;
    		set_state(PS_IDLE);
       }
	}
	if(rand_idle > 70 and rand_idle <= 90 ){//待機3
		sprite_index = sprite_get("idle_3");
		idle_anim_speed = .1;
		if(state_timer == 64)//終わり
        {
        	rand_idle = 0;
    		set_state(PS_IDLE);
       }
	}
	if(rand_idle > 90){//待機4
		sprite_index = sprite_get("idle_4");
		idle_anim_speed = .1;
		if(state_timer == 104)//終わり
        {
        	rand_idle = 0;
    		set_state(PS_IDLE);
       }
	}
}


//------------------------------------------------------------------------------
//頭あり
if(bodyless == false){
	if (sprite_index = sprite_get( "spinhurt" )) {
    	image_index = floor(image_number*state_timer/(image_number*2));
    }
}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//キャストオフ
if(bodyless == true){
    //IDLE----------------------------------------------------------------------
    if (state == PS_IDLE) {
    	sprite_index = sprite_get( "headless_idle" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_IDLE_AIR) {
    	sprite_index = sprite_get( "headless_idle_air" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_CROUCH) {
    	sprite_index = sprite_get( "headless_idle" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
    
    //WALK----------------------------------------------------------------------
    if (state == PS_WALK) {
	sprite_index = sprite_get( "headless_dash" );
    image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_WALK_TURN) {
	sprite_index = sprite_get( "headless_dashturn" );
    image_index = floor(image_number*state_timer/(image_number*6));
    }    
    
    //DASH----------------------------------------------------------------------
    if (state == PS_DASH_START) {
	sprite_index = sprite_get( "headless_dashstart" );
    image_index = floor(image_number*state_timer/(image_number*3));
    }
    if (state == PS_DASH) {
	sprite_index = sprite_get( "headless_dash" );
    image_index = floor(image_number*state_timer/(image_number*3));
    }
    if (state == PS_DASH_STOP) {
	sprite_index = sprite_get( "headless_dashstop" );
    image_index = floor(image_number*state_timer/(image_number*3));
    }
    if (state == PS_DASH_TURN) {
	sprite_index = sprite_get( "headless_dashturn" );
    image_index = floor(image_number*state_timer/(image_number*3));
    }
    
    //JUMP----------------------------------------------------------------------
    if (state == PS_JUMPSQUAT) {
	sprite_index = sprite_get( "headless_jumpsquat" );
    }
    if (state == PS_FIRST_JUMP) {
	sprite_index = sprite_get( "headless_jump" );
    }
    if (state == PS_DOUBLE_JUMP) {
	sprite_index = sprite_get( "headless_jumpD" );
    }
    if (state == PS_WALL_JUMP) {
	sprite_index = sprite_get( "headless_jumpD" );
    }
    
    //LAND----------------------------------------------------------------------
    if (state == PS_LAND) {
    	sprite_index = sprite_get( "headless_land" );
        image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_LANDING_LAG) {
    	sprite_index = sprite_get( "headless_land" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_PRATLAND) {
    	sprite_index = sprite_get( "headless_land" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
    if (state == PS_WAVELAND) {
    	sprite_index = sprite_get( "headless_jumpsquat" );
    	image_index = floor(image_number*state_timer/(image_number*6));
    }
	
    //PARRY----------------------------------------------------------------------
	if ((state == PS_PARRY) or (state == PS_PARRY_START)) {
		sprite_index = sprite_get( "headless_parry" );
	}
	
	if (state == PS_TECH_GROUND) {
		sprite_index = sprite_get( "headless_tech" );
	}
	if ((state == PS_TECH_BACKWARD) or (state == PS_ROLL_BACKWARD)) {
		sprite_index = sprite_get( "headless_roll_backward" );
	}
	if ((state == PS_TECH_FORWARD) or (state == PS_ROLL_FORWARD)) {
		sprite_index = sprite_get( "headless_roll_forward" );
	}
	if (state == PS_AIR_DODGE) {
		sprite_index = sprite_get( "headless_airdodge" );
	}
    
    //HURT----------------------------------------------------------------------
    if (sprite_index = sprite_get( "hurt" )) {
    	sprite_index = sprite_get( "headless_hurt" );
    }
    if (sprite_index = sprite_get( "bighurt" )) {
    	sprite_index = sprite_get( "headless_hurt" );
    }
    if (sprite_index = sprite_get( "hurtground" )) {
    	sprite_index = sprite_get( "headless_hurtground" );
    }
	if (sprite_index = sprite_get( "uphurt" )) {
    	sprite_index = sprite_get( "headless_uphurt" );
    }
	if (sprite_index = sprite_get( "downhurt" )) {
    	sprite_index = sprite_get( "headless_downhurt" );
    }
	if (sprite_index = sprite_get( "bouncehurt" )) {
    	sprite_index = sprite_get( "headless_uphurt" );
    }
	if (sprite_index = sprite_get( "spinhurt" )) {
    	sprite_index = sprite_get( "headless_spinhurt" );
    }
}




















