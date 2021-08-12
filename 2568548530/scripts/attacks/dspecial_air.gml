set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 9); //10);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 3.5);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 100);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("dspecial03"));//dspecial01
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);


set_num_hitboxes(AT_DSPECIAL_AIR, 4); 

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1000);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);//361);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.6);
//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_GROUNDEDNESS, 2); //only hit ppl in air

//IF CHANGE ANYTHING HERE, NEED TO ALSO CHANGE IN DSPECIAL

//center sour spot
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1); //can always hit (always for projectile)
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);//1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 100);//128);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//moving sweet spot
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1); //can always hit (always for projectile)
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 6);//1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 64);//128);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);


//moving sweet spot
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1); //can always hit (always for projectile)
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 6);//1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, -16);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 64);//128);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, -2);