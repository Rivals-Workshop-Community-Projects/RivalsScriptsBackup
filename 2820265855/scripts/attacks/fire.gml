set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fire"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("fire"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("Cast A Spell"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("fireball"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 5);
