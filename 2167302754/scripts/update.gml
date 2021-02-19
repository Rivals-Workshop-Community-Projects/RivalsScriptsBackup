//B - Reversals

// NSpecial - Giant Punch
{
if (punch_timer != 0){

if (punch_timer >= 0 && punch_timer < 30){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
}

if (punch_timer >= 30 && punch_timer < 60){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 18);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
}

if (punch_timer >= 60 && punch_timer < 90){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
}

if (punch_timer >= 90 && punch_timer < 120){
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
}

if (punch_timer >= 120){
    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
    set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 3);

}

}

if (shield_pressed || jump_pressed){
	punch_charging = false;
}

if ((attack == AT_NSPECIAL && window == 1 && punch_charged = true) 
&& (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    	super_armor = true
    }

}

//Visuals
{
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = 52;
}

if (state == PS_FIRST_JUMP || state == PS_PARRY_START || state == PS_PARRY || state == PS_ROLL_BACKWARD
|| state == PS_ROLL_FORWARD || state == PS_AIR_DODGE || state == PS_IDLE_AIR){
	char_height = 70;
}

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 22) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

// alt changing
// The amount of frames into the match during which you can change your alt or activate "random alt on hit" if you keep that feature. You can change this amount if you want. I believe the countdown is actually 122 frames, but allowing changes that late makes it possible to accidentally change alt while trying to do something early in the match. [Edit optional]
#macro CHANGE_ALT_FRAME_LIMIT 100
if (get_gameplay_time() < CHANGE_ALT_FRAME_LIMIT){ // you are still in the countdown
    if(special_pressed){ // input to increment your current real alt to the next row [Edit optional]
        var curRealAlt = get_color_profile_slot_r(0, 8); // get your current unlimited alt
        curRealAlt += 16; // go up a row
        if(curRealAlt >= get_color_profile_slot_b(0, 8)){ // if you pass the number of alts you have
            curRealAlt = curRealAlt % 16; // go back to the first row
        }
        clear_button_buffer(PC_SPECIAL_PRESSED); // so that one input only increases the alt once (change this with the above [Edit optional])
        set_color_profile_slot(0, 8, curRealAlt, get_color_profile_slot_g(0, 8), get_color_profile_slot_b(0, 8)); // update the unlimited alt in the color slot (the g and b values remain unchanged)
        init_shader(); // update the alt visually
    } else if(jump_pressed){ // input to decrement your current real alt to the next row [Edit optional]
        var curRealAlt = get_color_profile_slot_r(0, 8); // get your current unlimited alt
        curRealAlt -= 16; // go down a row
        if(curRealAlt < 0){ // if you pass the smallest alt you have
            while(curRealAlt+16 < get_color_profile_slot_b(0, 8)){ // could not think of better math cause dumb
                curRealAlt += 16; // go to the last row
            }
        }
        clear_button_buffer(PC_JUMP_PRESSED); // so that one input only decreases the alt once (change this with the above [Edit optional])
        set_color_profile_slot(0, 8, curRealAlt, get_color_profile_slot_g(0, 8), get_color_profile_slot_b(0, 8)); // update the unlimited alt in the color slot (the g and b values remain unchanged)
        init_shader(); // update the alt visually
    }
}

}

// FSpecial - Cargo Throw
{


if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

if (attack == AT_FSPECIAL && ((window = 3 && window_timer > 15) || cargo_timer < 1)){
    window = 14;
} 

if (attack != AT_FSPECIAL){
    cargo_timer = 60 + cargo_wait;
}

}



if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 27;
    trummelcodecsprite1 = sprite_get("nothing");
    trummelcodecsprite2 = sprite_get("nothing");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He-he-here we go!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;				  //

    trummelcodecline[page,1] = "So they're finally here,";
    trummelcodecline[page,2] = "performing for you";
    trummelcodecline[page,3] = "If you know the words,";
    trummelcodecline[page,4] = "you can join in too";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;				  //

    trummelcodecline[page,1] = "Put your hands together,";
    trummelcodecline[page,2] = "if you want to clap";
    trummelcodecline[page,3] = "As we take you through";
    trummelcodecline[page,4] = "this monkey rap!";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Huh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "DK";
    trummelcodecline[page,4] = "Donkey Kong";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;				  //

    trummelcodecline[page,1] = "He's the leader of the";
    trummelcodecline[page,2] = "bunch. you know him well";
    trummelcodecline[page,3] = "He's finally back";
    trummelcodecline[page,4] = "to kick some tail";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;				  //

    trummelcodecline[page,1] = "His coconut gun";
    trummelcodecline[page,2] = "can fire in spurts";
    trummelcodecline[page,3] = "If he shoots ya,";
    trummelcodecline[page,4] = "it's gonna hurt!";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;				  //

    trummelcodecline[page,1] = "He's bigger, faster,";
    trummelcodecline[page,2] = "and stronger too";
    trummelcodecline[page,3] = "He's the first member";
    trummelcodecline[page,4] = "of the DK crew!";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Huh";
    trummelcodecline[page,2] = "DK, Donkey Kong";
    trummelcodecline[page,3] = "DK";
    trummelcodecline[page,4] = "Donkey Kong is here";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;				  //

    trummelcodecline[page,1] = "This Kong's got style,";
    trummelcodecline[page,2] = "so listen up dudes";
    trummelcodecline[page,3] = "She can shrink in size,";
    trummelcodecline[page,4] = "to suit her mood";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;				  //

    trummelcodecline[page,1] = "She's quick and nimble";
    trummelcodecline[page,2] = "when she needs to be";
    trummelcodecline[page,3] = "She can float through the";
    trummelcodecline[page,4] = "air and climb up trees!";
    page++;
    
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;				  //

    trummelcodecline[page,1] = "If you choose her,";
    trummelcodecline[page,2] = "you'll not choose wrong";
    trummelcodecline[page,3] = "With a skip and a hop,";
    trummelcodecline[page,4] = "she's one cool Kong!";
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Huh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "DK";
    trummelcodecline[page,4] = "Donkey Kong";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;				  //

    trummelcodecline[page,1] = "He has no style,";
    trummelcodecline[page,2] = "he has no grace";
    trummelcodecline[page,3] = "Th-this Kong";
    trummelcodecline[page,4] = "has a funny face";
    page++;
    
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;				  //

    trummelcodecline[page,1] = "He can handstand";
    trummelcodecline[page,2] = "when he needs to";
    trummelcodecline[page,3] = "And stretch his arms out,";
    trummelcodecline[page,4] = "just for you";
    page++;
    
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;				  //

    trummelcodecline[page,1] = "Inflate himself";
    trummelcodecline[page,2] = "just like a balloon";
    trummelcodecline[page,3] = "This crazy Kong";
    trummelcodecline[page,4] = "just digs this tune!";
    page++;
    
    //Page 15
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Huh";
    trummelcodecline[page,2] = "DK, Donkey Kong";
    trummelcodecline[page,3] = "DK";
    trummelcodecline[page,4] = "Donkey Kong is here";
    page++;
    
    //Page 16
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;				  //

    trummelcodecline[page,1] = "He's back again";
    trummelcodecline[page,2] = "and about time too";
    trummelcodecline[page,3] = "And this time";
    trummelcodecline[page,4] = "he's in the mood";
    page++;
    
    //Page 17
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;				  //

    trummelcodecline[page,1] = "He can fly real high";
    trummelcodecline[page,2] = "with his jetpack on";
    trummelcodecline[page,3] = "With his pistols out,";
    trummelcodecline[page,4] = "he's one tough Kong!";
    page++;
    
    //Page 18
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;				  //

    trummelcodecline[page,1] = "He'll make you smile";
    trummelcodecline[page,2] = "when he plays his tune";
    trummelcodecline[page,3] = "But Kremlings beware";
    trummelcodecline[page,4] = "'cause he's after you!";
    page++;
    
    //Page 19
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Huh";
    trummelcodecline[page,2] = "DK";
    trummelcodecline[page,3] = "Donkey Kong";
    trummelcodecline[page,4] = "Huh";
    page++;
    
    //Page 20
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;				  //

    trummelcodecline[page,1] = "Finally, he's here";
    trummelcodecline[page,2] = "for you. It's the last";
    trummelcodecline[page,3] = "member of the DK crew!";
    trummelcodecline[page,4] = "This Kong's so strong,";
    page++;
    
    //Page 21
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;				  //

    trummelcodecline[page,1] = "it isn't funny";
    trummelcodecline[page,2] = "Can make a Kremling";
    trummelcodecline[page,3] = "cry out for mummy";
    trummelcodecline[page,4] = "Can pick up a boulder";
    page++;
    
    //Page 22
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;				  //

    trummelcodecline[page,1] = "with relative ease";
    trummelcodecline[page,2] = "Makes crushing rocks";
    trummelcodecline[page,3] = "seem such a breeze";
    trummelcodecline[page,4] = "He may move slow,";
    page++;
    
    //Page 23
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;				  //

    trummelcodecline[page,1] = "he can't jump high";
    trummelcodecline[page,2] = "But this Kong's";
    trummelcodecline[page,3] = "one hell of a guy!";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 24
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "C'mon Cranky";
    trummelcodecline[page,2] = "take it to the";
    trummelcodecline[page,3] = "fridge";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 25
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Walnuts, peanuts,";
    trummelcodecline[page,2] = "pineapple smells";
    trummelcodecline[page,3] = "Grapes, melons, oranges";
    trummelcodecline[page,4] = "and coconut shells";
    page++; 
    
    //Page 26
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Aww yeah!";
    trummelcodecline[page,2] = "Walnuts, peanuts,";
    trummelcodecline[page,3] = "pineapple smells";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 27
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Grapes, melons,";
    trummelcodecline[page,2] = "oranges";
    trummelcodecline[page,3] = "and coconut shells";
    trummelcodecline[page,4] = "Aww yeah!";
    page++; 
}

//Kirby Ability
if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirby_dk");
var ability_hurt = sprite_get("kirby_dk_hurt");
var ability_icon = sprite_get("kirby_icon") //Optional
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get

set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 11);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 46);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}

if ("enemykirby" in self && enemykirby != undefined) { //if kirby is in a match & swallowed
	with oPlayer {
	    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && 
		(attack == AT_EXTRA_3 && get_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH) == 2)) {
			
			if (free){
			    can_jump = true;
			    can_shield = true;
			    move_cooldown[AT_EXTRA_3] = 60;
			}
			
    	}
	}
}

//Runes Setup

if (runeA || has_rune("A")){
	if (attack == AT_NAIR && state == PS_ATTACK_AIR){
		move_cooldown[AT_NAIR] = 10;
	}
	set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -6);
	set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
}

if (runeB || has_rune("B")){
        max_djumps = 2
	} 
	else {
        max_djumps = 1;
    }

if (runeD || has_rune("D")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 1.0);
}

if (runeE || has_rune("E")){
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
	set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
	set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
	set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
	set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
}

if (has_rune("E")){
	runeE = true;
}

if (runeF || has_rune("F")){
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 18);
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 197);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
}

if (runeH || has_rune("H")){
	set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 2000);
	set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 2000);
	set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 2000);
}

if (runeI || has_rune("I")){
	set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 35);
	set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 35);
	set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 35);
	set_hitbox_value(AT_TAUNT, 4, HG_BASE_HITPAUSE, 35);
	set_hitbox_value(AT_TAUNT, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_TAUNT, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_TAUNT, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_TAUNT, 4, HG_EFFECT, 11);	
}

if (runeJ || has_rune("J")){
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 4, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 6, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 7, HG_EXTRA_HITPAUSE, 45);
	set_hitbox_value(AT_USPECIAL, 8, HG_EXTRA_HITPAUSE, 45);
}

if (runeK || has_rune("K")){
	set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 300);
}

if (runeN || has_rune("N")){
	if (state == PS_ATTACK_GROUND && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
		super_armor = true;
		move_cooldown[AT_FSTRONG] = 30;
		move_cooldown[AT_USTRONG] = 30;
		move_cooldown[AT_DSTRONG] = 30;
	}
}

if (runeO || has_rune("O")){
	punch_timer = 130;
	punch_charged = true;
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL){
		move_cooldown[AT_NSPECIAL] = 30;
	}
}

// USpecial - Barrel Launch
{
if (attack == AT_USPECIAL){
	if (special_down){
		barrel_explode = false;
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, -10);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 12);
	set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 14);
	set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 6, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 7, HG_EXTRA_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 8, HG_EXTRA_HITPAUSE, 0);
		
	}
	if (!special_down){
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
	}
	if (window == 3 && window_timer == 2){
		launch_now = true;
	}
}

if (launch_now = true){
	move_cooldown[AT_USPECIAL] = 999;	
}

if (state == PS_HITSTUN && move_cooldown[AT_USPECIAL] = 999){
    move_cooldown[AT_USPECIAL] = 1;
    launch_now = false;
    barrel_jump = false;
}

if (!free && move_cooldown[AT_USPECIAL] = 999){
    move_cooldown[AT_USPECIAL] = 30;
    launch_now = false;
    barrel_jump = false;
}

if (state == PS_WALL_JUMP && move_cooldown[AT_USPECIAL] = 999 && barrel_jump = false){
    move_cooldown[AT_USPECIAL] = 1;
    launch_now = false;
    barrel_jump = true;
}

if (barrel_jump = true && attack == AT_USPECIAL){
	has_walljump = false;
}



if (invincible = true){
	move_cooldown[AT_USPECIAL] = 2;
}

if ((state == PS_WALL_JUMP || state == PS_HITSTUN || !free) && (barrel.state_timer > 59 )){
    move_cooldown[AT_USPECIAL] = 1;
}

if (barrel.barrel_hitbox.was_parried = true){
	barrel.barrel_hitbox.destroyed = true;
	barrel.sprite_index = sprite_get("nothing");
	barrel.shoulddie = true;
}
}





if (barrel_explode = true && hit_player_obj.state == PS_HITSTUN){
	barrel.barrel_hitbox.hit_effect = 143;
	barrel.barrel_hitbox.kb_scale = .6;
	barrel.barrel_hitbox.damage = 10;
	barrel.barrel_hitbox.hitpause = 30;
	barrel.barrel_hitbox.sound_effect = sound_get("barrel_explode");
	
}
else {
	if (!special_down){
	barrel.barrel_hitbox.hit_effect = 162;
	barrel.barrel_hitbox.kb_scale = 0;
	barrel.barrel_hitbox.damage = 5;
	barrel.barrel_hitbox.hitpause = 0;
	barrel.barrel_hitbox.sound_effect = sound_get("barrel_shot");
	barrel_explode = false;
		hit_player_obj.outline_color = [ 0, 0, 0];
	}
}

if ((runeM || has_rune("M")) && launch_now = false){
	barrel.barrel_hitbox.hit_effect = 143;
	barrel.barrel_hitbox.kb_scale = .6;
	barrel.barrel_hitbox.damage = 10;
	barrel.barrel_hitbox.hitpause = 30;
	barrel.barrel_hitbox.sound_effect = sound_get("barrel_explode");
}

if (hit_player_obj.state != PS_HITSTUN){
	hit_player_obj.outline_color = [ 0, 0, 0];
}

cargo_wait = get_player_damage(hit_player_obj.player)/5;



