set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);



set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CANCEL_FRAME, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, -3);


set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90+8);
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx4"), 20));
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
/*
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -60);

set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx4"), 20));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
*/
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 52);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx1"), 20));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 1);

/*
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -9);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx4"), 20));
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);




set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx4"), 20));
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));