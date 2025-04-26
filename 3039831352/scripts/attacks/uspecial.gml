atk = AT_USPECIAL; //rainbow ring toss

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_LANDING_LAG, 4);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

window_num ++; //ring toss
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack movement
//set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);

set_num_hitboxes(atk, hitbox_num);