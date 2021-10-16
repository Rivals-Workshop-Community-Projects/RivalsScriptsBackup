//Highwind Calculations
if (waryowl >= 500)
{
    //dash_speed = 7;
    //walk_speed = 4;
    //air_accel = .6;
    walljump_vsp = 13;
    max_fall = 8;
    knockback_adj = 0.9;
}
else
{
    //dash_speed = 6;
    //walk_speed = 2.5;
   // air_accel = .4;
    walljump_vsp = 11;
    max_fall = 10;
    knockback_adj = .95;
}

if has_hit == true and waryowl_up == false
{
	waryowl_up = true
}

if has_rune("F") and waryowl >= 500
{
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 14);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
	
	set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 8);
	set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .6);
	
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 10);
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, .7);
	
	set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
	set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 14);
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 11);
	set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
	
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 8);
	
}
else
{
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
	
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
	
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
	
	set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
	set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .3);
	
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 5);
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, .6);
	
	set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 10);
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
}

if has_rune("I") and helmet = 1
{
	jump_start_time = 3;
	jump_speed = 14;
	walk_speed = 3.5;
	dash_speed = 8;
	wave_land_adj = 1.20;
	wave_friction = .3;
}
else
{
	jump_start_time = 6;
	jump_speed = 11;
	walk_speed = 2.5;
	dash_speed = 6;
	wave_land_adj = 1.05;
	wave_friction = .7;
}

if has_rune("L") and waryowl < 1000
{
	waryowl += 1;
}

if waryowl_up == true and (state == PS_IDLE or state == PS_IDLE_AIR or state == PS_HITSTUN or PS_HITSTUN_LAND){
	waryowl_up = false
}

if helmet == 1
{
	knockback_adj = knockback_adj + .1;
}

updateHelmet();
if (runeN && state == PS_CROUCH) tryParry();

if (runesUpdated)
{
	if (runeA)
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 30);
	else
		reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
	if (runeC)
	{
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
		
	}
	else
	{
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT);
	}
	
	if (runeD)
		max_djumps = 2;
	else
		max_djumps = 1;
	if (runeE)
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 22);
	else
		reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
	if (runeI)
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
	else
		reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED);
	if (runeM)
		set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 38);
	else
		reset_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE);
}

if (runeJ && state == PS_CROUCH && get_gameplay_time() % 20 == 0 && get_player_damage(player) > 0)
	set_player_damage(player, get_player_damage(player) - 1);

if (waryowl < 0)
    waryowl = 0;
else if (waryowl > 1000)
    waryowl = 1000;

//if (state == PS_WAVELAND)
    //waryowl += (runeK?5:2);

if (introTimer2 < 4)
{
    introTimer2++;
} 
else
{
    introTimer2 = 0;
    introTimer++;
}

with (oPlayer)
    if ("sworded" in self && sworded > 0)
        sworded--;
        
if attack == AT_DSPECIAL and free = true{
	if window == 3 and window_timer >= 6 or window >= 4{
		create_hitbox(AT_DSPECIAL, 5, x, y)
	}
}

draw_indicator = !(introTimer < 10);

//trummel
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 14;
    trummelcodecsprite1 = sprite_get("trummelcodecsprite1");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "goodness! never";
    trummelcodecline[page,2] = "thought i'd see the";
    trummelcodecline[page,3] = "ash would pick  up";
    trummelcodecline[page,4] = "a sword!";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...or wear armor,";
    trummelcodecline[page,2] = "or change their fur";
    trummelcodecline[page,3] = "color... have they";
    trummelcodecline[page,4] = "been working out?";
    page++;
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "That's NOT Ash!";
    trummelcodecline[page,2] = "Looking at the blade,";
    trummelcodecline[page,3] = "this must be the";
    trummelcodecline[page,4] = "Knight of the Rolling-";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Wind, SLASHE! She";
    trummelcodecline[page,2] = "was thought to have";
    trummelcodecline[page,3] = "perished hundreds of";
    trummelcodecline[page,4] = "years ago!!";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "i'm *pretty* sure";
    trummelcodecline[page,2] = "that's just ash";
    trummelcodecline[page,3] = "with armor and";
    trummelcodecline[page,4] = "a sword...";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "The sword she wields";
    trummelcodecline[page,2] = "is called the 'Highwind',";
    trummelcodecline[page,3] = "it allows to bend the";
    trummelcodecline[page,4] = "wind to her will.";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "woag";
    trummelcodecline[page,2] = "got tired of punching";
    trummelcodecline[page,3] = "the air i assume?";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Make no mistake, Slashe";
    trummelcodecline[page,2] = "is all about punching,";
    trummelcodecline[page,3] = "her fists are actually";
    trummelcodecline[page,4] = "her sweetspots!";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Her blade gives her";
    trummelcodecline[page,2] = "extra reach, and";
    trummelcodecline[page,3] = "boosts her agility";
    trummelcodecline[page,4] = "when using it's powers!";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "The war cry she uses to";
    trummelcodecline[page,2] = "tanut opponents also";
    trummelcodecline[page,3] = "gives her a big boost.";
    trummelcodecline[page,4] = "Same with her parry!";
    page++;
    
    //Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "sounds like she finally";
    trummelcodecline[page,2] = "learned how to recover";
    trummelcodecline[page,3] = "off stage!";
    trummelcodecline[page,4] = "...how troublesome.";
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "well, as long as we don't";
    trummelcodecline[page,2] = "let her taunt and avoid";
    trummelcodecline[page,3] = "her specials, we should";
    trummelcodecline[page,4] = "be in the clear.";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Right! Let's send this";
    trummelcodecline[page,2] = "crusading cougar back";
    trummelcodecline[page,3] = "to the dark ages!";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 13
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "cougar?! i think ash";
    trummelcodecline[page,2] = "looks quite young!";
    trummelcodecline[page,3] = "how insulting, alto.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "For the last time,";
    trummelcodecline[page,2] = "This ISN'T ASH.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}

//kirby
if swallowed {
    swallowed = 0
    var ability_spr = sprite_get("atkextra3")
    var ability_hurt = sprite_get("atkextra3_hurt")
    var ability_sound1 = sound_get("Rocket Hit")
    var ability_sound2 = sound_get("bell_ding")
    var ability_sound3 = sound_get("breezedrill_windup")
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 45);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX,ability_sound3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 15);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 11);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_WHIFFLAG, 10);
        
        set_num_hitboxes(AT_EXTRA_3,5);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 47);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -36);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 69);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 35);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 50);
        set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 197);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sound1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 10);
        
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 100);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 74);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 15);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 40);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .9);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 4);
        set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 10);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 74);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 30);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 8);
        set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 40);
        set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_LOCKOUT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 5);
        set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 10);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 74);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 30)
        set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 5);
        set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 40);
        set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_LOCKOUT, 1);
    }
}

#define updateHelmet()
{
    if (lasthelmet != helmet) // we don't want this running every frame
    {
        lasthelmet = helmet;
        if (helmet == 0) //change attack animations to with helmet sprites. resets upon death
        {
        	//aerials
        	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
        	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
        	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
        	set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
        	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
        	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
        	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
        	set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
        	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
        	set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
        	//jabs and tilts
        	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
        	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
        	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
        	set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
        	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
        	set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
        	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
        	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
        	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
        	set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
        	//strongs
        	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
        	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
        	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
        	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
        	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
        	set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
        	//specials
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
        	set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
        	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
        	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
        	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
        	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
        	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
        	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
        	set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
        	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
        	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
        	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
        }
        else if (helmet == 1) //change attack animations to helmetless sprites. Check animation.gml for non-attack sprite code
        {
        	//aerials
        	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair2"));
        	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));
        	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair2"));
        	set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair2_hurt"));
        	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair2"));
        	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
        	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
        	set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));
        	set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair2"));
        	set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));
        	//jabs and tilts
        	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab2"));
        	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab2_hurt"));
        	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt2"));
        	set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt2_hurt"));
        	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt2"));
        	set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt2_hurt"));
        	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt2"));
        	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt2_hurt"));
        	set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack2"));
        	set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));
        	//strongs
        	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
        	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
        	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
        	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));
        	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
        	set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong2_hurt"));
        	//specials
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
        	set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial2"));
        	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
        	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));
        	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial2"));
        	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
        	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
        	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial2"));
        	set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
        	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2"));
        	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial2"));
        	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial2"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial2"));
        	set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
        }
    }
}

#define tryParry() // ai parry code
{
	var doParry = false;
	with (pHitBox) // proj
	{
		if (player != other.player && type == 2)
		{
			if (place_meeting(x+hsp*4,y+vsp*4,other))
				doParry = true;
		}
	}
	with (oPlayer) // phys
	{
		if (player != other.player && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
		{
			for (var i = 1; i <= get_num_hitboxes(attack); ++i)
			{
				if (get_hitbox_value(attack, i, HG_HITBOX_TYPE) == 1)
				{
					var firstwindow = get_hitbox_value(attack, i, HG_WINDOW);
					if (firstwindow > 0)
					{
						var prevwindowlen = get_window_value(attack, firstwindow-1, AG_WINDOW_LENGTH);
						var firstwindowframe = get_hitbox_value(attack, i, HG_WINDOW_CREATION_FRAME);
						var hboxlength = get_hitbox_value(attack, i, HG_WIDTH);
						var hboxheight = get_hitbox_value(attack, i, HG_HEIGHT);
						var hboxx = get_hitbox_value(attack, i, HG_HITBOX_X);
						var hboxy = get_hitbox_value(attack, i, HG_HITBOX_Y);
						
						if (abs((x+hboxx*spr_dir)-other.x)<hboxlength
							&& abs((y+hboxy)-other.y)<hboxheight
							&& (firstwindowframe<2)?firstwindow==window+1&&prevwindowlen==window_timer+3:firstwindow==window&&firstwindowframe==window_timer+3)
						{
							doParry = true;
							break;
						}
					}
				}
			}
		}
	}
	if (doParry)
	{
		//shield_down = true;
		//shield_pressed = true;
		//left_down = false;
		//right_down = false;
        set_state(PS_PARRY_START);
	}
}