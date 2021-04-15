set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_AIR_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_MISC, "Charge frame: 2
First Hit: 40f stagger");
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);


set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 12);


set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_DSTRONG, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 46);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Star");
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, star_damage);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("star_proj"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("star_proj"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, stardestroyfx);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
