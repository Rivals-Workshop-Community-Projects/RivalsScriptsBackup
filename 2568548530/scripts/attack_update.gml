// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//if(!canAttack)
//    return;

/*
// Mii brawler
if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_move = true;
    //kick loop variable
    if (window == 1 && window_timer == 1){
        heliloop = 1;
    }
    //very specific and suboptimal speed changing
    if(window == 8){
        vsp = 0;
    }
    if (window < 8){
        vsp = -4;
        if(spr_dir == dir_held){
            hsp = 7 * spr_dir;
        }else if(spr_dir != dir_held && dir_held != 0){
            hsp = -4 * spr_dir;
        }else{
            hsp = 4 * spr_dir;
        }
    }
    if(window == 9 && window_timer == 1){
        if(dir_held != 0){
            hsp = 3 * dir_held;
        }
        multihit = noone;
    }
    if(window == 6 && window_timer == 3 && heliloop == 1){
        heliloop = 2;
        window = 3;
        window_timer = 0;
        attack_end();
    }
    //keep player inside hits
    if(multihit != noone && has_hit_player){
        multihit.x = ease_linear(multihit.x, (x + 20 * spr_dir), 1, 5);
        multihit.y = ease_linear(multihit.y, (y - 5), 1, 5);
    }
}

//Sandbert
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        var acceleration = 1;
        if (!joy_pad_idle){
            hsp += lengthdir_x(acceleration, joy_dir);
            vsp += lengthdir_y(acceleration, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/


if(attack == AT_DATTACK)
{
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, !has_hit_player);
	
	if(window == 1 && window_timer == 10)
	{
		var aaa = spawn_base_dust(x-10*spr_dir, y, "land");//wavedash
		var bbb = spawn_base_dust(x+50*spr_dir, y, "land");//wavedash
        aaa.depth = depth - 100;
        bbb.depth = depth - 100;
		//landFX.depth = -10;
	}
}

if(attack == AT_DTILT && window == 1 && window_timer == 1)
	//spawn_base_dust(x+24*spr_dir, y, "dash_start");
	spawn_base_dust(x-16*spr_dir, y, "walk");

//why cant taunt in air????????????????????????????????????????
inTauntWindowAir = false;
inTauntWindowFloor = false;
if(attack == AT_TAUNT)
{
    //TODO: randomly select a taunt
    
	fall_through = true;
	move_cooldown[AT_TAUNT] = 100000;
    if(window > 1)
    {	
	    can_shield = true;
	    /*if(shield_down)
	    {
	    	attack_end();
			set_state(PS_IDLE_AIR);
	    	return;
	    }*/
	    /*if(state_timer > 3 && taunt_down && !taunt_down_last)
	    {
	    	attack_end();
			set_state(PS_IDLE_AIR);
	    	return;
	    }
	    taunt_down_last = taunt_down;*/
    }
    	
    
    var tauntFrameData = 0;
    var tauntFrameDurMul = 1;
    var tauntSoundData = 0;
    
    //window 1 is always start-up, rest is pattern with different windows dynamically
	if(window == 1 && window_timer == 1)
    {
    	tauntOffset = 0;
    	
    	if(free)
    	{
	        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	        tauntFrameData = tauntAirFrameData;
	        tauntFrameDurMul = tauntAirFrameDurMul;
	        tauntSoundData = tauntAirSoundData;
		    window = 2;
		    window_timer = 0;
	    	vsp *= 0; //0.9;
	    }
	    else
	    {
	        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt2"));
	        tauntFrameData = tauntFloorFrameData;
	        tauntFrameDurMul = tauntFloorFrameDurMul;
	        tauntSoundData = tauntFloorSoundData;
        	sound_play(asset_get("sfx_ell_nair"));
	    }
	    
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 31); //for some reason 31 windows are the max, so re-use the taunt attack
	    for(var i = 1; i < 31; i++)
	    {
	    	var winInd = i+1;
	    	set_window_value(AT_TAUNT, winInd, AG_WINDOW_TYPE, 0);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_CUSTOM_GRAVITY, 0);
	        set_window_value(AT_TAUNT, winInd, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_ANIM_FRAME_START, tauntStartFrames + i+tauntOffset);
	        set_window_value(AT_TAUNT, winInd, AG_WINDOW_LENGTH, tauntFrameData[i+tauntOffset] * 60 * tauntFrameDurMul);
	        
	        
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_HAS_SFX, tauntSoundData[i+tauntOffset] != 0);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX_FRAME, 1);
	        
            var nr = string(random_func(i+tauntOffset, 3, true)+1);
	        if(tauntSoundData[i+tauntOffset] == -1)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, asset_get("sfx_ell_nair"));
	        if(tauntSoundData[i+tauntOffset] == 1)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, sound_get("turnShort0"+nr));
	        if(tauntSoundData[i+tauntOffset] == 2)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, sound_get("turnLong0"+nr));
	    }
    }
    else
    {
    	if(get_attack_value(AT_TAUNT, AG_SPRITE) == sprite_get("taunt"))
    	{
	        tauntFrameData = tauntAirFrameData;
	        tauntFrameDurMul = tauntAirFrameDurMul;
	        tauntSoundData = tauntAirSoundData;
    	}
    	if(get_attack_value(AT_TAUNT, AG_SPRITE) == sprite_get("taunt2"))
    	{
	        tauntFrameData = tauntFloorFrameData;
	        tauntFrameDurMul = tauntFloorFrameDurMul;
	        tauntSoundData = tauntFloorSoundData;
    	}
    }
    
    if(window == 31 && window_timer >= get_window_value(AT_TAUNT, 31, AG_WINDOW_LENGTH) && array_length(tauntFrameData) > 31+tauntOffset)
	{
		tauntOffset += 30;
	    window = 2;
	    window_timer = 0;
	    
	    for(var i = 1; i < 31; i++)
	    {
	    	var winInd = i+1;
	    	
	        if(i+tauntOffset >= array_length(tauntFrameData))
	        {
	        	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, winInd-1);
	        	break;
	        }
	        
	    	set_window_value(AT_TAUNT, winInd, AG_WINDOW_TYPE, 0);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_CUSTOM_GRAVITY, 0);
	        set_window_value(AT_TAUNT, winInd, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_ANIM_FRAME_START, tauntStartFrames + i+tauntOffset);
	        set_window_value(AT_TAUNT, winInd, AG_WINDOW_LENGTH, tauntFrameData[i+tauntOffset] * 60 * tauntFrameDurMul);
	        
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_HAS_SFX, tauntSoundData[i+tauntOffset] != 0);
			set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX_FRAME, 1);
	        
            var nr = string(random_func(i+tauntOffset, 3, true)+1);
	        if(tauntSoundData[i+tauntOffset] == -1)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, asset_get("sfx_ell_nair"));
	        if(tauntSoundData[i+tauntOffset] == 1)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, sound_get("turnShort0"+nr));
	        if(tauntSoundData[i+tauntOffset] == 2)
				set_window_value(AT_TAUNT, winInd, AG_WINDOW_SFX, sound_get("turnLong0"+nr));
	    }
	}
	
    
    
    //boost into air
    if(window == 1 && state_timer == 10 && !free)
    {
        vsp = -10;
        
        //spawn_hit_fx(x, y-24, 144); 
    	//var fx = spawn_hit_fx(x, y-24, 138);  
        //fx.draw_angle = -90;
        spawn_base_dust(x, y, "jump");
    }
    if(window == 1)
    {
        vsp *= 0.8;//drag so can shoot up faster but dont go too far
    }
    /*if(window == 1 && free)
    {
        spawn_hit_fx(x, y-24, 144); 
    	var fx = spawn_hit_fx(x, y-24, 138);  
        fx.draw_angle = -90;
    }*/
    
    if(window > 1)
    {
        //print_debug(string(sin(1)));
        //print_debug(string(state_timer / get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)));
        //print_debug(string(ease_sineInOut(0,1,state_timer,119)));
        //print_debug(string(sin(state_timer * 0.125)));
        //vsp = sin(state_timer * random_func(0,100,false)) * 0.25;
        //vsp = sin(state_timer * -0.125);
        
        //vsp -= abs(sin(state_timer * 0.05)) * 0.25;
        //print_debug(string(sin(state_timer * 0.125)));
        
        can_fast_fall = false;
        
        vsp *= 0.95;
        
        vsp -= cos(state_timer * 0.125) * 0.25;
        
        if(jump_down || up_down)
            vsp -= 0.05;
        if(down_down)
            vsp += 0.01;
    }
    
    if(!right_down && !left_down)
        hsp *= 0.9;
    else
        hsp *= 0.5;
    
    //TODO: smoother speed transition from initial ground jump to float cos
    //also don't cancel vsp on start... but then doesn't flaot properly??
    
    //TODO: slightly better controls... (maybe using down / up arrows insetad of jump?)
}




if(attack == AT_FTILT && state_timer == 1)
{
    var clackSfx;
    clackSfx[0] = "ftilt1";
    clackSfx[1] = "ftilt2";
    clackSfx[2] = "ftilt3";
    clackSfx[3] = "ftilt4";
    clackSfx[4] = "ftilt5";
    clackSfx[5] = "ftilt6";
    
    //set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
    //set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get(clackSfx[random_func(0,6,true)]));
    
    sound_play(sound_get(clackSfx[random_func(0,6,true)]));
    //WHY DOES IT SOMETIMES RANDOMLY PLAY SOUND AFTERWARDS?
}

if (attack == AT_UTILT && window == 1 && window_timer == 1)
    sound_play(sound_get("turnShort01"));
if (attack == AT_UAIR && window == 1 && window_timer == 1)
    sound_play(sound_get("turnShort01"));
if (attack == AT_FAIR && window == 1 && window_timer == 1)
    sound_play(sound_get("turnShort03"));
if (attack == AT_DAIR && window == 1 && window_timer == 1)
    sound_play(sound_get("turnShort02"));
if (attack == AT_BAIR && window == 1 && window_timer == 1)
    sound_play(sound_get("turnShort02"));
    
if (attack == AT_FSTRONG && window == 2 && window_timer == 1)
    sound_play(sound_get("turnLong02"));
if (attack == AT_USTRONG && window == 2 && window_timer == 1)
    sound_play(sound_get("turnLong02"));


//inspiration: multi hit + stay inside + launcher (1996010699) (2034474077) rayman cancel/restartable (2215878328)
if (attack == AT_USPECIAL)
{
	//if(!free && window == 1 && window_timer == 2)
    //    spawn_base_dust(x, y, "jump");
	if(window == 1 && window_timer == 5)
		spawn_base_dust(x, y, "djump");
	
	//sounds
    if (window == 1) 
    {
	    if (window_timer == 1)
        	sound_play(asset_get("sfx_ell_nair"), false);
    }
    if (window == 2) 
    {
	    if (window_timer == 1) 
	        sound_play(sound_get("fspecialLoopMain"), true);//sfx_boss_final_charge //sfx_frog_fspecial_charge_loop
    
    	if(random_func(0,3,true) == 0)
    	{
			var fx = spawn_hit_fx(x, y-24, 144);
	        fx.draw_angle = random_func(i+2, 360, false);
		    fx.spr_dir = random_func(i+3, 2, true) * 2 - 1;
    	}
    	
    	/*if(random_func(1,10,true) == 0)
    	{        
	    	var fx = spawn_hit_fx(x, y-24, 138);  
			if (joy_pad_idle || joy_dir == 90)
	        	fx.draw_angle = -90;
        	else
			//	fx.draw_angle = joy_dir;
				fx.draw_angle = radtodeg(arctan2(vsp, hsp)) - 90;
    	}*/
    	
    }
    if (window == 3) 
    {
        //sound_stop(asset_get("sfx_boss_final_charge"));
        //sound_stop(sound_get("fspecialCharge01"));
        sound_stop(sound_get("fspecialLoopMain"));
    }
    
	
	if(window == 1)
		uspecialCanceled = false;
		
    can_wall_jump = true;
    
    if(window == 2)
    	uspecialAirtime++;
    	
    //player canceled early
    if(window == 2 && window_timer > 17 && (!up_down || !special_down))
    {
        window = 3;
        window_timer = 0;
        uspecialCanceled = true;
    }
    
    //launched player: go pratfall
    if(has_hit_player && hit_player_obj.last_hbox_num == 6) //if (has_hit_player && my_hitboxID.hbox_num == 3)
    	uspecialAirtime = 1000;
    
	//out of juice: go pratfal
    if(uspecialAirtime >= 55)
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);//pratfall
    else
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    
    //reached top: go pratfall
    if(window == 3 && !uspecialCanceled && up_down && special_down)
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);

	
    if(window != 3)
    {
	    // INSTEAD of doing multiple htis dynamic just went for 3 hitboxes
	    /*var possible_hits = 3;
	    var count = 0;
	    if(has_hit_player)
	    {
	        count++;
	        
	        if(count >= possible_hits)
	        {
	            //window = 3;
	            //window_timer = 0;
	            //destroy_hitboxes();
	        }
	        else
	        {
	            window = 2;
	            window_timer = 0;
	            attack_end(); 
	            //has_hit_player = false;
	        }
	    }*/
	
	
	    //what i want to do: start at vsp 0, then go to max... but interpolated so it looks nice and light
	    //for this i need to know how many frames are in window 2
	    //easeInOutQuart: t = t < 0.5 ? 8 * t * t * t * t : 1 - 8 * --t * t * t * t;
	
	    var t = window_timer / 31;
	    //t = t < 0.5 ? 8 * t * t * t * t : 1 - 8 * --t * t * t * t; //not neccessary since velocity already makes it acc smoothly?
	    t *= 12.5; //15;
	
	    vsp = -t;
	
	
	    //should only if all 3 hitboxes hit?
	    if(has_hit_player)
	    {
	        vsp *= 0.6;
	        
	        /*
	        window = 3;
	        window_timer = 0;
	        //destroy_hitboxes();
	    
	        if(!free)
	        {
	            vsp = -10;
	        }*/
	    }
	
	    //image_index = floor(window_timer*sprite_get_number(sprite_index)/get_window_value(AT_EXTRA_3, window, AG_WINDOW_LENGTH));
	    //vsp = get_window_value( attack, window, AG_WINDOW_VSPEED ) * 2;
	    //vsp = vsp * 2;
	    //vsp = -acceleration;
	
	    var acceleration = 10;
	    //actually move
	    /*if (!joy_pad_idle){
	        hsp += lengthdir_x(acceleration, joy_dir);
	        vsp += lengthdir_y(acceleration, joy_dir);
	    } else {
	        hsp *= .6;
	        vsp *= .8;
	    }*/
	
	    //limit max vel
	    /*var fly_dir = point_direction(0,0,hsp,vsp);
	    var fly_dist = point_distance(0,0,hsp,vsp);
	    var max_speed = 12;
	    if (fly_dist > max_speed){
	        hsp = lengthdir_x(max_speed, fly_dir);
	        vsp = lengthdir_y(max_speed, fly_dir);
	    }*/
	}
}


/*
if (attack == AT_DSPECIAL) //now in set_attack
{
	//can_fast_fall = false;
    
    if (free)
    {
		if (down_down && special_down)// && window < 3)
        {
			//destroy_hitboxes();
			attack_end();
			attack = AT_DSPECIAL_AIR;
		}
	} 
}
*/

//TODO: only hit ppl on ground?
//TODO: pile needs collection like nspecial?
//TODO: fix height logic so moves with platforms, but doesnt fall off? currently only falls if main piece falls...
if (attack == AT_DSPECIAL_AIR)
{   
	dspecialAirTime++;
	
    //can_fast_fall = false;
    hsp *= 0.9;
    
    if (down_down)// && special_down)
        fall_through = true;
    
    /*if(window == 1)
    {    
        can_jump = true;
        can_special = false;
        can_wall_jump = true;
    }*/
    
    //touch floor
    if (!free && window == 1) 
    {
    	canAttack = false;
        //attack == AT_DSPECIAL;
        //window = 1;
        window = 2;
        window_timer = 0;
        dspecialAirValue = clamp(remap(dspecialAirTime, 10, 30, 0, 1),0,1);
		set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 180 + dspecialAirValue * 55);     
		set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20 + dspecialAirValue * 2);
		set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8 + dspecialAirValue * 2);
        destroy_hitboxes();
        visualPieceCrumble(dspecialAirValue);
        //user_event(0);
    }
    
	if(free && window == 1 && window_timer == 1)
		spawn_base_dust(x, y-16, "doublejump");//jump//dash_start
		
	if(free && random_func(0,3,true) == 0)
	{
		var fx = spawn_hit_fx(x, y-24, 144);
        fx.draw_angle = random_func(i+2, 360, false);
	    fx.spr_dir = random_func(i+3, 2, true) * 2 - 1;
	}
}

if (attack == AT_DSPECIAL)
{
    //if(window == 2 && window_timer = 1)
    if(window == 1 && window_timer = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
    {
    	canAttack = false;
        visualPieceCrumble(0);
        dspecialAirValue = 0;
        //user_event(0);
    }
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR)
{
	can_fast_fall = false;
	
	//if(!free && free_last)
	if(window == 2 && window_timer == 1)//!free)
	{
    	//spawn_hit_fx(14 13   115 143   138 144    194 156 196   301 302 303 304 305
    	
    	if(attack != AT_DSPECIAL_AIR)
    		dspecialAirValue = 0;
    	
    	var fx = spawn_hit_fx(x + (random_func(i+0, 16, false) - 8), y - 16 + (random_func(i+1, 16, false) - 8), 144);
        fx.draw_angle = random_func(i+2, 360, false);
	    fx.spr_dir = random_func(i+3, 2, true) * 2 - 1;
	    fx.depth = depth - 1; // infront of player... why not working?
	    
        var dustLand = spawn_base_dust(x, y, "land");
        //dustLand.depth = 100;
        //-> depth not working bcz of article logic?
	    
    	//var fxL = spawn_hit_fx(x + (random_func(i+0, 16, false) - 8), y - 16 + (random_func(i+1, 16, false) - 8), 303);
    	//var fxR = spawn_hit_fx(x + (random_func(i+2, 16, false) - 8), y - 16 + (random_func(i+3, 16, false) - 8), 303);
    	var fxR = spawn_hit_fx(x - 10 + dspecialAirValue * 32, y - 16, 303);
    	var fxL = spawn_hit_fx(x + 10 - dspecialAirValue * 32, y - 16, 303);
        //fx.draw_angle = random_func(i+2, 360, false);
	    fxR.spr_dir = 1;
	    fxL.spr_dir = -1;
	    //fxL.depth = depth - 1; // infront of player... why not working?
	}
}

/*if(attack == AT_DSTRONG)
{
	if(window == 3 && window_timer == 1 && hit_player)
	{
    	var fxL = spawn_hit_fx(x + (random_func(i+0, 16, false) - 8), y - 8 + (random_func(i+1, 8, false) - 4), 303);
    	var fxR = spawn_hit_fx(x + (random_func(i+2, 16, false) - 8), y - 8 + (random_func(i+3, 8, false) - 4), 303);
        //fx.draw_angle = random_func(i+2, 360, false);
	    fxL.spr_dir = 1;
	    fxR.spr_dir = -1;
	}
}*/

if (attack == AT_DAIR && state_timer == 1)
	dairHit = false;
if (attack == AT_DAIR && !dairHit && !hitpause)
{   
    if(has_hit_player)
    {        
    	dairHit = true;
    	free = true;
    	vsp = -10;
    }
    
    //if (!free && window == 2)
    //if (!free && window != 2)
    
    else if (!free && state_timer < 18)
    {
    	dairHit = true;
        free = true;
        vsp = -10;
    
		//sound_play(sound_get("land01"), false, noone, 1, 1);//dash
		sound_play(sound_get("dairTouch"), false, noone, 1, 1);//dash
    }
}

//end is shit... try another piece explosion, doing damage infront? or just do sticker projectiles
if (attack == AT_FSPECIAL)
{   
    //sounds
    if (window == 1) 
    {
	    if (window_timer == 1)
    		sound_play(asset_get("sfx_ell_fspecial_charge"), false, noone, 0.75, 1);
	    if (window_timer == 2) 
	        sound_play(asset_get("sfx_boss_final_charge"), true, noone, 0.5, 1.5); //sfx_frog_fspecial_charge_loop
	        
        //spring charge sound is shit and/or doesnt play
	    if (window_timer == 3) 
	        sound_play(sound_get("fspecialCharge04"), true, noone, 0.75, 0.9);
	    /*if (window_timer == 1)
	    {
	        sound_play(sound_get("fspecialCharge04"), true);
    		sound_play(asset_get("sfx_ell_fspecial_charge"), false);
    	}*/
    }
    if (window == 3) 
    {
	    if (window_timer == 2) 
        	sound_play(asset_get("sfx_spin"), false);//sfx_ell_nair
	    if (window_timer == 2) 
        	sound_play(sound_get("fspecialRelease"));
    	
        sound_stop(asset_get("sfx_boss_final_charge"));
        sound_stop(sound_get("fspecialCharge04"));
    }
    if (window == 4) 
    {
    	//if(window_timer == 1)
	    //	sound_play(sound_get("fspecialLoopMain"), true);;
    	if(window_timer == 1)
	    	sound_play(sound_get("fspecialLoopMain"), true, noone, 0.333);;
    	if(window_timer == 5)
	    	sound_play(sound_get("fspecialLoopMain"), true, noone, 0.333);
    	if(window_timer == 9)
	    	sound_play(sound_get("fspecialLoopMain"), true, noone, 0.333);
    }
    
    if (window == 3 || window == 4 || window == 5) //fix soemtiems not stopping
    {
        sound_stop(asset_get("sfx_boss_final_charge"));
        sound_stop(sound_get("fspecialCharge01"));
    }
    if (window == 5 && window_timer == 1)
    {
        sound_play(sound_get("fspecialEnd"), false);
    	sound_stop(asset_get("fspecialLoopMain"));
    }
    
    if(window == 1)
    	soft_armor = 6;//or use AG_WINDOW_INVINCIBILITY = 2
    if(window == 2 || window == 3)
    	soft_armor = 5;
    if(window == 4)
    	soft_armor = 4;
    	
    
    //if(window != 1 && jump_down) //instead in update
    //    sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));

	if(window == 3 && window_timer == 1)
		spawn_base_dust(x+24*spr_dir, y, "dash_start"); //does this really do the error??????
	
	if(window == 3 || window == 4)
	{        
		var centX = x;
		var centY = y - 32;
		centX += random_func(0, 10, false) - 5;
		centY += random_func(1, 10, false) - 5;
		if(random_func(2, 1, false) < 0.75)
			spawn_hit_fx(centX - spr_dir * 20, centY, 138); 
		if(random_func(3, 1, false) < 0.25)
        	spawn_hit_fx(centX, centY, 144); 
        //	spawn_hit_fx(centX, centY, 194); 
	}

    //if(window != 4)
        vsp *= 0.9;
        
    can_fast_fall = true;
    off_edge = true;
    can_wall_jump = true;
	if(window == 4 && has_hit_player)
		can_attack = true;

    var mintime = 0;
    var maxtime = 120; //Defined through 120 window 1 length
    
	if(window == 1)
	{
		fspecialHitPlayer = false;
		fspecialHitMinor = false;
		fspecialTimer = 0;
	}
    
    if(has_hit_player && !fspecialHitPlayer && window != 5)
    {
    	fspecialTimer++;
    	//attack_end(); //for multi hit
    	//if(fspecialTimer % round(remap(fspecialCharge, mintime, maxtime, 4, 8)) == 0)
    	if(fspecialTimer % 4 == 0 && abs(hsp) >= 8)
    	{
        	//set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, hsp);
        	//set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, hsp*remap(fspecialCharge, mintime, maxtime, 2, 3));
			fspecialHitbox = create_hitbox(AT_FSPECIAL, 2, x, y);
    	}
    	//print(hsp);
    }
    
    if(has_hit_player)
    {
	    if("my_hitboxID" in self)
	    {
		    with (my_hitboxID)
		    {
		    	//print(hbox_num);
		    	if(hbox_num == 1)//4 get_num_hitboxes(attack)
		    	{
		    		//print(string(other.attack) + " " + string(other.window) + " " + string(other.window_timer));
		    		other.fspecialHitPlayer = true;
		    		//print("HIT AT " + string(hbox_num));
		    		//print("H");
		    	}
		    	//else
		    	else if(other.window > 3 && other.window_timer > 4)
		    	{
		    		//print("D");
		    		other.fspecialHitMinor = true;
		    	}
		    	//else print("N");
		    	//else hit_player.hsp = 0;
		    }
	    }
    }
    //print(window);
    //print(fspecialHitPlayer);
    
    //go straight if hit enemy (better chance to keep inside)
    if (window > 3 && window != 5 && fspecialHitMinor)
    {
    	vsp = 0;
    	//print(instance_exists(fspecialHitbox) && !fspecialHitbox.has_hit);
    }
    
    //make sure big hitbox hits at the end if got enemy into the move
    /*if (window == 4 && window_timer > 4 && fspecialHitMinor && instance_exists(fspecialHitbox) && !fspecialHitbox.has_hit)
    {			
    	//fspecialHitbox = create_hitbox(AT_FSPECIAL, 1, x, y);
    	fspecialHitbox = create_hitbox(AT_FSPECIAL, 1, fspecialHitbox.player_id.x, fspecialHitbox.player_id.y);
        window = 5;
        window_timer = 0;
    }*/
    
        
    if (window == 2 && window_timer == 1)
    {
        hitFspecial = false;
        fspecialCharge = 0;
        fspecialAction = 0;
    }
    else if(window == 2 && !special_down && fspecialCharge >= mintime)
    {
        window = 3;
        window_timer = 0;
        
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, remap(fspecialCharge, mintime, maxtime, 90, 60));
        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, remap(fspecialCharge, mintime, maxtime, 15, 20));
    }
    
    
    if(window == 2)
    {
        fspecialCharge++;
        set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, remap(fspecialCharge, mintime, maxtime, 5, 10));
        set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, remap(fspecialCharge, mintime, maxtime, 6, 9));
        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, remap(fspecialCharge, mintime, maxtime, 0.3, 0.6));
        //TODO: scale HG_BASE_HITPAUSE and AG_WINDOW_HSPEED
        
        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, remap(fspecialCharge, mintime, maxtime, 8, 12));// 6, 8));// 9, 18));

        if(fspecialCharge < maxtime * 0.333)
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    	else if(fspecialCharge < maxtime * 0.666)
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    	else
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    }
     
    
    if(window == 4) //not sure if also in win 4
    {
        if(!fspecialHitPlayer) //&& fspecialCharge > mintime)
		{       		
			can_jump = true;

	       	if(jump_down)
	       	{
        		fspecialLastHsp = hsp;
        		free = true;
        		//print("saved: " + string(fspecialLastHsp));
	       	}
		}
    }
    
    if(window == 3 || window == 4)
    {
        //if(!has_hit_player)
        if(!fspecialHitMinor)
        	hsp = spr_dir * remap(fspecialCharge, mintime, maxtime, 9, 18);
        //else hsp = hsp_last * 0.95;
        //else hsp = hsp_last * remap(fspecialCharge, mintime, maxtime, 0.95, 0.9);
        else 
        //else if(window_timer > 16)
        	hsp = hsp_last - sign(hsp_last) * remap(fspecialCharge, mintime, maxtime, 0.25, 0.5); //0.1;
    }
    
    //init boost
    //if (window == 3 && window_timer == 1)
    //    hsp = spr_dir * 10;
       
    
    
    if(window > 2 && has_hit_player && !hitFspecial && abs(hsp) < 8)
    {
        hitFspecial = true;
        window = 5;
        window_timer = 0;
        
        // TODO: more dmg & knockback the more charge?
    }
    
    if(window == 4)
    {
        fspecialAction++;
        if(fspecialAction >= remap(fspecialCharge, mintime, maxtime, 15, 50))// || abs(hsp) <= 3)
        {
            window = 5;
            window_timer = 0;
        }
    }
    
    if(window == 5)
    {
        if(window_timer == 1)
            destroy_hitboxes();
            
        if(has_hit_player)// && fspecialHitPlayer)// && hbox_num == 2)//my_hitboxID.attack == AT_whatever && my_hitboxID.hbox_num == whatever
            hsp = spr_dir * 2;
        else
            hsp = spr_dir * 2.5;
    }
}



if (attack == AT_NSPECIAL)
{    
    canAttack = false;
    if (window == 1 && window_timer == 1)
    {
    	didNspecial = true;
    	shotArticles = false;
    }
    
    //super_armor = true;
    soft_armor = 12;
    
    //TODO: remove armor and quit attack on hit?
    
    //TODO: or receive 0 knockback but get dmg

    //knockback_adj = 0;
    //knockback_scaling = -1;
    
    if(window == 1)
        vsp *= 0.8;
     
    //print_debug("g");
}


/*if (attack == AT_JAB && !fxPlaying && (has_hit_player || has_hit))
{
    fxPlaying = true;

    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, hitfx1);
}*/


//----- FINAL SMASH ----- 

if(attack == 49)
{
    super_armor = true;
	canAttack = false;
	fall_through = true;
    
	//boost into air
    if(window == 1 && state_timer == 5 && !free)
    {
        //vsp = -10;
        //print("D");
        spawn_base_dust(x, y, "jump");
    }
    if(window == 2)
    {
        vsp *= 0.8;//drag so can shoot up faster but dont go too far
        finalTimer = 0;
        finalStartFrame = 0;
        finalDone = false;
    }
    
    if(window > 2)
    {
        can_fast_fall = false;
        
        vsp *= 0.95;
        
        vsp -= cos(state_timer * 0.125) * 0.25;
        
        if(jump_down || up_down)
            vsp -= 0.1;
        if(down_down)
            vsp += 0.1;
            
        finalTimer++;
    }
    
    if(!right_down && !left_down)
        hsp *= 0.9;
    else
        hsp *= 0.95;
        
	if(window == 3 || (window == 4 && finalTimer < 60*2.6))
	{
		if(window_timer == 1)
		{
			spawn_base_dust(x + hsp*4, y + vsp*4, "land");
			spawn_base_dust(x + hsp*4, y-32 + vsp*4, "djump");
        	sound_play(asset_get("sfx_ell_nair"));
		}
	}
	
    if(window == 3)
    {
	    if(finalTimer > 60*3)
	    {
	    	finalTimer = 0;
	    	window = 4;
	    	window_timer = 0;
	    	set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9);
	    }
	    else 
	    {
	    	if(window_timer == 1)// && finalTimer > 60*2)
	        {
				set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9+finalStartFrame);
					
	        	if(finalStartFrame < 105)
	        	{
					var fx = spawn_hit_fx(x+random_func(1, 64, false)-32, 
										y-24+random_func(2, 64, false)-32, 144);
			        fx.draw_angle = random_func(3, 360, false);
				    fx.spr_dir = random_func(4, 2, true) * 2 - 1;
					
	        		finalStartFrame += 12;
	        
	        		if(finalStartFrame != 12)//pieces flying up
	        		{
    					sound_play(sound_get("turnShort03"));
    					for (var i = 0; i < 3; i++) 
    					{
					        var tp = instance_create(floor(x + 8), floor(y - 32), "obj_article1");
					        tp.isVisual = true;
					        tp.doFade = true;
					        tp.fakeFloorHeight = 0;
					        tp.can_be_grounded = false;
					        tp.ignores_walls = true;
					        tp.animOffset = random_func(6+i+0, tp.image_number, true);
					        tp.animSpd = random_func(6+i+1, 3, false) + 1.5;
					        tp.fadeTimeTotal = 64;//random_func(6+i+2, 15, true) + 15;
					
					        tp.hsp = (random_func(6+i+3, 1, false) * 2 - 1) * 8;
					        tp.vsp = -random_func(6+i+4, 16, false) -16;
						    tp.drawInfront = random_func(6+i+5, 2, true);
					    	tp.spr_dir = random_func(6+i+6, 2, true) * 2 - 1;
					    	
					    	//var fx2 = spawn_hit_fx(tp.x,tp.y,303);
					        //fx2.draw_angle = 90-radtodeg(arctan2(tp.vsp, tp.hsp));
					        //fx2.draw_angle = 180; //why does no angle work??? tried image_angle spr_angle
							//-> somehow do same thing as dust for hit fx? how to found the internal numbers? nvm dir doesnt work there either
							spawn_base_dust(tp.x,tp.y-16, "jump");//,45);
							
					    	tp.hitBox = 3;
					    	
					    	var ran = random_func(6+i+7, 6, true)
					    	if(ran == 0)
					        	tp.spr = sprite_get("pileAirUpwhite");
					    	if(ran == 1)
					        	tp.spr = sprite_get("pileAirUpred");
					    	if(ran == 2)
					        	tp.spr = sprite_get("pileAirUpgreen");
					    	if(ran == 3)
					        	tp.spr = sprite_get("pileAirUpblue");
					    	if(ran == 4)
					        	tp.spr = sprite_get("pileAirUpyellow");
					    	if(ran == 5)
					        	tp.spr = sprite_get("pileAirUporange");
    					}
	        		}
	        	}
	        }
	    	var len = clamp(50-(finalTimer*0.5), 6, 1000);
			set_window_value(49, 3, AG_WINDOW_LENGTH, len);
	    }
    }
    else if(window == 4) 
    {
    	//var len = clamp(6+(finalTimer*0.25),0,100);//50);
		//set_window_value(49, 4, AG_WINDOW_LENGTH, len);
		
		if(finalTimer < 60*2)
			set_window_value(49, 4, AG_WINDOW_LENGTH, 6);
		else
		{
	    	var len = clamp(6+((finalTimer-60*2)*0.5),6,100);//50);
			set_window_value(49, 4, AG_WINDOW_LENGTH, len);
		}
		
	    //TODO: make restore pieces coming up
	    if(finalTimer > 60*4)
	    {
	    	state = PS_IDLE;
	        attack_end();
	    	fs_using_final_smash = false;
	    }
	    
	    if(finalTimer < 60*3 && finalTimer % 15 == 0) //pieces falling down
		{
			sound_play(asset_get("sfx_abyss_bomb_spawn"));//sfx_abyss_rumble sfx_bird_downspecial sfx_jumpairsfx_absa_uair
			for (var i = 0; i < 8; i++) 
			{
	    		//var tp = instance_create(view_get_xview()+128 + random_func(6+0,view_get_wview(),true)-128, 
	    		//					view_get_yview() - 64, "obj_article1");
	    		var tp = instance_create(floor(x + random_func(6+0,512,true)-256), 
	    							floor(view_get_yview() - 64), "obj_article1");
		        tp.isVisual = true;
		        tp.doFade = true;
		        tp.fakeFloorHeight = 0;
		        tp.can_be_grounded = false;
		        tp.ignores_walls = true;
		        tp.animOffset = random_func(6+i+1, tp.image_number, true);
		        tp.animSpd = random_func(6+i+2, 3, false) + 1.5;
		        tp.fadeTimeTotal = 64;//random_func(6+i+2, 15, true) + 15;
		
		        tp.hsp = (random_func(6+i+3, 1, false) * 2 - 1) * 3;
		        tp.vsp = random_func(6+i+4, 8, false) + 16;
			    tp.drawInfront = random_func(6+i+5, 2, true);
		    	tp.spr_dir = random_func(6+i+6, 2, true) * 2 - 1;
		    	
		    	tp.hitBox = 4;
				tp.ignores_walls = true;
		    	
		    	var ran = random_func(6+i+7, 6, true)
		    	if(ran == 0)
		        	tp.spr = sprite_get("pileAirUpwhite");
		    	if(ran == 1)
		        	tp.spr = sprite_get("pileAirUpred");
		    	if(ran == 2)
		        	tp.spr = sprite_get("pileAirUpgreen");
		    	if(ran == 3)
		        	tp.spr = sprite_get("pileAirUpblue");
		    	if(ran == 4)
		        	tp.spr = sprite_get("pileAirUpyellow");
		    	if(ran == 5)
		        	tp.spr = sprite_get("pileAirUporange");
			}
		}	 

	    if(finalTimer > 60*3 && !finalDone)
	    {
	    	finalDone = true;
	    	for(var i = 0; i < 20; i++)
		    {
			    var newX = x + piecesX[i] * spr_dir;
			    var newY = y - piecesY[i] - 1;
			    
			    var vp = instance_create(floor(view_get_xview()+128 + random_func(6+i+0,view_get_wview(),true)-128), 
	    								floor(view_get_hview() + random_func(6+i+1,128,true) + 256), "obj_article1");
			    vp.animOffset = 0;//random_func(rando(0*newX*newY), sprite_get_number(sprite_get("pileAirUp")),true);
			    vp.animSpd = random_func(rando(1*newX*newY), 3, false) + 1.5;
		
			    if(i == 0)
			    {
		            pieceArticle = vp;
		            
		            pieceArticle.colorL = left;
		            pieceArticle.colorF = front;
		            pieceArticle.colorT = top;
			    }
			    
			    vp.fakeFloorHeight = 1000000;
			    	
			    vp.endOffsetX = piecesX[i] * spr_dir;
			    vp.endOffsetY = -piecesY[i] - 1;
			
			    vp.spr_dir = random_func(rando(4*newX*newY), 2, true) * 2 - 1;
			    vp.drawInfront = piecesInFront[i];//random_func(rando(3), 2, true);
			    
			    var articSprite;
			    if(piecesInFront[i])
			    	articSprite = random_func(rando(5*newX*newY), 2, true) ? "pileAirUpwhite" : "pileAirUpred";
			    else
			    	articSprite = random_func(rando(6*newX*newY), 2, true) ? "pileAirUpyellow" : "pileAirUporange";
			    	
			
		        vp.spr = sprite_get(articSprite);
			    
			    vp.hsp = piecesX[i] * 0.09 * spr_dir;
			    vp.hsp += 1.25 * sign(vp.hsp);
			    vp.vsp = -piecesY[i] * 0.025;
			
			    //vp.parentArticle = pieceArticle;
			    vp.isVisual = true;
			    if(i==0)vp.mainPiece = true;
		    	vp.reattachDelay = 60 * 0.7;
		    	vp.collectAnimDurTotal = 32;
		    
				vp.ignores_walls = true;
		    }
	    }
    }
    
    //TODO: spinn faster, then slow down after swap
}

free_last = free;
hsp_last = hsp;

#define visualPieceCrumble(extraVel)
{
    for(var i = 0; i < 20; i++)
    {
	    var newX = x + piecesX[i] * spr_dir;
	    var newY = y - piecesY[i] - 1;
	    
	    var vp = instance_create(newX, newY, "obj_article1");
	    vp.animOffset = 0;//random_func(rando(0*newX*newY), sprite_get_number(sprite_get("pileAirUp")),true);
	    vp.animSpd = random_func(rando(1*newX*newY), 3, false) + 1.5;

	    if(i == 0)
	    {
            pieceArticle = vp;
            
            pieceArticle.colorL = left;
            pieceArticle.colorF = front;
            pieceArticle.colorT = top;
	    }
	    
	    init_shader_custom(false);
	    
	    vp.fakeFloorHeight = 1;//random_func(rando(2*newX*newY), 30, true);
	    //if(piecesY[i] != 0 && random_func(rando(2*newX*newY), 2, true))
	    //	vp.fakeFloorHeight = (random_func(rando(3*newX*newY), 2, true)+1) * 20;//random_func(rando(3*newX*newY), 20, false)+20;
	    //if a top one has a high floor, middle one needs too...
	    if(piecesY[i] != 0 && piecesX[i] < 20 && piecesX[i] > -20 && random_func(rando(2*newX*newY), 4, true) != 0)
	    	vp.fakeFloorHeight = random_func(rando(3*newX*newY), 20, false)+10;
	    
	    vp.endOffsetX = piecesX[i] * spr_dir;
	    vp.endOffsetY = -piecesY[i] - 1;
	
	    vp.spr_dir = random_func(rando(4*newX*newY), 2, true) * 2 - 1;
	    vp.drawInfront = piecesInFront[i];//random_func(rando(3), 2, true);
	    
	    //var rndColor = random_func(rando(5*newX*newY), 100, false);
	    //var neededCol = piecesInFront[i] ? front : back;
	    /*var randCol;
	    if(piecesInFront[i])
	    	randCol = random_func(rando(5*newX*newY), 2, true) ? front : left;
	    else
	    	randCol = random_func(rando(6*newX*newY), 2, true) ? back : right;*/

    	//var articSprite = "pileAirUp"+randCol;
		//dont need random color bcz articles are recolored?!
	    var articSprite;
	    if(piecesInFront[i])
	    	articSprite = random_func(rando(5*newX*newY), 2, true) ? "pileAirUpwhite" : "pileAirUpred";
	    else
	    	articSprite = random_func(rando(6*newX*newY), 2, true) ? "pileAirUpyellow" : "pileAirUporange";
	    	
	
        vp.spr = sprite_get(articSprite);
	    
	    vp.hsp = piecesX[i] * 0.09 * spr_dir;
	    vp.hsp += extraVel * 1.25 * sign(vp.hsp);
	    vp.vsp = -piecesY[i] * 0.025;
	
	    //vp.parentArticle = pieceArticle;
	    vp.isVisual = true;
	    if(i==0)vp.mainPiece = true;
    	vp.reattachDelay = 60 * 0.7;
    
	    //ds_list_add(pieceArticle.visualPieces, vp);
    }
}


#define remap(value, low1, high1, low2, high2)
return low2 + (value - low1) * (high2 - low2) / (high1 - low1);

#define rando(ind)
//make a bit out of player input and return this * ind?
var input =
attack_down+
special_down+
jump_down+
shield_down+
strong_down+
taunt_down+

attack_pressed+
special_pressed+
jump_pressed+
shield_pressed+
up_strong_pressed+
down_strong_pressed+
left_strong_pressed+
right_strong_pressed+
taunt_pressed+

up_down+
down_down+
left_down+
right_down+

up_pressed+
down_pressed+
left_pressed+
right_pressed+

joy_dir+
x+
y+
spr_dir;
//print_debug(down_down + attack_down);
//print_debug(input);

return input * ind;

//https://github.com/SupersonicNK/roa-workshop-templates/blob/master/snippets/spawn_base_dust.md
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define init_shader_custom(doShader)
{
	if(canAttack)//ensures that articles on floor stay the same in skinny... but then hud doesnt change
	{
		frontArtic = front;
		backArtic = back;
		leftArtic = left;
		rightArtic = right;
		topArtic = top;
		botArtic = bot;
	}
	if(doShader)
		init_shader();
}