set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 18);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_DSPECIAL_2, 8);

var dmg = 2;

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, dmg);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 95);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, dmg);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.70);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 125);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, dmg);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 0.70);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, -7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, dmg);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 0.70);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DRIFT_MULTIPLIER, 0.70);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSPECIAL_2, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, -7);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -56);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DSPECIAL_2, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_X, -7);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -56);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DSPECIAL_2, 7, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_X, -7);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_Y, -56);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DSPECIAL_2, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_X, 79);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HEIGHT, 162);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_KNOCKBACK_SCALING, 1.08);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITPAUSE_SCALING, 0.98);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_GROUP, 8);