set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_NAME, "True DSpecial (AIR ONLY)");
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_MISC, "Input: 41236P~P~P
Hitbox 1: first two hits");
set_attack_value(AT_DSPECIAL_2, AG_LANDING_LAG, 10);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);//hitbox
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);//hitbox

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);//on hit

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, -4.5);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);//recoil

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);//last hitbox

set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE,20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 0);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 140);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_TECHABLE, 0);