//crash prevention line
if (temperature > temperature_max){
    temperature = temperature_max;
}else if (temperature < 0){
    temperature = 0;
}

/* over-time temperature drain
if (temperature <= 0){
    temperature_drain_timer = 0;
} else if (temperature > 0){
    temperature_drain_timer += 1;
}

if (temperature_drain_timer >= temperature_drain){
    temperature -= 1;
    temperature_drain_timer = 0;
}
*/

/*
if (nspecial_looped >= 3){
    nspecial2_flag = 1;
}


if (nspecial2_flag == 1){ //passive embers here
    
}
*/

dspecial_active = instance_exists(dspecial_flame);
fspecial_can = (move_cooldown[AT_FSPECIAL] == 0);

hud_yoffset = floor((hud_yoffset_max - (temperature/temperature_max)*hud_yoffset_max)/2)*2;

if nspecial_fireball != noone && attack == AT_NSPECIAL && window == 6 nspecial_fireball = noone; //nspecial_fireball l spawn reset @ the end of attacking

//Runes code!

if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

if runeO{
    temperature_drain_timer += 1;
}

if (runeO && temperature < temperature_max && temperature_drain_timer >= 5){
    temperature += 1;
    temperature_drain_timer = 0;
}

if runesUpdated {
    
	if runeA { //increase dash speed if rune A is present
		dash_anim_speed = .3;
		initial_dash_speed = 6.25;
		dash_speed = 6.75;
		moonwalk_accel = 1.1;
	} else { //reset dash speed if rune A is not present
		dash_anim_speed = .25;
		initial_dash_speed = 5.5;
		dash_speed = 5.75;
		moonwalk_accel = 0.7;
	}
	
	if runeB {
	    fspecial_speed = 0.7;
	    fspecial_speed_start = 3;
	    fspecial_speed_max = 18;
	} else {
	    fspecial_speed = 0.4;
	    fspecial_speed_start = 2;
	    fspecial_speed_max = 15;
	}
	
	if runeK {
	    nspecial_gain = 2;
	} else {
	    nspecial_gain = 3;
	}
	
	if runeF {
	    nspecial_hsp = 9;
	    nspecial2_hsp = 24;
	    set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, nspecial_hsp);
	} else {
	    nspecial_hsp = 5.5;
	    nspecial2_hsp = 14;
	    reset_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED);
	}
}



// ---- PLATINUM FRY ----

if (fry_platinum_timer <= 120) { //2 seconds
	fry_platinum_timer += 1;
	if (attack_pressed && special_pressed && jump_pressed && taunt_pressed && get_player_color(player) > 0){
		fry_platinum = 1;
	}
} 

if (fry_platinum){
	
	if (state == PS_LANDING_LAG){ //No landing lag
		set_state(PS_IDLE);
	}
	
	if (state == PS_WAVELAND && state_timer <= 3){
		super_armor = 1;
	}
	
	if ((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer >= 25){
		set_state(PS_IDLE);
	}
	
	if (state == PS_PARRY && state_timer >= 24){
		set_state(PS_IDLE);
	}
	
	if move_cooldown[AT_USPECIAL] > 60{
		move_cooldown[AT_USPECIAL] = 60
	}
	
	if (up_down){
		gravity_speed = 0.5;
		max_fall = 7;
	} else {
		gravity_speed = 0.7;
		max_fall = 11.5;
	}
	
	if (!free){
		max_djumps = 3;
	} else {
		if (temperature >= 20){
			max_djumps = 33;
		} else {
			max_djumps = 3;
		}
	}
	
	if (get_gameplay_time() mod 15 == 1 && temperature < temperature_max){
		temperature += 1;
	}
	
	if (djumps > 3 && state_timer = 1 && temperature >= 20 && jump_pressed){
		temperature -= 20;
	}
	
	// particles
	if (random_func(1, 3, true) == 0){
    	spawn_hit_fx( x - (random_func( 0, 40, true) + (random_func( 1, 40, true))) + 24, y - (random_func( 2, 70, true)) -5, particle_flamesparkle);
	}
	
	//Player vars
	
	temperature_max = 500;
	nspecial_gain = 1;
	
	knockback_adj = 0.8;
	
	walk_speed = 5;
	dash_speed = 9;
	initial_dash_speed = 10;
	
	air_max_speed = 7;
	air_accel = 1;
	jump_speed = 15;
	jump_change = 7;
	djump_speed = 14;
	leave_ground_max = 9;
	max_jump_hsp = 8;
	jump_start_time = 3;

	initial_dash_time = 1;
	dash_turn_time = 1;
	dash_turn_accel = 1;
	moonwalk_accel = 3;
	land_time = 1;
	prat_land_time = 1;
	
	air_dodge_speed = 12;
	
	nspecial_cost = 60; 
	nspecial_hsp = 9;
	
	fspecial_speed = 1.25; //the speed that fspecial gains each frame
	fspecial_speed_start = 1; //the initial velocity that fspecial starts at
	fspecial_speed_max = 45; //the maximum speed fspecial is allowed to reach
	fspecial_cooldown = 10;
	
	//colors
	set_color_profile_slot(get_player_color(player), 1, 110, 110, 180);
	set_color_profile_slot(get_player_color(player), 2, 150, 150, 255);
	set_color_profile_slot(get_player_color(player), 3, 90, 90, 255);
	set_color_profile_slot(get_player_color(player), 4, 40, 40, 255);
	set_color_profile_slot(get_player_color(player), 5, 60, 60, 120);
	
    var outline_sin = (sin((get_gameplay_time() - 100) * 0.1) * -128) + 128
    outline_color = [outline_sin / 3, outline_sin / 3, outline_sin / 1.5]; //code swiped from Ronald McDonald because i can't math
    init_shader();
} 


//trummel codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 16;
    trummelcodecsprite1 = sprite_get("trailmix");
    trummelcodecsprite2 = sprite_get("trailmix");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Not much to look at, huh?";
    trummelcodecline[page,2] = "Never seen him before,";
    trummelcodecline[page,3] = "but...is that a frying";
    trummelcodecline[page,4] = "pan?";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "im hungry";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Tough luck.";
    trummelcodecline[page,2] = "Though he was once a";
    trummelcodecline[page,3] = "chef, he's not here to";
    trummelcodecline[page,4] = "cook.";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Oh, sorry for hijacking";
    trummelcodecline[page,2] = "the text box, by the ";
    trummelcodecline[page,3] = "way. I'm Trail Mix,";
    trummelcodecline[page,4] = "the developer of Fry.";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Oh, it's fine!";
    trummelcodecline[page,2] = "I'm glad you're here to";
    trummelcodecline[page,3] = "help.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "rude";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Anyway, Fry here's";
    trummelcodecline[page,2] = "pretty slow, and";
    trummelcodecline[page,3] = "his range is nothing";
    trummelcodecline[page,4] = "spectacular.";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His recovery's extremely";
    trummelcodecline[page,2] = "poor as well, AND it";
    trummelcodecline[page,3] = "costs a resource.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So all we have to do is";
    trummelcodecline[page,2] = "get him offstage?";
    trummelcodecline[page,3] = "Sounds like he needs a";
    trummelcodecline[page,4] = "buff.";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Sure, except his damage";
    trummelcodecline[page,2] = "output is incredible,";
    trummelcodecline[page,3] = "and his heat grants";
    trummelcodecline[page,4] = "him strong options.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Don't get too close,";
    trummelcodecline[page,2] = "and don't get too far,";
    trummelcodecline[page,3] = "either.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "So--";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Don't say it, Alto.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Say what?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "So that means you've";
    trummelcodecline[page,2] = "made two stick figure";
    trummelcodecline[page,3] = "characters now?";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 15
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "LOOK ANSTEIN'S REALLY HARD TO ANIMATE OKAY";
    trummelcodecline[page,2] = "SHE HAS DETAILED SCALES AND SHINY METAL BITS";
    trummelcodecline[page,3] = "AND CLOTH WITH FOLDS AND A WEIRDLY SHAPED WEAPON AND--";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 16
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "...Just fight the";
    trummelcodecline[page,2] = "frying pan man, okay?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}
