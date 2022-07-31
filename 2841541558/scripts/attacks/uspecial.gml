

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_syl_dspecial_growth"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -18);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -18);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 999);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 9);

set_window_value(AT_USPECIAL, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);


set_num_hitboxes(AT_USPECIAL, 4);



set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 68);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 1);



set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_FORCE_FLINCH, 1);



set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 156);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

var cancel_frame = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
cancel_frame += get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
cancel_frame += get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
