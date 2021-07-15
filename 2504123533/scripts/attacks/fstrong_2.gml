set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrongCharged"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 2);// <-- make sure this accounts for ALL frames!
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 4);//<-- set this to a window that doesn't exist
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 0);

//required for all synced hitboxes
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_FSTRONG_2, 1, , );
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, );
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);