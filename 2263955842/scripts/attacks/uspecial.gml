set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
//set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

//dash
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);


// endlag
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);



if (has_rune("I"))
{
    set_num_hitboxes(AT_USPECIAL,1);

    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 10);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 50);
    set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
    set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}



