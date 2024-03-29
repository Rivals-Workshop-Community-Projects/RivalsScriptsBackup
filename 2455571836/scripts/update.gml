// Muno template - [CORE] init, update

// DO NOT EDIT - Only edit user_event15.gml

with (oPlayer) if (url == "2889369766"){
	if get_player_color(player) == 2{
	set_character_color_slot( 0, 157, 235, 243 ); //Fur
	set_character_color_slot( 1, 233, 219, 248 ); //Muzzle
	set_character_color_slot( 2, 128, 61, 25 ); //Gold
	set_character_color_slot( 3, 233, 219, 248 ); //Clothing
	set_character_color_slot( 4, 42, 163, 239 ); //Blue
	set_character_color_slot( 5, 128, 61, 25 ); //Sword
	set_character_color_slot( 6, 42, 163, 239 ); //Effects
	}
}

if (!free or state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}

if (state == AT_USPECIAL && window = 5 && !free){
    window = 6;
}

if state_cat != SC_HITSTUN
sandstarred = false;

/*with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        glace_Freeze = false;
		outline_color = [ 0, 0, 0 ];
    }
}

with (asset_get("oPlayer")) {
	if (glace_Freeze && glace_Freeze_ID == other.id && !hitpause) {
		glace_Freeze_TIMER -= 1;
		
		outline_color = [ 191, 235, 255 ];
		
		if (glace_Freeze_TIMER == 0){
		glace_Freeze = false;
		outline_color = [ 0, 0, 0 ];
		}
	}
}*/

if swallowed {
	swallowed = 0
		var ability_spr = sprite_get("glace_kirby")
		var ability_hurt = sprite_get("glace_kirby_hurt")
		var ability_icon = sprite_get("glace_kirby_icon")
		var ability_sb1 = sprite_get("nspecial_proj")
		var ability_sb1_hurt = sprite_get("nspecial_proj_hurt")
		var ability_sbsfx1 = sound_get("glace_snowball_throw")
		var ability_sbsfx2 = sound_get("glace_snowball_land")
		
	with enemykirby  {
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sbsfx1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -33);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -36);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sbsfx2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_sb1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_sb1_hurt);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 22);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

	newicon = ability_icon
	}
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
	with (amber_herObj) //Access Amber's player object and set the values
	{
		//Set the window values for Amber's hugging. DO NOT change Amber's sprites
		//in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 8);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 11);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
	}
	//Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
	oPlayerHugAmberState = 2;
	
	//Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

//Abyss Runes
max_djumps = 1 + has_rune("A") * 1;

if (has_rune("B") || phone_cheats[cheat_all_runes] == 1){
set_window_value( AT_USPECIAL, 6, AG_WINDOW_TYPE, 1 );
}

if (has_rune("C") || phone_cheats[cheat_all_runes] == 1){
walk_turn_time = 0;
initial_dash_time = 0;
dash_turn_time = 0;
dash_turn_accel = 0;
dash_stop_time = 0;
dash_stop_percent = .25;
ground_friction = 1;
moonwalk_accel = 1.4;
}

if (has_rune("D") || phone_cheats[cheat_all_runes] == 1){
walk_speed = 5;
dash_speed = 10;
}

if (has_rune("E") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.0 );
}

if (has_rune("F") || phone_cheats[cheat_all_runes] == 1){
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);

	if (attack == AT_FSPECIAL && window == 3){
		window = 4;
	}
}

if (has_rune("G") || phone_cheats[cheat_all_runes] == 1){
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, -1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, -1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
}

if (has_rune("H") || phone_cheats[cheat_all_runes] == 1){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (has_rune("I") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_DTILT, 1, HG_BASE_KNOCKBACK, 3 );
set_hitbox_value( AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.75 );
set_hitbox_value( AT_DTILT, 1, HG_BASE_HITPAUSE, 0 );
set_hitbox_value( AT_DTILT, 1, HG_EXTRA_HITPAUSE, 30 );
set_hitbox_value( AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.25 );
}

if (has_rune("J") || phone_cheats[cheat_all_runes] == 1){
set_window_value( AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6 );
set_window_value( AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 5 );

set_window_value( AT_FSTRONG, 4, AG_WINDOW_LENGTH, 5 );
set_window_value( AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6 );

set_window_value( AT_USTRONG, 3, AG_WINDOW_LENGTH, 2 );
set_window_value( AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1 );

set_window_value( AT_USTRONG, 4, AG_WINDOW_LENGTH, 4 );
set_window_value( AT_USTRONG, 5, AG_WINDOW_LENGTH, 6 );
set_window_value( AT_USTRONG, 6, AG_WINDOW_LENGTH, 4 );
}

if (has_rune("K") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_NSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value( AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value( AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
}

if (has_rune("L") || phone_cheats[cheat_all_runes] == 1){
set_window_value( AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value( AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -12);
set_window_value( AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
}

if (has_rune("M") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_BAIR, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value( AT_DAIR, 1, HG_EXTRA_HITPAUSE, 30);
if (has_rune("G") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_BAIR, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value( AT_DAIR, 2, HG_EXTRA_HITPAUSE, 30);
	}
}

if (has_rune("N") || phone_cheats[cheat_all_runes] == 1){
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 26);
if (attack == AT_TAUNT)
{
if (window == 5 && window_timer == 9){
	attack = 49;
	window = 1;
	window_timer = 0;
		}
	}
}

if (has_rune("O") || phone_cheats[cheat_all_runes] == 1){
set_hitbox_value( AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value( AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value( AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value( AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value( AT_DAIR, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value( AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value( AT_DAIR, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value( AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value( AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value( AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value( AT_BAIR, 2, HG_DAMAGE, 9);
set_hitbox_value( AT_BAIR, 2, HG_ANGLE, 30);
set_hitbox_value( AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value( AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value( AT_BAIR, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value( AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value( AT_BAIR, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value( AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value( AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value( AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value( AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);
}

//Intro
if (introTimer2 < 2) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

user_event(14);