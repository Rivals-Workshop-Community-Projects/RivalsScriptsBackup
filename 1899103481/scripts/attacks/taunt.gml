set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

// set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_miss"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 132);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 132);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8); //9
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .7); //8
set_hitbox_value(AT_TAUNT, 1, HG_EFFECT, 6);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
