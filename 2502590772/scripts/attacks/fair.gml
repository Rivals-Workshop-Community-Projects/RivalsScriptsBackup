if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_FAIR;
if (species_id == 1) this_attack = 45;

set_attack_value(this_attack, AG_CATEGORY, 1);
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("fair"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 6);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_attack, AG_LANDING_LAG, 6);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -1);
set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 7);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -1);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, get_window_value(this_attack, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 10);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack, 1);

set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 4);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 22);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -8);
set_hitbox_value(this_attack, 1, HG_WIDTH, 68);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 72);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 1, HG_ANGLE, 55);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



/*
set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 5);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 22);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -23);
set_hitbox_value(this_attack, 2, HG_WIDTH, 55);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 85);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 3);
set_hitbox_value(this_attack, 2, HG_ANGLE, 45);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 7.33);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_attack, 2, HG_ANGLE_FLIPPER, 6);
*/

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);