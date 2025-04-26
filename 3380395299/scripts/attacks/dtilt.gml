set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("beep3"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_bite"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("dtilt_proj"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);