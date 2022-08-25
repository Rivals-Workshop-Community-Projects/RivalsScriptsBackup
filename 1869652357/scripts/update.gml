if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 10) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

//fx

if (attack == AT_FSPECIAL) && window == 3 {
    spawn_hit_fx( x, y, fspecial_fx );
}

if (attack == AT_FSTRONG) && has_hit && window = 3 && window_timer = 1 && get_player_color(player) != 3 {
    spawn_hit_fx( x, y, cancel_chance );
}

if (attack == AT_DSPECIAL) && has_hit && window_timer = 1 && get_player_color(player) != 3 {
    if window == 2 {
        spawn_hit_fx( x+(24 * spr_dir), y, cancel_chance );
    }
    if window == 4 {
        spawn_hit_fx(  x+(24 * spr_dir), y, cancel_chance );
    }
}

//little mac skin fx
if (attack == AT_FSTRONG) && has_hit && window = 3 && window_timer = 1 && get_player_color(player) == 3 {
    spawn_hit_fx( x, y, cancel_chance2 );
}
//wind vfx change
if get_player_color(player) == 3 or get_player_color(player) == 7 or get_player_color(player) == 8 or get_player_color(player) == 10 or get_player_color(player) == 13 or get_player_color(player) == 18 or get_player_color(player) == 27 or get_player_color(player) == 29{
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
	set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
}
if get_player_color(player) == 2 or get_player_color(player) == 15 or get_player_color(player) == 21 or get_player_color(player) == 25 or get_player_color(player) == 28 {
	set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("flame_proj"));
	set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("flame_proj"));
}

if (attack == AT_DSPECIAL) && has_hit && window_timer = 1 && get_player_color(player) == 3 {
    if window == 2 {
        spawn_hit_fx( x+(24 * spr_dir), y, cancel_chance2 );
    }
    if window == 4 {
        spawn_hit_fx(  x+(24 * spr_dir), y, cancel_chance2 );
    }
}
//check hit_player for this one
/*if (attack == AT_FSPECIAL) && has_hit && window_timer = 1 {
    spawn_hit_fx( x, y, cancel_chance );
}*/

//trummel
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 12;
    trummelcodecsprite1 = sprite_get("trummelcodecsprite1");
    trummelcodecsprite2 = sprite_get("idle");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Keep sharp, Ash!";
    trummelcodecline[page,2] = "They may have fancy";
    trummelcodecline[page,3] = "moves, but you can hit";
    trummelcodecline[page,4] = "em' while they recharge!";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Well now, who might";
    trummelcodecline[page,2] = "these sporty fellows";
    trummelcodecline[page,3] = "be?";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "That's Ash: Feather-";
    trummelcodecline[page,2] = "weight champ of the";
    trummelcodecline[page,3] = "Air Armada Boxing";
    trummelcodecline[page,4] = "League!";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Hey! I wasn't done givin'";
    trummelcodecline[page,2] = "my tips--!";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Air Armada? I see no";
    trummelcodecline[page,2] = "Feathers on her! How";
    trummelcodecline[page,3] = "would those snobs";
    trummelcodecline[page,4] = "let her compete?!";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "The Armada let Julesvale";
    trummelcodecline[page,2] = "citizens compete in their";
    trummelcodecline[page,3] = "boxing league to get";
    trummelcodecline[page,4] = "better public relations.";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "However, they didn't";
    trummelcodecline[page,2] = "expect them to stand";
    trummelcodecline[page,3] = "a chance against their";
    trummelcodecline[page,4] = "flyers. They were wrong!";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Her speed lets her launch";
    trummelcodecline[page,2] = "into the air and pull in";
    trummelcodecline[page,3] = "opponents! She brought";
    trummelcodecline[page,4] = "em down to the ground!";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I'm sure old";
    trummelcodecline[page,2] = "Swiftwing wasn't too";
    trummelcodecline[page,3] = "happy about that...";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Didn't seem like it. As";
    trummelcodecline[page,2] = "she was handed the belt,";
    trummelcodecline[page,3] = "She 'tripped'' on Swift's";
    trummelcodecline[page,4] = "tallon, and fell over the";
    page++;
    
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "railing in front of the";
    trummelcodecline[page,2] = "press and crowd! She";
    trummelcodecline[page,3] = "wasn't phased though.";
    trummelcodecline[page,4] = "...Or hurt, somehow.";
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That sounds about right,";
    trummelcodecline[page,2] = "I'm sure the Armada just";
    trummelcodecline[page,3] = "claimed she was clumsy,";
    trummelcodecline[page,4] = "those specist avians!";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Hellooo? Can y'all even";
    trummelcodecline[page,2] = "see me?! Champ's coach,";
    trummelcodecline[page,3] = "right here! Woof, ain't";
    trummelcodecline[page,4] = "no respect for old dogs!";
    page++;
}

//kirby
if ("swallowed" in self && swallowed) {
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
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 17.57);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
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
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 6);
        set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_WHIFFLAG, 10);
        
        set_num_hitboxes(AT_EXTRA_3,5);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 24);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -31);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 84);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 70);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 197);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sound1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 10);
        
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 30);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -31);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 70);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 10);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 5);
        set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 40);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -31);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 70);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 7);
        set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .3);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_LOCKOUT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 6);
        set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 40);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -31);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 70);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 5);
        set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT, 304);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_burnconsume"));
        set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_LOCKOUT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 7);
        set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 40);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -31);
        set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 70);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 1);
        set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 20);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT, 197);
        set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, ability_sound2);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_LOCKOUT, 1);
    }
}

if superTrue == 1 {
	superTrue = 0
	attack = AT_NSPECIAL_2
	set_attack(AT_NSPECIAL_2)
	vsp = 0
	window = 1
	window_timer = 0
}