set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
//set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "");

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("sfx_open_small2"));

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_ori_bash_launch"));

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("sphere_doomer"));
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 111);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("sfx_hit_magic_med"));

set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_MISC_ADD, "Trajectory will change upon entering a portal depending on what direction the other is facing. Angle flipper will change to 3 upon teleporting.");