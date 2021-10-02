set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("dspecial_abyss"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("dspecial_abyss"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_abyss_hurt"));
set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_NAME, "Super Dspecial (Abyss)");
set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_MISC_ADD, "Abyss Rune L only
To input: Quartercircle(down-back) + Quartercircle(back-down) + Forward + [SPECIAL]");

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, 8);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 75);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, luigi_fire_small);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, luigi_fire_small);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UTHROW, 1, HG_MUNO_HITBOX_MISC_ADD, "Inflicts Green Fire (5%)");