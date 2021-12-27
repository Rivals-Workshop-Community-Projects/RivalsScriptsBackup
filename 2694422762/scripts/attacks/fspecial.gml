set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC, "Spawns a big card. When held down the user will ride the card, which can be angled up and down.");

//Making it appear.
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_coin_portal"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);

//Getting ready to ride it.
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 4);

//Riding it.
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);

//Jumping off
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_FSPECIAL, 3);

//Initial hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Initial Hit");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, fx_cardhit);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Ride hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Ride Card");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);

//Card Explosion Hitbox
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Card Explosion");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 24);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 112);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 112);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_lucy_cardhit1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("card_fx"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("card_fx_mask"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_LIFESPAN, 14);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);