//this doesn't work but i promise it will eventually i hope

//Ragnarok. Internal move ID: 26

set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("beam_impact"));
//set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 253);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 113);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_FTHROW, 1, HG_TECHABLE, 1);
