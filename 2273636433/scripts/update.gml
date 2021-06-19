//update
user_event(14);
//--------------------------------------------INTRO ANIMATION-----------------------------------------------
if (timer_intro_2 < 3) {
    timer_intro_2++;
} else {
    timer_intro_2 = 0;
    timer_intro++;
}

if (state == PS_SPAWN && taunt_down )||  get_player_color(player) == 24 {
	pringles = 1;
	set_victory_theme(sound_get("pringlesvictory"));
}

if doc_ditto == 0 {
	if variable_instance_exists(oPlayer, "pilleffect"){
		doc_ditto= 1;
	} else {
		doc_ditto=-1;
	}
}


//-------------------------------------------------PILL RNG CODE----------------------------------------------

pill_counter = 0;
if 	(move_cooldown[AT_NSPECIAL] == 0 ) && (move_cooldown[AT_TAUNT] == 0 )  && (next_group == 1) { 
	sound_play(sound_get("pill_next"));
	next_group = 0;
}
if pill>6 { 
	pill = 1;
	next_group = 1;
	//Generate more pills (Resets Variables)				//This cooldown is necessary cause the Tetris RNG needs some time
	move_cooldown[AT_TAUNT] = 20;
	move_cooldown[AT_NSPECIAL] = 20;
	reroll=0;
	num = 6;
	num2 = 0;
	valido = 0;
	//Array Iniciate
	repeat(7)
	   {
	   order[num] = 0;			//Chooses a pill;
	   previo[num] = 9;	
	   num -= 1;
	   }
}

if (num>6)||(num<0){ num=0;}			//Get new  numbers

if (num2>6)||(num2<0){ num2=0; valido=1;}			//Get new  numbers

if (valido == 0){
	if (previo[num2] == reroll){ reroll = random_func( 1, 6, true)+1; num2=0;}
	num2++;
}

if (valido == 1){
	order[num] = reroll;			//Chooses a pill, Assign numbers
	previo[num] =  reroll;
	valido = 0;
	reroll = random_func( 1, 6, true)+1;
	num ++;		//Next
}
//---------------------------------------------------CURRENT PILL CODE--------------------------------------------
//Now pringles compatible
switch(order[pill]){
		case 1 :			//BLUE BLUE
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo"));}

			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);	
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);	
			break;
		case 2 :			//RED RED
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo2_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo2"));}
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 120);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);	
			break;
		case 3 :			//YELLOW YELLOW
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo3_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo3"));}
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);	
			break;	
		case 4 :		//RED BLUE
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo4_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo4"));}
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);	
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);	
			break;
		case 5 :			//RED YELLOW
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo5_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo5"));}
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 105);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);	
			break;	
		case 6 :			//BLUE YELLOW
			if pringles == 1{ set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo6_pringles"));}
			else {	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_colorcombo6"));}
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);	
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);	
			break;
		default: break;
	}


//-------------------------------------------------Variable Resets----------------------------------------------

if state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_RESPAWN || !free{
	cape = 0;
	cyclone = 0;
	shoryuken = 0;
}


//-------------------------------------------------Pill Visual Effects---------------------------------
if pilleffect ==1 {								//Fire
	spawn_hit_fx( x +32*spr_dir, y-30, 3 );
	pilleffect = 0;
	sound_play(  sound_get("melee_stronghit") );
	set_num_hitboxes(AT_USPECIAL, 3);
} else if pilleffect ==2 {						//Wind
	spawn_hit_fx( x +44*spr_dir, y-34, 194 );
	pilleffect=0;
	sound_play(  sound_get("mantle"));
} else if pilleffect ==3 {						//Dspecial
	spawn_hit_fx( x , y-34, 254);
	pilleffect=0;
	sound_play(  sound_get("melee_wack"));
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 0);
} else if pilleffect ==4 {						//Ustrong 2
	spawn_hit_fx( x +6*spr_dir, y-66, 301 );
	pilleffect=0;
	sound_play( asset_get("sfx_blow_heavy2"));
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
} else if pilleffect ==5 {							//fstrong Thunder
	pilleffect=0;
	sound_play(  asset_get("sfx_absa_uair"));
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 0);
} else if pilleffect ==6 {						//Dstrong
	spawn_hit_fx( x +50*spr_dir, y-20, 301 );
	pilleffect=0;
	sound_play(  asset_get("sfx_blow_heavy1"));
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 0);
} else if pilleffect ==7 {						//Dstrong
	spawn_hit_fx( x -30*spr_dir, y-20, 301 );
	pilleffect=0;
	sound_play(asset_get("sfx_blow_heavy1"));
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 0);
}  else if pilleffect ==8 {						//Ustrong 1
	spawn_hit_fx( x -37*spr_dir, y-58, 301 );
	pilleffect=0;
	sound_play( asset_get("sfx_blow_heavy2"));
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
}  else if pilleffect ==9 {						//Ustrong 3
	spawn_hit_fx( x +35*spr_dir, y-52, 301 );
	pilleffect=0;
	sound_play( asset_get("sfx_blow_heavy2"));
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
}


//Release grab logic

if(state != PS_ATTACK_AIR)&&(state != PS_ATTACK_GROUND){				//Not Attacking
	combo=0;
	grabbedid = noone;	//Nobody is being grabbed
	hitbox_active=0;
}


// SOUND EFFECTS


if state == PS_DOUBLE_JUMP && state_timer == 1{
	sound_play(sound_get("jump1"));
}
if state == PS_WALL_JUMP  && state_timer == 1 {
	sound_play(asset_get("sfx_jumpair"));
}


//----------------------------------------------COMPATIBILITY STUFF-------------------------------------------------
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Wh?";
    trummelcodecline[page,2] = "Is that Mario with a";
    trummelcodecline[page,3] = "doctor's outfit. I thought";
    trummelcodecline[page,4] = "Mario was a plumber?";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "dear pesky plumbers...";
    trummelcodecline[page,2] = "wait.";
    trummelcodecline[page,3] = "does he even have";
    trummelcodecline[page,4] = "his medical licence?";
    page++; 
    
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He might but thats";
    trummelcodecline[page,2] = "besides the point,";
    trummelcodecline[page,3] = "thats Dr. Melee Mario!";
    trummelcodecline[page,4] = "";
    page++; 

    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "melee mario 2?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "woag?";
    page++; 

    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He is Melee Mario after";
    trummelcodecline[page,2] = "being removed form";
    trummelcodecline[page,3] = "weeklies. He now has";
    trummelcodecline[page,4] = "a PhD in combat.";
    page++; 

    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So is he like Smash Bros";
    trummelcodecline[page,2] = "Melee Mario? Or is this";
    trummelcodecline[page,3] = "something new?";
    trummelcodecline[page,4] = "";
    page++; 

    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He has some new stuff";
    trummelcodecline[page,2] = "but most thing is that";
    trummelcodecline[page,3] = "pill is expanded upon.";
    trummelcodecline[page,4] = "";
    page++; 

    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "pills here";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //repeat...
}

//--------------------------------------------------Assits  Buddy Support -------------------------------

//AssistantRNG
//assistAttackRNG = random_func( 4, 4, true );			//If you want RNG, use this instead
if ((state == PS_ATTACK_AIR)||(state == PS_ATTACK_GROUND)) && state_timer == 1 &&!hitpause {
	assistAttackRNG += 1;
	if assistAttackRNG > 4 { assistAttackRNG =0;}		//Replace this check with the number of attacks you are adding minus one
}
switch(assistAttackRNG){
case 0: 
	assistAttack = AT_NSPECIAL;
	assistOffsetX = -20; //The horizontal distance they spawn from the player
	assistOffsetY = 0; //The vertical distance they spawn from the player
	assistGroundOnly = true; //Whether or not they are forced to the ground
	assistFloat = false; //FOR SOME REASON, THIS ACTUALLY AFFECTS THE PREVIOUS CASE ( FILL ACCORDINGLY )
break;
case 1: 
	assistAttack = AT_DSPECIAL;
	assistOffsetX = 0; //The horizontal distance they spawn from the player
	assistOffsetY = 0; //The vertical distance they spawn from the player
	assistGroundOnly = false; //Whether or not they are forced to the ground
	assistFloat = false; //FOR SOME REASON, THIS ACTUALLY AFFECTS THE PREVIOUS CASE ( FILL ACCORDINGLY )
break;
case 2: 
	assistAttack = AT_FSPECIAL;
	assistOffsetX = 15; //The horizontal distance they spawn from the player
	assistOffsetY = 0; //The vertical distance they spawn from the player
	assistGroundOnly = false; //Whether or not they are forced to the ground
	assistFloat = false; //FOR SOME REASON, THIS ACTUALLY AFFECTS THE PREVIOUS CASE ( FILL ACCORDINGLY )
break;
case 3: 
	assistAttack = AT_USPECIAL;
	assistFloat = true; //Whether or not they stay in place vertically
	assistOffsetX = 10; //The horizontal distance they spawn from the player
	assistOffsetY = 0; //The vertical distance they spawn from the player
	assistGroundOnly = false; //Whether or not they are forced to the ground
	assistFloat = true; //FOR SOME REASON, THIS ACTUALLY AFFECTS THE PREVIOUS CASE ( FILL ACCORDINGLY )
break;
case 4: 
	assistAttack = AT_DTILT;
	assistOffsetX = 5; //The horizontal distance they spawn from the player
	assistOffsetY = 0; //The vertical distance they spawn from the player
	assistGroundOnly = true; //Whether or not they are forced to the ground
	assistFloat = false; //FOR SOME REASON, THIS ACTUALLY AFFECTS THE PREVIOUS CASE ( FILL ACCORDINGLY )
break;
}

//---------------------------------------------------------------------------RUNE LOGIC PART 2--------------------------------------------------------------

if (has_rune("C")){
	walk_accel = 0.5;
	initial_dash_speed = 7.5;
	dash_speed = 7;
	air_max_speed = 6;
	air_accel = .3;
	jump_change = 4; 
	ground_friction = .40;
	wave_land_adj = 1.4;
}

if (has_rune("E")){
	knockback_adj = 0.75;
	air_friction = .06;			
}

if (has_rune("M")){
	 if (state == PS_ATTACK_GROUND) && (attack == AT_NSPECIAL)&& (window == 3){
		if !free{
			set_state(PS_IDLE);
		}
	 }
}

if (has_rune("F")){
	if shoryuken == 1{					//Used Uspecial
		move_cooldown[AT_USPECIAL] = 9999;
	} else {
		move_cooldown[AT_USPECIAL] = 0;
	}
}

if (has_rune("K")){
	if pill_counter >0{
		if pHitBox.attack = AT_NSPECIAL{
			pHitBox.length = 99999;
			pHitBox.limit = 0;
		}
	}
}


//Lag prevention
if (has_rune ("L"))|| ((has_rune ("N")) )&& (has_rune ("I")) {
	snolid = 1;
} else {
	snolid = 0;
}

//------------------------------------------------------------MUNOPHONE CHEATS--------------------------
// phoen cheats aka same thing
if (phone_cheats[cheat_floaty]) {
    // generally absa stats
    gravity_speed = 0.3; 
    hitstun_grav = 0.45;
    air_accel = 0.4;
    jump_speed = 11.60;
    djump_speed = 10.60;
    short_hop_speed = 8.50;
    double_jump_time = 40;
    //djump_accel = -1.4;
    air_max_speed = 6;
} else {
	gravity_speed = .50;
	hitstun_grav = .51;
	air_accel = .25;
	jump_speed = 10.5;
	short_hop_speed = 6.5;
	djump_speed = 10;
	double_jump_time = 32;
	air_max_speed = 5;
}
if (phone_cheats[cheat_jump] != 1) {
	max_djumps = phone_cheats[cheat_jump];
}
// hello
if(found_mario) {
	print("said hello to Mario")
  sound_play(sound_get("hello"));
  found_mario = false;
}

//die
    if move_cooldown[AT_DSPECIAL] == 0 && hitstop{
        with oPlayer if (activated_kill_effect) {
           if other.hit_player_obj == self && get_player_stocks(player) == 1 {
                with other {
                    move_cooldown[AT_DSPECIAL] = 60;
                    sound_play(sound_get("finishhit"));
                }
            }
        }
}

//------------------------------------------------------------------------KIRBY LOGIC --------------------------
if swallowed { //Kirby ability script starts here
	swallowed = 0
	//Define any assets kirby might need to grab from YOUR CHARACTER
	var ability_spr = sprite_get("kirbyability");
	var ability_hurt = sprite_get("kirbyability_hurt");

	var pick_pill = order[pill];
		switch (pick_pill){
			case 1: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo"); 
				var kirby_icon =   sprite_get("icon");
				break;
			case 2: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo2"); 
				var kirby_icon =   sprite_get("icon2");
				break;
			case 3: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo3"); 
				var kirby_icon =   sprite_get("icon3");
				break;
			case 4: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo4"); 
				var kirby_icon =   sprite_get("icon4");
				break;
			case 5: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo5"); 
				var kirby_icon =   sprite_get("icon5");
				break;
			case 6: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo6"); 
				var kirby_icon =   sprite_get("icon6");
				break;
			default: 
				var ability_icon = sprite_get("nspecial_proj_colorcombo4"); 
				var kirby_icon =   sprite_get("icon4");
				break;
		}

	var ability_pill = sound_get("sfx_pill");
	var ability_chungus = sound_get("pill_hit");


	with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_pill);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 24);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 19);

		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_icon);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.56);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_chungus);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 12);

		switch(pick_pill){
			case 1 :			//BLUE BLUE
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45 );																//This will vary;
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
				break;
			case 2 :			//RED RED
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 120 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
				break;
			case 3 :			//YELLOW YELLOW
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
				break;	
			case 4 :		//RED BLUE
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
				break;
			case 5 :			//RED YELLOW
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 105 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
				break;	
			case 6 :			//BLUE YELLOW
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
				break;
			default: 
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60 );																//This will vary
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
				break;
		}


		newicon = kirby_icon; //Optional, replaces the kirby ability icon
	} //Kirby ability script ends here
}
// Hitbox update
if enemykirby != undefined { //if kirby is in a match & swallowed
	with oPlayer { //Run through all players
		if get_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY) == 19 {			//Random value to identify Kirby
			with pHitBox {
				if attack == AT_EXTRA_3 && type == 2 {
					if hitbox_timer == 1 { floor_pos = 0}
					//ANIMATION
					proj_angle = (hitbox_timer*(abs(hsp)+1))*-spr_dir;
					//BOUNCE
					if !free{
						floor_pos = y;
					}
					if y == floor_pos {
						 vsp = -8.5;
						 floor_pos = 0;
					} 
				}
			}
		}
	}
}

//Attack update
if enemykirby != undefined { //if kirby is in a match & swallowed
	with oPlayer { //Run through all players
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)  {
			if (attack == AT_EXTRA_3) {			//PILL LOGIC
				if window == 1  && window_timer <5 {
					if left_down{spr_dir =-1;}
					if right_down{spr_dir =1;}
				}
				if  window == 3{
					move_cooldown[AT_EXTRA_3] = 42;
					move_cooldown[AT_NSPECIAL] = 42;
				}
			}
		}
	}
}