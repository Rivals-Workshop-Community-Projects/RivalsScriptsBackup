set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//usts1  usts2   ustan   usta    usth    ustr
//0-9:10 10-12:3 13-13:1 14-14:1 15-16:2 17-17:1

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 20);//30
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 10);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);//9
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);



set_num_hitboxes(AT_USTRONG, 3); 

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 50);

set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("wii_elec"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 62);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 52);

set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("explosion"));

set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);



set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);

set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 120);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 120);

set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 153);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);


//hit up
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 79);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 98);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("hit_medium_3"));


