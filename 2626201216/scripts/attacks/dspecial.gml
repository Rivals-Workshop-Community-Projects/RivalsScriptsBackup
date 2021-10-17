set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("banana"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);

set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);




set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Jump cancel starting on frame " + string(get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + " unless parried.");

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.