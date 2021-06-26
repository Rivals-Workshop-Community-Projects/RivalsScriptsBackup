if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_UTILT;
if (species_id == 1) this_attack = 39;

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("utilt"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 3);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 13);

set_num_hitboxes(this_attack, 2);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -54);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, -2);
set_hitbox_value(this_attack, 1, HG_WIDTH, 80);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 57);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 1, HG_ANGLE, 110);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_attack, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -42);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, -48);
set_hitbox_value(this_attack, 2, HG_WIDTH, 50);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 70);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 7);
set_hitbox_value(this_attack, 2, HG_ANGLE, 80);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(this_attack, 2, HG_HIT_LOCKOUT, 3);



#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);