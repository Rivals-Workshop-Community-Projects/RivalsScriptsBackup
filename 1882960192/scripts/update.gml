//update
user_event(14); 

if !superbluey and !(get_player_color( player ) == 15) { 
	if (wblastcharge >= 55) { 
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ 0, outlineclr * 1.05, outlineclr * 2];
		}
	else	{	
		outline_color = [ 0, 0, 0 ];
	}
}

//Check if a fspecial ball is out
var ABallThereIs = false;

with(asset_get("pHitBox")){
    if(player_id == other.id && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && hbox_num == 1){
        ABallThereIs = true;
    }
}

if ABallThereIs{
   	ballOut = true;
}

else { ballOut = false; }

if ballDown > 0 {
	ballDown--;
}

if (get_player_color( player ) == 15) {
	if (wblastcharge >= 55) and ((get_gameplay_time() mod 10) > 5) {
	outline_color = [ 168, 224, 248 ];
	}
	else	{	
		outline_color = [32, 24, 136];
	}
}

init_shader();

///Rainbow alt
if (get_player_color( player ) == 13) {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 13, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 13, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 13, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}

if (wblastcharge > 55) { //Ensure wblastcharge never goes above 55
	wblastcharge = 55;
}

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}

//Trummel & Alto Codec
if !(url == 1882960192) {
	set_state(PS_DEAD);
}
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 24;
    trummelcodecsprite1 = sprite_get("talk");
    trummelcodecsprite2 = sprite_get("talk");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "wow what a blue guy";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Yeahh, he's pretty...";
    trummelcodecline[page,2] = "...bluey, if I'd say so.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 2
    trummelcodecspeaker[page] = 3; //bluey
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Yeahh, well that's";
    trummelcodecline[page,2] = "my name.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 3
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Yes, ye...Hey, were";
    trummelcodecline[page,2] = "you eavesdropping";
    trummelcodecline[page,3] = "on us?";
    trummelcodecline[page,4] = "";
    page++;

    //Page 4
    trummelcodecspeaker[page] = 3; //bluey
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "I'm very positive";
    trummelcodecline[page,2] = "you WERE talking about";
    trummelcodecline[page,3] = "me. Weren't you?";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 5
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Well...I guess.";
    trummelcodecline[page,2] = "...You know, you";
    trummelcodecline[page,3] = "aren't from around";
    trummelcodecline[page,4] = "here, are you?";
    page++;
	
    //Page 6
    trummelcodecspeaker[page] = 3; //bluey
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Nope! I'm from,";
    trummelcodecline[page,2] = "like, an alternate";
    trummelcodecline[page,3] = "world.";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 7
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "why are you here";
    trummelcodecline[page,2] = "then";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 8
    trummelcodecspeaker[page] = 3; //bluey
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Honestly? I";
    trummelcodecline[page,2] = "don't even know.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 9
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "yeah that happens";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "also alto please";
    trummelcodecline[page,4] = "give strategy";
    page++;
	
    //Page 10
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "O-oh. Right.";
    trummelcodecline[page,2] = "Strategy, coming";
    trummelcodecline[page,3] = "right up!";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 11
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Alright, so blue guy";
    trummelcodecline[page,2] = "here has a wand";
    trummelcodecline[page,3] = "that can carry a";
    trummelcodecline[page,4] = "load of stuff,";
    page++;
	
    //Page 12
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "including but not";
    trummelcodecline[page,2] = "limited to: a pickaxe,";
    trummelcodecline[page,3] = "an umbrella, a hand on a";
    trummelcodecline[page,4] = "stick, an exhaust pipe...";
    page++;
	
    //Page 13
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Of particular note are";
    trummelcodecline[page,2] = "his hammer and magic rod.";
    trummelcodecline[page,3] = "He likes to use 'em the";
    trummelcodecline[page,4] = "most, and are the deadliest.";
    page++;
	
    //Page 14
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His hammer is one of the";
    trummelcodecline[page,2] = "harder hitting stuff on";
    trummelcodecline[page,3] = "his kit, and he uses it";
    trummelcodecline[page,4] = "to launch bowling balls.";
    page++;
	
    //Page 15
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His magic wand can be";
    trummelcodecline[page,2] = "charged to launch powerful";
    trummelcodecline[page,3] = "B-lasts, or to power up";
    trummelcodecline[page,4] = "other moves!";
    page++;
	
    //Page 15
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "what is a bee last";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 16
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Uhh...a pun. Y'know,";
    trummelcodecline[page,2] = "'cause his blasts are";
    trummelcodecline[page,3] = "B shaped? Hahahaha...";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 17
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "not funny";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "didn't laugh";
    page++;
	
    //Page 18
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Yeah, yeah, whatever.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
	
	//Page 19
    trummelcodecspeaker[page] = 3; //bluey
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "I'm guessing you";
    trummelcodecline[page,2] = "REALLY like talking about";
    trummelcodecline[page,3] = "someone even while";
    trummelcodecline[page,4] = "they're listening.";
    page++;
	
    //Page 20
    trummelcodecspeaker[page] = 1; //alto
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Uhh, it's in our";
    trummelcodecline[page,2] = "contract.";
    trummelcodecline[page,3] = "Or something.";
    trummelcodecline[page,4] = "";
    page++;
	
    //Page 21
    trummelcodecspeaker[page] = 2; //trummel
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "what";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}



if swallowed { //Kirby ability script starts here
    swallowed = 0;
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt")
    var ability_proj = sprite_get("fspecial_proj");
	var ability_icon = sprite_get("kirbyicon");
    with enemykirby {
		newicon = ability_icon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_shop_move"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 10);

		set_num_hitboxes(AT_EXTRA_3, 2);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 80);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 48);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 38);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 38);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 48);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .01);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, -0.05);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 153);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 45);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	}
} //Kirby ability script ends here

///runes thing
if has_rune("G") { //Rune G: Charging NSpecial boosts stats.
	if wblastcharge >= 55 {
	walk_anim_speed = .31;
	dash_anim_speed = .5;
	
	walk_speed = 5;
	walk_accel = 0.4;		
	initial_dash_speed = 8;
	dash_speed = 8;
	
	air_max_speed = 6;
	jump_speed = 11.9;
	djump_speed = 11;
	max_jump_hsp = 7.5;
} else { //reset
		walk_anim_speed = .21;
		dash_anim_speed = .35;
		
		walk_speed = 4;
		walk_accel = 0.3;		
		initial_dash_speed = 7.5;
		dash_speed = 6.5;
		
		air_max_speed = 5;
		jump_speed = 10.9;
		djump_speed = 10;
		max_jump_hsp = 6;
	}
}