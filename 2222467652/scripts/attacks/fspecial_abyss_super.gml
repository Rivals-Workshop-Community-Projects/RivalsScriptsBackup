set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fspecial_abyss_super"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fspecial_abyss_super"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fspecial_abyss_super_hurt"));
set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_NAME, "Super Fspecial (Abyss)");
set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_MISC_ADD, "Abyss Rune L only
To input: Quartercircle(down-forward) + Quartercircle(down-forward) + [SPECIAL]");

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 42);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_MUNO_WINDOW_INVUL, -2);

set_num_hitboxes(AT_FTHROW, 3);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 25);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, luigi_fire_small);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, luigi_fire_small);
set_hitbox_value(AT_FTHROW, 2, HG_MUNO_HITBOX_MISC_ADD, "Inflicts Green Fire (4%)");

set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 26);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 5);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 5);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_FTHROW, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, -1);
set_hitbox_value(AT_FTHROW, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 0);