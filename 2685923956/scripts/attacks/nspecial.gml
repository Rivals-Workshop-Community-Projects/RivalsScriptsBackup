set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);

//st
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("starshoot2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

//at
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);//12
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

//rec
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);//6
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);



set_num_hitboxes(AT_NSPECIAL, 2); 

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 12);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_star"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 25);//14

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 21);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 24);//16

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);//361
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);//7
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 9);//=polite
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("star_click"));

//bodybox
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 5);












