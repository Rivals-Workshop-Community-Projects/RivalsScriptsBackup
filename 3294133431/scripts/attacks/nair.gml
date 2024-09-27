set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

var loops = 4;
set_num_hitboxes(AT_NAIR, loops+2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

for(var i = 0; i < loops; i++)
{
    if(i > 1)
        set_hitbox_value(AT_NAIR, 2+i, HG_WINDOW_CREATION_FRAME, (1+i)*2+2);
    else
        set_hitbox_value(AT_NAIR, 2+i, HG_WINDOW_CREATION_FRAME, (1+i)*2);
    if(i == 0)
    {
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_X, -24);
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_Y, -64);
    }
    if(i == 1)
    {
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_X, -24);
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_Y, -32);
    }
    if(i == 2)
    {
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_X, 0);
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_Y, -16);
    }
    if(i == 3)
    {
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_X, 32);
        set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_Y, -32);
    }

    set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NAIR, 2+i, HG_WINDOW, 2);
    set_hitbox_value(AT_NAIR, 2+i, HG_LIFETIME, 2);
    set_hitbox_value(AT_NAIR, 2+i, HG_WIDTH, 64);
    set_hitbox_value(AT_NAIR, 2+i, HG_HEIGHT, 64);
    set_hitbox_value(AT_NAIR, 2+i, HG_PRIORITY, 1);
    set_hitbox_value(AT_NAIR, 2+i, HG_DAMAGE, 1);
    set_hitbox_value(AT_NAIR, 2+i, HG_ANGLE, 45);
    set_hitbox_value(AT_NAIR, 2+i, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(AT_NAIR, 2+i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NAIR, 2+i, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_NAIR, 2+i, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_NAIR, 2+i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    set_hitbox_value(AT_NAIR, 2+i, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_NAIR, 2+loops, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2+loops, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2+loops, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 2+loops, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2+loops, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 2+loops, HG_HITBOX_Y, -64);
set_hitbox_value(AT_NAIR, 2+loops, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 2+loops, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 2+loops, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2+loops, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2+loops, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 2+loops, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 2+loops, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2+loops, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 2+loops, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2+loops, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 2+loops, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2+loops, HG_HITBOX_GROUP, 2);