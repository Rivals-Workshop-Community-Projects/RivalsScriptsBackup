set_attack_value(AT_FAIR, AG_CATEGORY, 2);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FAIR,1);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("explosion"), 30));
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 2);

if (alchmeister)
    set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("bombalchmeister"));
else
    set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("bomb"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ENNEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, explosion);

//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY