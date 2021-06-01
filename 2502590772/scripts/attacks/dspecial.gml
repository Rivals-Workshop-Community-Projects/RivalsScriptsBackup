if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get_pm("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
//set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("trick"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9); //loop infinitely
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 44);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 14);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 14);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 44);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 14);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 7);

//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("hh"));

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL, 0);

//lvl 1
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, get_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH));
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("baton_spawn"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);

//lvl 2
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, get_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH));
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("baton_spawn"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);

//lvl 3
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, get_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH));
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("baton_spawn"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);