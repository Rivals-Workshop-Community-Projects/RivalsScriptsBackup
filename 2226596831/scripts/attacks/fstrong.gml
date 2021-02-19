set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_ball"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//this one is complicated so there's no "window chart" here idk
//

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("bowling_start"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FSTRONG, 1); 

//fstrong bowling ball hitbox.
//hey, if you're reading this, you're probably studying frame data or something right?
//be warned because many values will be changed upon spawning, over at attack_update.gml.

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 50);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bowling"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("bowling"));

set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 32);

set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.86);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 136);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);


//wiimote
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 50);

set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);

set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 136);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("explosion"));

set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);








