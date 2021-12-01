set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
//set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 5);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);

//toxic -> poision

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_NSPECIAL_2, 1, AG_USES_CUSTOM_GRAVITY , 1.0);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("nspecialStart"));
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_spew_smoke"));//sfx_poison_hit_med sfx_watergun_splash
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH)-1);


set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 9);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 9);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -48);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 128);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 128);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 0);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));//why no sound????
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));// sprite_get("toxicCloud"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("toxicCloud"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("toxicCloud"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.125);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 67);// toxicHit);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 67);// toxicHit);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
