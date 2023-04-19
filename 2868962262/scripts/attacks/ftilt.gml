set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_AIR_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);  //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("baseball")); //this sets the projectile sprite
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, sprite_get("baseball")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 1); 