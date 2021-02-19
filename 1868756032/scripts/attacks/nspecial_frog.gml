set_attack_value(AT_NSPECIAL_FROG, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_FROG, AG_SPRITE, sprite_get("AT_NSPECIAL_RANNO_GROUND"));
set_attack_value(AT_NSPECIAL_FROG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_FROG, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_FROG, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_FROG, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_RANNO_GROUND"));
set_attack_value(AT_NSPECIAL_FROG, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_FROG_CHARGE_hurt"));

set_window_value(AT_NSPECIAL_FROG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_FROG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_FROG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_FROG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_FROG, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_start"));

set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_TYPE, 1); //CHARGE
set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_FROG, 2, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_loop"));

set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_TYPE, 1); //RELEASE
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_NSPECIAL_FROG, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NSPECIAL_FROG, 4, AG_WINDOW_TYPE, 1); //LAG
set_window_value(AT_NSPECIAL_FROG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_FROG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_FROG, 4, AG_WINDOW_ANIM_FRAME_START, 51);

set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_FROG, 5, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_cancel"));

set_num_hitboxes(AT_NSPECIAL_FROG, 4);


set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_EFFECT, 10);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PROJECTILE_SPRITE, asset_get("frog_needle_spr"));
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PROJECTILE_MASK, asset_get("frog_needle_spr"));
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL_FROG, 1, HG_PROJECTILE_HSPEED, 15);

set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_FROG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_FROG, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_FROG, 4, HG_HITBOX_GROUP, 3);

