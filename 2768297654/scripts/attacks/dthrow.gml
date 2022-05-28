set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 5);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//startup
set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 16);

//attack
set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 18);

//endlag
set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 1); 
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("smokebomb_proj"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, sprite_get("blank_sheet"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DTHROW, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GRAVITY, 0.4);