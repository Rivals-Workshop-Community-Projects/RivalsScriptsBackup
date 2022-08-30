set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("earth"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("earth"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("Cast A Spell"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));

set_num_hitboxes(AT_NSPECIAL_2, 0);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 60 + has_rune("F") * 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("crystal"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_oly_uspecial_crystal"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("crystalhurt"));