set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
//charge 1
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//charge 2
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//charge 3
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
//swing
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
//hit
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 15);
//end
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 25);

set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 43);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 43);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 85);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, 1);