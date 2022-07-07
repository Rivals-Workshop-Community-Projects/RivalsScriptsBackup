// ==================== GRAFFITI TAUNT_2 ======================
// you can set this attack up however you want, with whatever attack index you like
// just change set_attack.gml and attack_update.gml accordingly

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("_graffiti_taunt"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_spraypaint"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_TAUNT_2, 1);

// spray can projectile
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("_graffiti_can"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite")); // no hitbox
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_VSPEED, -6.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2); // bounces off walls
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2); // bounces off ground
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); // goes through enemies
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

