set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_ground"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_ground_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);


//12

//anticipation
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

//down
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);//3
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

//roll
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);

//anticipation 2
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);

//throw, there you go
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 7, AG_IASA_THIS_WINDOW, 1);
set_window_value(AT_NSPECIAL_2, 7, AG_MUNO_WINDOW_EXCLUDE, 1);



set_num_hitboxes(AT_NSPECIAL_2, 1); 

//hitbox values will be taken from nspecial1 instead
//spawned in attack_upsate
/*
//wahh ice
//speed values are in hitbox_init now
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 70);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -33);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_ice"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 20);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
*/




