set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 19);

//Bite
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("Nom1"));


set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//Bite 2
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("Nom1"));

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, sound_get("Happy1"));
//set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 6);

//Hitbox

set_num_hitboxes(AT_TAUNT,2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 39);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1);
//set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("Nom1"));

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 39);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 1);
//set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sound_get("Nom1"));

/*set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
