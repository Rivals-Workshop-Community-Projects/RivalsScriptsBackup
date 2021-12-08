//Intro Animation Code ripped from R-00
//stage_id = get_stage_data(SD_ID);


if get_gameplay_time() == 2 {
    if attack_down && shield_down code_1 = 1;
    if attack_down && up_down code_2 = 4;
    if attack_down && left_down code_2 = 2;
    if attack_down && down_down code_2 = 0;
    if attack_down && jump_down code_3 = 1;
}

if get_gameplay_time() < 120 {
    if get_gameplay_time() == 2 {
        set_attack(AT_NTHROW);
        
        /*
        if shield_down and get_player_color(player) == 15{
        	flag_active = true;
        }
        */
    }
    if get_gameplay_time() > 5 {
        if attack == AT_NTHROW && window == 1 && window_timer == 21 {
        	window = 2;
        	window_timer = 0;
        }
        if attack == AT_NTHROW && window == 2 && window_timer == 57 {
            window = 3;
            window_timer = 0;
        }
    }
}

if attack == AT_NTHROW && window <= 3{
	if taunt_pressed{
		kris_sparkles_active = true;
	}
	if shield_pressed{
		flag_active = true;
	}
}

if attack == AT_NTHROW && window < 3 && state_timer > 1{
	if (attack_pressed) {
	  clear_button_buffer(PC_ATTACK_PRESSED);
	  buttonmasher++;
	}
}

// NES Color Swap
if attack == AT_NTHROW && window <= 3 && get_player_color(player) == 8{
	if (jump_pressed){
		set_character_color_slot(0, 162, 255, 243); //SKIN
		set_character_color_slot(1, 235, 235, 235); //ARMOR
		set_character_color_slot(2, 255, 97, 178); //CAPE
		set_character_color_slot(3, 48, 81, 130); //HAIR
		set_character_color_slot(4, 154, 32, 121); //HILT
		set_character_color_slot(5, 255, 186, 235); //SWORD
		set_character_color_slot(6, 178, 16, 48); //SOUL
		set_character_color_slot(7, 219, 65, 97); //STRONG HIT
	}
}


if attack == AT_NTHROW && window == 3 && get_gameplay_time() > 120 && buttonmasher < 15 {
    set_state(PS_IDLE);
}

if kris_sparkles_active{
	kris_sparkle_timer++;
	if kris_sparkle_timer == 4{
		kris_sparkle_frame++;
		kris_sparkle_timer = 0;
	}
	if kris_sparkle_frame > 8{
		kris_sparkle_frame = 0;
	}
}

if diamondbutbetterkrisbbutbetter{
	abyssEnabled = true;
	runeA = true;
	runeB = true;
	runeC = true;
	runeD = true;
	runeE = true;
	runeF = true;
	runeG = true;
	runeH = true;
	runeI = true;
	runeJ = true;
	runeK = true;
	runeL = true;
	runeM = true;
	runeN = true;
	runeO = true;
	
	kris_sparkle_timer++;
	if kris_sparkle_timer == 4{
		kris_sparkle_frame++;
		kris_sparkle_timer = 0;
	}
	if kris_sparkle_frame > 8{
		kris_sparkle_frame = 0;
	}
	
	invinc_time--;
	if invinc_time <= 0{
		invinc_time = 0;
	}
	if invinc_time < 0{
		invincible = true;
	}
	if invinc_time == 0{
		invincible = false;
	}
	
	tpmax = 200;
	max_djumps = 2147483647;
	jump_change = 6;
	
	if supersaiyan == 1{
		super_armor = true;
	}
	
	if tp_gauge < 80{
		tp2_vis = 0
	}
	if tp_gauge >= 80 && tp_gauge < 85{
		tp2_vis = .25
	}
	if tp_gauge >= 85 && tp_gauge < 90{
		tp2_vis = .5
	}
	if tp_gauge >= 90 && tp_gauge < 95{
		tp2_vis = .75
	}
	if tp_gauge >= 100{
		tp2_vis = 1
	}
	
	boostio++;
	
	if boostio == 10 && supersaiyan == 0{
		tp_gauge++;
		boostio = 0;
	}
	
	if boostio == 10 && supersaiyan == 1{
		take_damage( player, -1, -2 );
		boostio = 0;
	}
	
	set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 0);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 0);
	
	set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -6);
	
	initial_dash_speed = 8.5;
	dash_speed = 9;
	
	if supersaiyan == 0 {
		knockback_adj = .85;
	}
	if supersaiyan == 1 {
		knockback_adj = .8;
	}
	
	if kbcheck = 1 {
		if (abs(myhsp)/2 > abs(mytarget.hsp)) or (abs(myvsp)/2 > abs(mytarget.vsp)){
			mytarget.hsp = myhsp
			mytarget.vsp = myvsp
		}
		if mytarget.hitpause = 0 {
		kbcheck = 0
		mytarget = noone
		myvsp = 0
		myhsp = 0
		}
	}
}

/*
// Practice Mode Functionality
if (get_gameplay_time() >= 140){
    
    timer2 = get_game_timer();
    if (timer1 == timer2 && timer1 != 0 && !practice){
        practice = true;
        hide_help = false;
    }
}


if (get_stage_data(SD_ID) == 75518 or get_stage_data(SD_ID) == 51050 or get_stage_data(SD_ID) == 40312){
	boss_fight = true;
}

if boss_fight{
	if get_gameplay_time() % 120 == 0{
		tp_gauge++;
	}
}*/

if toggle_courage{
	supersaiyan = 1;
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
	can_wall_jump = true;
}

if (attack == AT_NSPECIAL){
	can_wall_jump = true;
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	can_wall_jump = true;
}

// TP Gauge
// Makes sure you cannot have negative TP
if (tp_gauge < 0) {
	tp_gauge = 0;
}

// Makes sure you cannot have more than 100% TP
if (tp_gauge > tpmax) {
	tp_gauge = tpmax;
}

// When TP is > 100%
if (tp_gauge < tpmax){
	// then make the character outline black
	outline_color = [ 0, 0, 0 ];
	// tell the shader to update the character's colors
	init_shader();
}

// show baby
if (showbaby){
	babytp++;
	if babytp < 10 && babytp > 0{
		baby_vis = baby_vis + .1;
	}
	if babytp > 110 && babytp < 120{
		baby_vis = baby_vis - .1;
	}
	if babytp == 120{
		babytp = 0;
		showbaby = false;
	}
}

// If Courage is active, Kris should be Blue
if (supersaiyan == 1) {
    outline_color = [ 15, 118, 223 ];
    init_shader();
}

// While dspecial buff is active, increment the timer.
if (supersaiyan == 1 && supersaiyan_frametimer < 10) {
    supersaiyan_frametimer += 1;
}
else if (supersaiyan == 1 && supersaiyan_frametimer == 10) {
    supersaiyan_frametimer = 0;
}

// when the timer value divided by 3 hasa remainder of 1, draw one particle (article2) at a random x and y value, facing the player direction and with a vertical speed that will make it drift up
if ((supersaiyan_frametimer % 3 == 1) && supersaiyan == 1) {
    var randomnumber = random_func(0,8,true)*8;
    var randomnumber2 = random_func(3,8,true)*9;
var energylines = instance_create(x - (28*spr_dir) + (randomnumber * spr_dir),(y - (randomnumber2) + 30),"obj_article2");
        energylines.player = player;
        energylines.spr_dir = spr_dir;
        energylines.vsp = -7;
}
if (stats_adjusted == false) {
	if (supersaiyan == 1){
		knockback_adj = .96;
		gravity_speed = .6;
		jump_speed = jump_speed_start - 1;
		short_hop_speed = short_hop_speed_start - 1;
		djump_speed = djump_speed_start - 2;
		wave_friction = .09;
		dash_speed = dash_speed_start - 2;
		walk_speed = walk_speed_start - .5;
		stats_adjusted = true;
	}
	else {
		knockback_adj = knockback_adj_start;
		gravity_speed = gravity_speed_start;
		jump_speed = jump_speed_start;
		short_hop_speed = short_hop_speed_start;
		djump_speed = djump_speed_start;
		wave_friction = wave_friction_start;
		dash_speed = dash_speed_start;
		initial_dash_speed = initial_dash_speed_start;
		walk_speed = walk_speed_start;
		stats_adjusted = true;
	}
}
if (courage_drain = true){
	// Drain TP while courage is active
	if (supersaiyan == 1 && tp_gauge >= 1) {
	    draining = draining + 1;
	    if (draining == 60){
	    	tp_gauge -= 1;
	    	draining = 0;
	    }
	}
}

if (supersaiyan == 1 && tp_gauge <= 0) {
    tp_gauge = 0;
    supersaiyan = 0;
    move_cooldown[AT_DSPECIAL] = 320;
}

// When TP hits 70%, it should make Kris Red
if (tp_gauge >= 65 && tp_gauge < 100){
	if polish < 255 and wait_timer_thing == -1{
		polish += 5;
		outline_color = [polish, 0, 0];
	}

	if polish == 255{
		wait_timer_thing++;
		if wait_timer_thing == 15{
			wait_timer_thing = -2;
		}
	}

	if polish > 0 and wait_timer_thing == -2{
		polish -= 5;
		outline_color = [polish, 0, 0];
	}
	if polish == 0{
		wait_timer_thing++;
		if wait_timer_thing == 14{
			wait_timer_thing = -1;
		}
	}
	init_shader();
}


// When TP hits 100%, it should make Kris Yellow
if (tp_gauge == 100){
	// then make the character outline yellow
	outline_color = [ 255, 208, 32 ];
	// tell the shader to update the character's colors
	init_shader();
}

//gauge change
if (get_player_color(player) == 6){
	
	//colors.gml OR init_shader.gml:
	switch (get_match_setting(SET_SEASON)) {
	  case 1: // valentines
    	if vdayselect == 1{
			guage_sprite = sprite_get("gaugevday1");
		}
		if vdayselect == 2{
			guage_sprite = sprite_get("gaugevday2");
		}
		if vdayselect == 3{
			guage_sprite = sprite_get("gaugevday3");
		}
	    break;
	  case 4: // christmas
	    guage_sprite = sprite_get("gaugexmas");
	    break;
	}
}
else if (get_player_color(player) == 15){
	guage_sprite = sprite_get("gaugechamp");
}
else if (get_player_color(player) == 16){
	guage_sprite = sprite_get("gaugebama");
	obama_freed = true;
}
else{
	guage_sprite = sprite_get("gauge");
}

//spooky fix
if (state != PS_ATTACK_GROUND){
	sound_stop(sound_get("music_spooky"));
}

if pride {

	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(240, 112, 160);
	//make a gamemaker color variable using kris' default color (sword)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color


	color_rgb=make_color_rgb(208, 0, 80);
	//make a gamemaker color variable using kris' default color (soul)
	
	//kris' feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_character_color_slot(6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
	//make a gamemaker color variable using kris' default color (strong hit)

	//kris' feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_character_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker colo
	
	//make a gamemaker color variable using kris' default color (cape)

	//kris' feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_character_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker colo
	
}

if obama_freed {
	set_victory_theme( sound_get( "music_win_obama") );
	usa = usa + .5;
	if usa >= 1 && usa < 16{
		set_character_color_slot(0, 173, 28, 28 ); //Blade
		set_character_color_slot(6, 173, 28, 28 ); //Soul
		set_character_color_slot(7, 173, 28, 28 ); //Strong Hit
	}
	if usa >= 16 && usa < 31{
		set_character_color_slot(0, 173, 173, 173 ); //Blade
		set_character_color_slot(6, 173, 173, 173 ); //Soul
		set_character_color_slot(7, 173, 173, 173 ); //Strong Hit
	}
	if usa >= 31 && usa < 46{
		set_character_color_slot( 0, 28, 28, 173 ); //Blade
		set_character_color_slot( 6, 28, 28, 173 ); //Soul
		set_character_color_slot( 7, 28, 28, 173 ); //Strong Hit
	}
	if usa == 46{
		usa = 0;
	}
	dspec_activesound = sound_get("bruh");
	dspec_deactivesound = sound_get("bruh_reversed");
}

// LEVEL ONE RUNES
if runesUpdated{
	runesUpdated = false;
	
	// RUNE A : Clairen Tipper On FSpecial
	if runeA {
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 11);
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 0);
	}
	
	// RUNE B : Rude Buster Size Increase
	if runeB {
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("rune_proj"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("rune_proj"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -80);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -65);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 70);
	}
	
	// RUNE C : Old NAir
	if runeC {
		//Old NAir
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
		set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
		
		set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
		
		set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
		
		set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_NAIR,1);
		
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 23);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -33);
		set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 87);
		set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 123);
		set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6.5);
		set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .3);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		//NAIR
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
		set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
		
		set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);
		
		set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_NAIR,2);
		
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 36);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -33);
		set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 68);
		set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 76);
		set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 78);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .1);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 31);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
		set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 86);
		set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .2);
		set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
		
		/*set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1); disabled for balance
		set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 16);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 3);
		set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 42);
		set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 35);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6.5);
		set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
		set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));*/
	
	}
	
	// RUNE D : DAir is now Falco DAir.
	if runeD {
		// Falco DAir
		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
		set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
		set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
		
		set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
		set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);
		
		set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		
		set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		
		set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_DAIR,4);
		
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 8);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
		set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
		set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
		set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
		set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
		
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 8);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 49);
		set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 49);
		set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 1);
		set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);
		
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 12);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 1);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 2);
		set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 42);
		set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 40);
		set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .25);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .25);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 0);
		set_hitbox_value(AT_DAIR, 3, HG_EXTRA_CAMERA_SHAKE, 0);
		
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 12);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 49);
		set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 49);
		set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .25);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .25);
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 0);
		set_hitbox_value(AT_DAIR, 4, HG_EXTRA_CAMERA_SHAKE, 0);
	
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		// Old DAir
		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
		set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 8);
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
		set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
		
		set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
		set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);
		
		set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		
		set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		
		set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);
		
		set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
		
		set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_DAIR,4);
		
		for (var z = 1; z <= 4; z++) {
		    set_hitbox_value(AT_DAIR, z, HG_VISUAL_EFFECT, 302);
		}
		
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -3);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 36);
		set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .3);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);
		set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
		
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -3);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 36);
		set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 60);
		set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .3);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 3);
		set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1);
		
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -3);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 36);
		set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
		set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .3);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 3);
		set_hitbox_value(AT_DAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1);
		
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 7);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -3);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 36);
		set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 60);
		set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
		set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 0);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .67);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);
	
	}
	
	// RUNE E : Ground speed is faster.
	if runeE {
		walk_speed = 3.75;
		dash_speed = 9.5;
		initial_dash_speed = 8;
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		walk_speed = walk_speed_start;
		dash_speed = dash_speed_start;
		initial_dash_speed = initial_dash_speed_start;
	}
	
	// RUNE F : rip marvel mode. Now hops
	if runeF {
		//
		air_max_speed = 7;
		
	} else {
		//default attributes. this part is optional but you should have it for compatibility with
		//the random rune mode.
		air_max_speed = 5.25;
	}
	
	// LEVEL TWO RUNES
	
	// RUNE H : Stand
	if runeH{
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("stando"));
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
		
		set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 17);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_kris_slash"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
		
		set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_kris_slash"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		
		set_num_hitboxes(AT_USTRONG,2);
		
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 97);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 89);
		set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 99);
		set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .92);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_kris_hit_strong"));
		
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 64);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -106);
		set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 75);
		set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 85);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .92);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("sfx_kris_hit_strong"));
	} else {
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
		
		set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 17);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_kris_slash"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
		
		set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_kris_slash"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		
		set_num_hitboxes(AT_USTRONG,2);
		
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 65);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 89);
		set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 99);
		set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .92);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_kris_hit_strong"));
		
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 34);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -106);
		set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 75);
		set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 85);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .92);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("sfx_kris_hit_strong"));
	}
	
	// RUNE I : Old FAir Hitboxes
	if runeI {
		// FAir Information
		set_attack_value(AT_FAIR, AG_CATEGORY, 1);
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
		set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
		set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
		
		set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);
		
		set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
		
		set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_FAIR, 2);
		
		set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 97);
		set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 69);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 35);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		
		set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 55);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -17);
		set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 76);
		set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 70);
		set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 14);
		set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 270);
		set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .45);
		set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
	} else {
		// Normal FAir
		set_attack_value(AT_FAIR, AG_CATEGORY, 1);
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
		set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
		set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
		
		set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 16);
		
		set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
		
		set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		
		set_num_hitboxes(AT_FAIR, 3);
		
		set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 53);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 78);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);//6
		set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);//52
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);//1
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .75);//.95
		set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);//5
		set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);//.35
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));//sfx_blow_medium1
		
		set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 42);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -65);
		set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 53);
		set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 36);
		set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);//72
		set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);//1
		set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .55);//.8
		set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		
		set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 54);
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 6);
		set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 34);
		set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 11);
		set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
		set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);//8
		set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 275);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);//8
		set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .5);//.45
		set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
		//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	
	}
	
	// RUNE K : Act out of USpecial
	if runeK {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
		
		if (!free){
			move_cooldown[AT_USPECIAL] = 0;
			move_cooldown[AT_USPECIAL_2] = 0;
		}
		
		if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window == 3 && window_timer == 5){
			move_cooldown[AT_USPECIAL] = 999999;
			move_cooldown[AT_USPECIAL_2] = 999999;
		}
		
	} else {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
	}
	
	// LEVEL THREE RUNES
	
	// RUNE L : TP Gain is doubled.
	if runeL {
		combo_starter = 10;
		multihit = 4;
		nocombomulti = 6;
		powermulti = 16;
		weakenders = 16;
		enders = 30;
		
	} else {
		combo_starter = 5;
		multihit = 2;
		nocombomulti = 3;
		powermulti = 8;
		weakenders = 8;
		enders = 15;
		
	}
	
	// RUNE M : All Specials Cost Half as much
	if runeM {
		devilsknife_cost = 25;
		rude_buster_cost = 7;
		red_buster_cost = 17;
		recover_high = 10;
	} else {
		devilsknife_cost = 50;
		rude_buster_cost = 15;
		red_buster_cost = 35;
		recover_high = 20;
	}
	
	if runeN{
		naturevalleynaenae = random_func(1, 10, true);
	}
}

if (trummelcodec_id != noone) {
	if (trummelcodec_id.codecindex == 10 || trummelcodec_id.codecindex == 17){
		if (trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1){
			//music
			sound_play(sound_get("rouxlskaard"), true, false);
		}
	}
	if ((trummelcodec_id.codecindex != 10 && trummelcodec_id.codecindex != 17) || !trummelcodec_id.codec){
		//stop
		sound_stop(sound_get("rouxlskaard"));
	}
}
//Ralsei Talk
/*
if (trummelcodec_id.codecindex == 9 || trummelcodec_id.codecindex == 16){
	if (trummelcodec_id.codectimer2 > 0){
		sound_play(sound_get("ralsei_talk"));
	}
	if (trummelcodec_id.storedtext[4] == trummelcodec_id.codecprint[4]){
		sound_stop(sound_get("ralsei_talk"));
	}
}
*/

// Bobblehead Test
var do_otto_interaction = false; //sets a variable that can be accessed from inside the with statement
var bobblerandom = 0;

with(asset_get("oPlayer")){
    if ("i_am_otto_the_billiard_biker" in self && bobble_id == other.id && bike){ //bike is the variable for if otto is on his bike
        do_otto_interaction = true;
    }
}

if do_otto_interaction{
    bobblerandom = random_func_2(0, 11, true);
    if bobblerandom == 1{
    	otto_bobblehead_sprite = sprite_get("bobble_krisoverworld");
    }
    else if bobblerandom == 2{
    	otto_bobblehead_sprite = sprite_get("bobble_krisrepaint");
    }
    else if bobblerandom == 3{
    	otto_bobblehead_sprite = sprite_get("bobble_susie");
    }
    else if bobblerandom == 4{
    	otto_bobblehead_sprite = sprite_get("bobble_susieoverworld");
    }
    else if bobblerandom == 5{
    	otto_bobblehead_sprite = sprite_get("bobble_susierepaint");
    }
    else if bobblerandom == 6{
    	otto_bobblehead_sprite = sprite_get("bobble_ralsei");
    }
    else if bobblerandom == 7{
    	otto_bobblehead_sprite = sprite_get("bobble_ralseirepaint");
    }
    else if bobblerandom == 8{
    	otto_bobblehead_sprite = sprite_get("bobble_lancer");
    }
    else if bobblerandom == 9{
    	otto_bobblehead_sprite = sprite_get("bobble_lancerrepaint");
    }
    else if bobblerandom == 10{
    	otto_bobblehead_sprite = sprite_get("bobble_jevil");
    } else {
    	otto_bobblehead_sprite = sprite_get("bobble_kris");
    }
}

#region
// SNAAAAAAAAAAAAAAAAAKE
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 18;
    trummelcodecsprite1 = sprite_get("ralseisprite");
    trummelcodecsprite2 = sprite_get("rouxlssprite");
    page = 0;
 
    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "is that some kind of";
    trummelcodecline[page,2] = "ringpop sword";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
 
    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
 
    trummelcodecline[page,1] = "No way!";
    trummelcodecline[page,2] = "That's the legendary";
    trummelcodecline[page,3] = "lightener,";
    trummelcodecline[page,4] = "Kris Deltarune!";
    page++;
   
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
 
    trummelcodecline[page,1] = "They're one of those";
    trummelcodecline[page,2] = "silent but deadly types...";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
 
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "less fart jokes";
    trummelcodecline[page,2] = "and more strategy";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
   
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "Oh, right!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
   
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
 
    trummelcodecline[page,1] = "Kris is obviously a";
    trummelcodecline[page,2] = "swordfighter, but there's";
    trummelcodecline[page,3] = "much more to them than";
    trummelcodecline[page,4] = "just the blade alone.";
    page++;
   
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
 
    trummelcodecline[page,1] = "Kris has the ability to";
    trummelcodecline[page,2] = "use magic.";
    trummelcodecline[page,3] = "They can only use magic";
    trummelcodecline[page,4] = "if they have TP.";
    page++;
   
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
 
    trummelcodecline[page,1] = "They gain TP from";
    trummelcodecline[page,2] = "hitting opponents";
    trummelcodecline[page,3] = "and successfully";
    trummelcodecline[page,4] = "blocking attacks.";
    page++;
 
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
 
    trummelcodecline[page,1] = "Some of the spells";
    trummelcodecline[page,2] = "they have are-";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
 
    //Page 9
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;
 
    trummelcodecline[page,1] = "Devilsknife, Rude Buster,";
    trummelcodecline[page,2] = "Red Buster, and Courage!";
    trummelcodecline[page,3] = "Each one has their own";
    trummelcodecline[page,4] = "cost.";
    page++;
 
    //Page 10
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "Thoust worms, can't thou";
    trummelcodecline[page,2] = "have some patience?";
    trummelcodecline[page,3] = "Thoust haven't explained";
    trummelcodecline[page,4] = "what DSpecial does.";
    page++;
 
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
 
    trummelcodecline[page,1] = "I was just about to get";
    trummelcodecline[page,2] = "to that, before you";
    trummelcodecline[page,3] = "interrupted me.";
    trummelcodecline[page,4] = "";
    page++;
   
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
 
    trummelcodecline[page,1] = "Each spell has its use.";
    trummelcodecline[page,2] = "Devilsknife can pull us in,";
    trummelcodecline[page,3] = "Rude and Red Buster can";
    trummelcodecline[page,4] = "be used to keep us away.";
    page++;
   
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
 
    trummelcodecline[page,1] = "DSpecial makes Kris";
    trummelcodecline[page,2] = "heavier. However,";
    trummelcodecline[page,3] = "it drains their TP";
    trummelcodecline[page,4] = "every second.";
    page++;
 
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
 
    trummelcodecline[page,1] = "Fortunately,";
    trummelcodecline[page,2] = "their recover is abusable,";
    trummelcodecline[page,3] = "since the higher one";
    trummelcodecline[page,4] = "costs TP.";
    page++;
 
    //Page 15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;
 
    trummelcodecline[page,1] = "This is going";
    trummelcodecline[page,2] = "to be quite the";
    trummelcodecline[page,3] = "challenge,";
    trummelcodecline[page,4] = "Trummel.";
    page++;
 
    //Page 16
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "Yeah, it looks like you";
    trummelcodecline[page,2] = "guys are in a tough";
    trummelcodecline[page,3] = "spot.";
    trummelcodecline[page,4] = "Best of luck though!";
    page++;
 
    //Page 17
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
 
    trummelcodecline[page,1] = "Thoust worms shall need";
    trummelcodecline[page,2] = "it.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
 
    //Page 18
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;
 
    trummelcodecline[page,1] = "racist.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}
#endregion

// ;)
if ("literally_sliced_in_half" in self) && literally_sliced_in_half && slice_anim == 20{
	sound_play(sound_get("sfx_sliced"));
}


if resetcolours {
    newicon = 0
}