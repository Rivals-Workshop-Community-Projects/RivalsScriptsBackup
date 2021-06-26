if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_BAIR;
if (species_id == 1) this_attack = 46;


set_attack_value(this_attack, AG_CATEGORY, 1);
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("bair"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_attack, AG_LANDING_LAG, 10);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//startup 1
set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -1);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 1);

//startup 2
set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_attack, 2, AG_WINDOW_VSPEED, -1);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, sound_get("bair3"));
set_window_value(this_attack, 2, AG_WINDOW_SFX_FRAME, 0);

//attack
set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 10);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 9);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(this_attack, 2);

//sweetspot
set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, -20);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 1, HG_WIDTH, 12);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 12);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(this_attack, 1, HG_ANGLE, 140);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_attack, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, sound_get("bair1"));
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 197);

//sourspot
set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 3);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 6);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, -18);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -18);
set_hitbox_value(this_attack, 2, HG_WIDTH, 62);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 62);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 2, HG_ANGLE, 120);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, .66);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, sound_get("bair2"));
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 20);


#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);
