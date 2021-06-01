if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get_pm("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


//startup 1
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("charge_tell")); 

//armor window
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 41);

//startup 2
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 43);

//level 1 - plusle
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("bair1"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);

//level 2 - plusle
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("dspec_lvl2"));
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

//level 3 - plusle
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("thunder_slam"));
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);

//level 1 - minun
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_SFX, sound_get("bair1"));
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);

//level 2 - minun
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_SFX, sound_get("bair2"));
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);

//level 3 - minun
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 46);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_SFX, sound_get("bair2"));
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 48);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL_2, 6);

var y_offset = -30;
var diameter_lvl_1 = 120;
var diameter_lvl_2 = 170;
var diameter_lvl_3 = 220;


//lvl 1
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH,  diameter_lvl_1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, diameter_lvl_1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);

//lvl 2
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH,  diameter_lvl_2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, diameter_lvl_2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 1);

//lvl 3
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH,  diameter_lvl_3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, diameter_lvl_3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 1.8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 1);


//lvl 1 - minun
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH,  diameter_lvl_1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, diameter_lvl_1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 2); //can't flinch

//lvl 2 - minun
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH,  diameter_lvl_2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, diameter_lvl_2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, sound_get("bair3"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_TECHABLE, 1); //can't tech
set_hitbox_value(AT_DSPECIAL_2, 5, HG_FORCE_FLINCH, 2); //can't flinch
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, 2);


//lvl 3 - minun
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH,  diameter_lvl_3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, diameter_lvl_3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX,  sound_get("bair3"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_TECHABLE, 1); //can't tech
set_hitbox_value(AT_DSPECIAL_2, 6, HG_FORCE_FLINCH, 2); //can't flinch
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, 3);



//bird guy alt stuff
var alt_clr = get_player_color("online_css" in self ? 0 : player);
if (alt_clr == 15) {
    if (species_id == 0) set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("bgplusprep")); 
    else                 set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("bgminusprep")); 
    set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("bgplus1"));
    set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("bgplus2"));
    set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("bgplus3"));
    set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_SFX, sound_get("bgminus3"));
    set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_SFX, sound_get("bgminus12"));
    set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_SFX, sound_get("bgminus12"));
}

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);