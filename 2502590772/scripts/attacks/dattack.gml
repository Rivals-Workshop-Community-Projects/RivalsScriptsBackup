if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_DATTACK;
if (species_id == 1) this_attack = 44;

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("dattack"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 5);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 9);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
if (is_master_player) exit; //efficiency: don't load attacks on master player

set_window_value(this_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(this_attack, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, sound_get("quickattack"));

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED, 14);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED, 4);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(this_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 5, AG_WINDOW_LENGTH, 7);
set_window_value(this_attack, 5, AG_WINDOW_HSPEED, 1);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(this_attack, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(this_attack, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(this_attack, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(this_attack, 1);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 5);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -24);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, -6);
set_hitbox_value(this_attack, 1, HG_WIDTH, 52);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 38);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 1, HG_ANGLE, 60);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);