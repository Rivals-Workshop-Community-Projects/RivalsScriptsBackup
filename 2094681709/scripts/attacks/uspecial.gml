// Sprites
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecialcomp"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialcomp"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecialcomp_hurt"));

// Parameters
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 2);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

// Windows
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, uspecial_startup);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get( "sfx_abyss_explosion_big" )); //explosion sfx
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, uspecial_startup - 1);

//falling
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("squack1"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);

//landing
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, uspecial_landing_lag);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 21);


// Hitboxes
set_num_hitboxes(AT_USPECIAL, 3);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 79);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 140);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 38);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 86);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));




