//this doesn't work but i promise it will eventually i hope

//Knock Down. Internal move ID: 20

set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG_2, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("swish_magical"));

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 23);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("explode_fire"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FSTRONG_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("knockdown"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("knockdown"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
