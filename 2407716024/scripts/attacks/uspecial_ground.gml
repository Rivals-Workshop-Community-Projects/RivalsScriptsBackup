set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_INVINCIBILITY, 2);

//invulnerable from here
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_INVINCIBILITY, 1);

//teleport
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_INVINCIBILITY, 1);

//teleport fakeout
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_INVINCIBILITY, 1);

//reappear - first frame
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 15);
//set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_INVINCIBILITY, 1);

//reappear - no longer invulnerable
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_SFX, sound_get("airdash"));
set_window_value(AT_USPECIAL_GROUND, 6, AG_WINDOW_HAS_SFX, 1);

//glove
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL_GROUND, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_ANIM_FRAME_START, 21);
//set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL_GROUND, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_GROUND, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 9, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_USPECIAL_GROUND, 9, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

