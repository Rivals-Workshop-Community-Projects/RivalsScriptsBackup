set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("finalsmash"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 66);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("chainsawrev"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("slice1"));
set_window_value(49, 2, AG_WINDOW_HSPEED, 55);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 105);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 40);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(49,3);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 1);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 12)
set_hitbox_value(49, 1, HG_LIFETIME, 60);
set_hitbox_value(49, 1, HG_HITBOX_X, 78);
set_hitbox_value(49, 1, HG_HITBOX_Y, -39);
set_hitbox_value(49, 1, HG_WIDTH, 999999);
set_hitbox_value(49, 1, HG_HEIGHT, 99999);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 70);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 105);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 12);
set_hitbox_value(49, 2, HG_HITBOX_X, 20);
set_hitbox_value(49, 2, HG_HITBOX_Y, -51);
set_hitbox_value(49, 2, HG_WIDTH, 268);
set_hitbox_value(49, 2, HG_HEIGHT, 142);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 50);
set_hitbox_value(49, 2, HG_ANGLE, 45);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, BloodFX2);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 2)


set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 3);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 70);
set_hitbox_value(49, 3, HG_LIFETIME, 6);
set_hitbox_value(49, 3, HG_HITBOX_X, -190);
set_hitbox_value(49, 3, HG_HITBOX_Y, -63);
set_hitbox_value(49, 3, HG_WIDTH, 408);
set_hitbox_value(49, 3, HG_HEIGHT, 177);
set_hitbox_value(49, 3, HG_SHAPE, 2);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 200);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 450);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, Bloodstab2);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("bigslice2"));
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 3)

