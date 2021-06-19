if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_DSTRONG;
//if (species_id == 1) this_attack = 42;

repeat (2) {

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("dstrong"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 3);
set_attack_value(this_attack, AG_STRONG_CHARGE_WINDOW, (this_attack == AT_DSTRONG));
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
//set_window_value(this_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, .999);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, sound_get("bair3"));
set_window_value(this_attack, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 10);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack,2);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 5);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 0);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -2);
set_hitbox_value(this_attack, 1, HG_WIDTH, 140);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 12);
set_hitbox_value(this_attack, 1, HG_SHAPE, 1);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(this_attack, 1, HG_ANGLE, 65);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX,  sound_get("bair2"));
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 6); //outward knockback
set_hitbox_value(this_attack, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(this_attack, 2, HG_WINDOW, 3);
set_hitbox_value(this_attack, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 5);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 0);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -32);
set_hitbox_value(this_attack, 2, HG_WIDTH, 72);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 64);
set_hitbox_value(this_attack, 2, HG_SHAPE, 2);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 7);
set_hitbox_value(this_attack, 2, HG_ANGLE, 65);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, sound_get("bair1"));
set_hitbox_value(this_attack, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(this_attack, 2, HG_HIT_LOCKOUT, 6);

//repeat this and assign it to AT_DTHROW
this_attack = AT_DTHROW;
}

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);