set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1); 

// attack
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -11); 

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7); 

//endlag
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1); 
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 1.5);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1); 
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 3.5);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1); 
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 25);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1); 
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("bubble"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_VSPEED, 2.5);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, 2);