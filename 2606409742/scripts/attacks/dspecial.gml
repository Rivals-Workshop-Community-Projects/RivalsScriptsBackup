set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_COOLDOWN, bomb_cooldown_max);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 2);

// startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sfx_botw_bomb_pull);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// active + endlag of pull
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// idle
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 9); // loop
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// walk
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 9); // loop
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// jumpsquat
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// jump; anim handled thru code
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 9); // loop
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 100);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL, 6, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// N throw
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_DSPECIAL, 7, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_DSPECIAL, 0);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1000000);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);