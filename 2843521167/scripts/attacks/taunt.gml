set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);	
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 76);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_shop_buy"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 44);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 44);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, -1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 132);