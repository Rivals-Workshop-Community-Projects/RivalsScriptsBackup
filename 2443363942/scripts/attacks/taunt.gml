set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 20);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_TAUNT,1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 42);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 48);
if (has_rune("B")){
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -104);
    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 242);
    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 248); 
}
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
if (!has_rune("O")) set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 8);