atk = AT_USPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));

set_attack_value(atk, AG_NUM_WINDOWS, 5);


set_window_value(atk, 1, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("stretch"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 10);

// active

set_window_value(atk, 2, AG_WINDOW_LENGTH, 17);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// catch
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// whiff
set_window_value(atk, 4, AG_WINDOW_LENGTH, 28);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 12);

// throw
set_window_value(atk, 5, AG_WINDOW_LENGTH, 29);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 2);

//catch
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 39);
set_hitbox_value(atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 1, HG_PROJECTILE_SPRITE, sprite_get("chaintip"));
set_hitbox_value(atk, 1, HG_PROJECTILE_MASK, sprite_get("chaintip_hurt"));
set_hitbox_value(atk, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, 1, HG_PRIORITY, 3);
set_hitbox_value(atk, 1, HG_DAMAGE, 2); 
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(atk, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(atk, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(atk, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));

 // release
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, 2, HG_WIDTH, 90);
set_hitbox_value(atk, 2, HG_HITBOX_X, 999);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -999);
set_hitbox_value(atk, 2, HG_HEIGHT, 90);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 140);
set_hitbox_value(atk, 2, HG_DAMAGE, 8);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("slash"));
