set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("Shine"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_land"));

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("Hum"));

//RUNES
if has_rune("O"){
    set_num_hitboxes(AT_TAUNT,1);

    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 5);
    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 25);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -28);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -54);
    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 120);
    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 120);
    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 70);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.5);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 60);
    set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .35);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 0);
}