atk = AT_DSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial2_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial2_air_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_boss_fireball"));

window_num ++; //charge
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //endlag (no orb form)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 7);

window_num ++; //form orb
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

for (var i = 1; i < window_num; i++)
{
    set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
    if (i < 3)
    {
        set_window_value(atk, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(atk, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.12);
    }
}

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 0);