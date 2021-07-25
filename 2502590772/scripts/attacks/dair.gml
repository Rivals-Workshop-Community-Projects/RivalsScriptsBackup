if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_DAIR;
if (species_id == 1) this_attack = 47;

set_attack_value(this_attack, AG_CATEGORY, 1);
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("dair"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_attack, AG_LANDING_LAG, 13);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -3);
set_window_value(this_attack, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_VSPEED, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_VSPEED, 10);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 9);
set_window_value(this_attack, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_VSPEED, 9);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(this_attack, 3);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 10);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -18);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 4);
set_hitbox_value(this_attack, 1, HG_WIDTH, 50);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 55);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(this_attack, 1, HG_ANGLE, 60);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6.7);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .66);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 3);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, 12);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 5);
set_hitbox_value(this_attack, 2, HG_WIDTH, 14);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 4);
set_hitbox_value(this_attack, 2, HG_SHAPE, 2);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 7);
set_hitbox_value(this_attack, 2, HG_ANGLE, 270);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


set_hitbox_value(this_attack, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(this_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 3, HG_WINDOW, 4);
set_hitbox_value(this_attack, 3, HG_LIFETIME, 3);
set_hitbox_value(this_attack, 3, HG_HITBOX_Y, -12);
set_hitbox_value(this_attack, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 3, HG_HITBOX_X, 0);
set_hitbox_value(this_attack, 3, HG_WIDTH, 44);
set_hitbox_value(this_attack, 3, HG_HEIGHT, 32);
set_hitbox_value(this_attack, 3, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 3, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 3, HG_ANGLE, 65);
set_hitbox_value(this_attack, 3, HG_BASE_KNOCKBACK, 6.);
set_hitbox_value(this_attack, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(this_attack, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(this_attack, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(this_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);
