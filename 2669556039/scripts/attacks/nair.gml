set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);

for(var i = 2; i < 6; i++)
{
    set_window_value(AT_NAIR, i, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_NAIR, i, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_NAIR, i, AG_WINDOW_ANIM_FRAME_START, 5);
    set_window_value(AT_NAIR, i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_NAIR, i, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
}

set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 4);

//TODO: stronger hitbox at the end? like kragg/zetter?
for(var i = 1; i < 5; i++)
{
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NAIR, i, HG_WINDOW, i+1);
    set_hitbox_value(AT_NAIR, i, HG_LIFETIME, 1);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_Y, -48);
    set_hitbox_value(AT_NAIR, i, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, i, HG_HEIGHT, 80);
    set_hitbox_value(AT_NAIR, i, HG_SHAPE, 0);
    set_hitbox_value(AT_NAIR, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 2);
    set_hitbox_value(AT_NAIR, i, HG_ANGLE, 361);//300);
    set_hitbox_value(AT_NAIR, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_NAIR, i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_NAIR, i, HG_HITPAUSE_SCALING, 0.1);
    set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
}