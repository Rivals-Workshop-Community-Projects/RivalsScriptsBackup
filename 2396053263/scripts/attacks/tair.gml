//Taunt (Air)

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("tauntair"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1); //neutral (taunt) startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1); //neutral (taunt) held
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1); //neutral (taunt) endlag
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1); //forwards
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1); //backwards
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_EXTRA_1,1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 96);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));