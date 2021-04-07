init_shader();

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 15;
    trummelcodecsprite1 = sprite_get( "yuutocodec" );
    trummelcodecsprite2 = sprite_get( "yuutocodec" );
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "cookie smell";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Ahh! Of course!";
    trummelcodecline[page,2] = "That's because you're";
    trummelcodecline[page,3] = "fighting against";
    trummelcodecline[page,4] = "Yuuto Ichika!";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "she a cookie";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Uhh, no. That's";
    trummelcodecline[page,2] = "because she's always";
    trummelcodecline[page,3] = "giving cookies to";
    trummelcodecline[page,4] = "everyone she meets.";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I've heard that she";
    trummelcodecline[page,2] = "came from another";
    trummelcodecline[page,3] = "dimension.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "And that she";
    trummelcodecline[page,2] = "gives cookies to";
    trummelcodecline[page,3] = "make strangers";
    trummelcodecline[page,4] = "into her friends.";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "With that, she";
    trummelcodecline[page,2] = "gets them to give";
    trummelcodecline[page,3] = "her their skills.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "lame bootleg";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "As lame as that";
    trummelcodecline[page,2] = "sounds, be mindful";
    trummelcodecline[page,3] = "of the spells";
    trummelcodecline[page,4] = "she copied.";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Her rocks can";
    trummelcodecline[page,2] = "hurt when she";
    trummelcodecline[page,3] = "slams it";
    trummelcodecline[page,4] = "on you.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "rock cookie";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Please don't eat";
    trummelcodecline[page,2] = "her rocks.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "She can make";
    trummelcodecline[page,2] = "those rocks";
    trummelcodecline[page,3] = "shoot bullets,";
    trummelcodecline[page,4] = "you know!";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Not only that,";
    trummelcodecline[page,2] = "she can ride";
    trummelcodecline[page,3] = "the rock and";
    trummelcodecline[page,4] = "crash it at you!";
    page++; 
    
    //Page 14
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "flying cookie";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Enough! No cookies";
    trummelcodecline[page,2] = "for you!";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
}

if (swallowed)
{
    swallowed = 0;
    
    var ability_spr = sprite_get("kirbyability");
    var ability_hurt = sprite_get("kirbyability_hurt");
    var ability_sound = sound_get("sfx_yuuto_flame");
    var ability_magic = sound_get("sfx_yuuto_magic");
    var ability_kaboom = sound_get("sfx_yuuto_explosion");
    var ability_flame = sprite_get("flameroad");
    var ability_explosion = sprite_get("explosionbigger");
    var ability_icon = sprite_get("kirbicon");
    
    with (enemykirby)
    {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        //set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_magic);
        //set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, -3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 17);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_magic);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 6);
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sound);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, -2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, -2);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_VSPEED, -2);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.1);
        
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 17);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX, ability_kaboom);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX_FRAME, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 6);
        
        set_num_hitboxes(AT_EXTRA_3, 6);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 50);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 78);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .01);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 251);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 100);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 78);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 70);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .01);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 251);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -0);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 0.5);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 3);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 5);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 120);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 78);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 40);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 70);
        set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE_FLIPPER, 4);
        set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .01);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 251);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
        set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -0);
        set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 4);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HITSTUN_MULTIPLIER, 0.5);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
        
        
        set_hitbox_value(AT_EXTRA_3, 4, HG_PARENT_HITBOX, 4);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 6);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 7);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 120);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -45);
        set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 150);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 105);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 3);
        set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 70);
        set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, .30);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
        set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 4, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_PARRY_STUN, 1);
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
        
        
        set_hitbox_value(AT_EXTRA_3, 5, HG_PARENT_HITBOX, 5);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 35);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 0);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 0);
        set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 0);
        set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 0);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
        set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 5, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_SPRITE, ability_flame);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.6);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, 10);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_GROUND_FRICTION, 0.4);
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_AIR_FRICTION, 0.4);
        set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT, 1);
        
        set_hitbox_value(AT_EXTRA_3, 6, HG_PARENT_HITBOX, 6);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW, 6);
        set_hitbox_value(AT_EXTRA_3, 6, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 6, HG_LIFETIME, 30);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_X, 120);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HITBOX_Y, -40);
        set_hitbox_value(AT_EXTRA_3, 6, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PRIORITY, 0);
        set_hitbox_value(AT_EXTRA_3, 6, HG_DAMAGE, 0);
        set_hitbox_value(AT_EXTRA_3, 6, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 6, HG_BASE_KNOCKBACK, 0);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 6, HG_KNOCKBACK_SCALING, 0);
        set_hitbox_value(AT_EXTRA_3, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
        set_hitbox_value(AT_EXTRA_3, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
        set_hitbox_value(AT_EXTRA_3, 6, HG_BASE_HITPAUSE, 2);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 6, HG_HITSTUN_MULTIPLIER, 1);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_SPRITE, ability_explosion);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, 0);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_GROUND_FRICTION, 0.4);
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_AIR_FRICTION, 0.4);
        set_hitbox_value(AT_EXTRA_3, 6, HG_VISUAL_EFFECT, 1);
        
        newicon = ability_icon;
    }
}


if (instance_number(oPlayer) > 1 )
{
    var cur_dist = 9999;
    var cur_plr = noone;
    with (oPlayer)
    {
        if (id != other.id )
        {

            if (cur_dist > point_distance(x,y,other.x,other.y)) 
            {
                cur_dist = point_distance(x,y,other.x,other.y);
                cur_plr = id;
            }

        }
        
    }
    closestEnemy = cur_plr;
}
else
{
    closestEnemy = player_id;
}
