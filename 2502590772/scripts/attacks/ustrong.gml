if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_USTRONG;
if (species_id == 1) this_attack = 43;

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("ustrong"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 5);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 3);
set_attack_value(this_attack, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED, 1.5);
set_window_value(this_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, .997);

//post_charge startup
set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(this_attack, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, sound_get("ustrong_swing"));
set_window_value(this_attack, 2, AG_WINDOW_SFX_FRAME, 1);

//active
set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(this_attack, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(this_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 5, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(this_attack, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack, 2);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -90);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, -2);
set_hitbox_value(this_attack, 1, HG_WIDTH, 84);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 76);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(this_attack, 1, HG_ANGLE, 90);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 3);
set_hitbox_value(this_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -25);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, -4);
set_hitbox_value(this_attack, 2, HG_WIDTH, 80);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 3);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 2, HG_ANGLE, 90);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(this_attack, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);