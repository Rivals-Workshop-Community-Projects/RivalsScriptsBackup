set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FTILT, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 46);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);//45
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 10);//45
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);//8
//set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .4);//.2
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FTILT, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, blank);
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 46);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);//45
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);//8
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .4);//.2
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FTILT, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, blank);
set_hitbox_value(AT_FTILT, 2, HG_HIT_PARTICLE_NUM, 1);