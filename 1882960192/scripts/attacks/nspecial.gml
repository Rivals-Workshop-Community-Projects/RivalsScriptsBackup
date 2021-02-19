set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //Begin move
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1); //Charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1); //No charge
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("magicshoot"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1); //Mid charge 1
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("magicshoot2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1); //Mid charge 2
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("magicshoot3"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1); //Full charge
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("magicshoot4"));
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_NSPECIAL, 7);

//Low-no charge
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 42);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);//361
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 111);

//Medium charge 1
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);//50
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .68);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, -.02);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 111);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 25);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);//40
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .68);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, -.02);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 111);


//Full charge
set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 45);//30
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 53);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, -.06);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 7);//6
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 112);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Medium charge 2
set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 45);//55
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .68);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, .37);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, -.02);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 111);

set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 45);//35
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .68);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -.37);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, -.02);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 111);

set_hitbox_value(AT_NSPECIAL, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 61);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 25);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .68);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, -.02);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 111);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);