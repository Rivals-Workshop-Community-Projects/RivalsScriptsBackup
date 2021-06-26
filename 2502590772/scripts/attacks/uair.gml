if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_UAIR;
if (species_id == 1) this_attack = 48;

set_attack_value(this_attack, AG_CATEGORY, 1);
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("uair"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_attack, AG_LANDING_LAG, 6);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 5);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(this_attack, 1, AG_WINDOW_SFX, sound_get("uair_swing"));
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -1);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
//set_window_value(this_attack, 2, AG_WINDOW_VSPEED, -.5);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 1);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 12);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 4); // 5
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack, 1);


set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -48);
set_hitbox_value(this_attack, 1, HG_WIDTH, 88);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 75);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 3);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 1, HG_ANGLE, 90);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6.7);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 6);



#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);