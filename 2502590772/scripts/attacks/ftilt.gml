if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_FTILT;
if (species_id == 1) this_attack = 2;

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("ftilt"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 7);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED, 1.5);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 2);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(this_attack,1);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -25);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 53);
set_hitbox_value(this_attack, 1, HG_WIDTH, 76);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 52);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 3);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(this_attack, 1, HG_ANGLE, 45);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);