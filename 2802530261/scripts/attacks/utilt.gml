set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get(string(spr_dir) + "_utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("melee_swing"));

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));