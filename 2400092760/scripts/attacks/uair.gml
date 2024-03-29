set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, sound_get("EnemySword"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, sound_get("EnemySword"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_UAIR,7);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -45);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -118);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -45);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -118);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -118);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.72);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, hit_sprites[2]);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("hit1"));
//set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -45);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.72);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, hit_sprites[2]);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, sound_get("hit1"));
//set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.72);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 7, HG_HIT_LOCKOUT, 5);


for (var i = 1; i < 7; i++)
{
    switch (i mod 2)
    {
        case 0:
        //even
            set_hitbox_value(AT_UAIR, i, HG_SHAPE, 0);
            set_hitbox_value(AT_UAIR, i, HG_HITBOX_X, 0);
            set_hitbox_value(AT_UAIR, i, HG_HITBOX_Y, -118);
            set_hitbox_value(AT_UAIR, i, HG_WIDTH, 104);
            set_hitbox_value(AT_UAIR, i, HG_HEIGHT, 60);
        break;
        case 1:
        //odd
            set_hitbox_value(AT_UAIR, i, HG_SHAPE, 0);
            set_hitbox_value(AT_UAIR, i, HG_HITBOX_X, -29);
            set_hitbox_value(AT_UAIR, i, HG_HITBOX_Y, -102);
            set_hitbox_value(AT_UAIR, i, HG_WIDTH, 100);
            set_hitbox_value(AT_UAIR, i, HG_HEIGHT, 70);
        break;
    }
}

