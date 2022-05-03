//=========================================================
// FSPECIAL WEAPON INITIALIZATION
//=========================================================

switch(inv_firearm){
    
    case 2: // EQ_M9
        init_m9();
        if (is_crouching) init_m9_crawl();
    break;
    
    case 3: // EQ_SOCOM
        init_socom();
        if (is_crouching) init_socom_crawl();
    break;
    
    case 4: // EQ_MOSIN
        init_mosin();
        if (is_crouching) init_mosin_crawl();
    break;
    
    case 5: // EQ_M4
        init_m4();
        if (is_crouching) init_m4_crawl();
    break;
    
    case 6: // EQ_STINGER
        init_m9();
    break;
    
    case 7: // EQ_PATRIOT
        init_m9();
    break;
    
    default:
        init_m9();
    break;
    
}


//=========================================================
// FUNCTIONS
//=========================================================

//------------------------------------------------------------------------------
// Init M9
//------------------------------------------------------------------------------
#define init_m9
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_torso_fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_pistol_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// Aim
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Fire
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Chamber
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_w_pistol_chamber"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

// Reload - Unload Mag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_unload"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

// Reload - Grab New Mag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_pouch"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

// Reload - Load Mag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_load"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

// Lower
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_w_pistol_lower"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 4);



//------------------------------------------------------------------------------
// Init M9 Crawl
//------------------------------------------------------------------------------
#define init_m9_crawl
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_legs_crouch"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, crouchbox_spr);



//------------------------------------------------------------------------------
// Init SOCOM
//------------------------------------------------------------------------------
#define init_socom
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_torso_fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);


set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_pistol_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// Aim
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Fire
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Chamber
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_w_pistol_chamber"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

// Reload - Unload Mag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_unload"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

// Reload - Grab New Mag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_pouch"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

// Reload - Load Mag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_load"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

// Lower
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_w_pistol_lower"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 4);


//------------------------------------------------------------------------------
// Init SOCOM Crawl
//------------------------------------------------------------------------------
#define init_socom_crawl
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_legs_crouch"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, crouchbox_spr);



//------------------------------------------------------------------------------
// Init M4
//------------------------------------------------------------------------------
#define init_m4
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_torso_fspecial_rifle"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_rifle_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// Aim
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Fire
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Chamber
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_w_rifle_chamber_m4"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 6);

// Reload - Unload Mag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_unload_01"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

// Reload - Grab New Mag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_pouch"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

// Reload - Load Mag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_load"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

// Lower
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_w_rifle_lower"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 4);



//------------------------------------------------------------------------------
// Init M4 Crawl
//------------------------------------------------------------------------------
#define init_m4_crawl
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_legs_crouch"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, crouchbox_spr);



//------------------------------------------------------------------------------
// Init Mosin
//------------------------------------------------------------------------------
#define init_mosin
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_torso_fspecial_rifle"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_rifle_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// Aim
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Fire
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Chamber
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 72);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_w_rifle_chamber_mosin_01"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 30);

// Reload - Unload Mag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_rifle_chamber_mosin_01"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 12);

// Reload - Grab New Mag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_pouch"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

// Reload - Load Clip
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 48);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_load"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

// Lower
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_w_rifle_lower"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 4);



//------------------------------------------------------------------------------
// Init Mosin Crawl
//------------------------------------------------------------------------------
#define init_mosin_crawl
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_legs_crouch"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, crouchbox_spr);



