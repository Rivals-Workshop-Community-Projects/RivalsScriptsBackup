set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("BlueSwish1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


//Abyss Runes
if has_rune("B") {
    set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
} else {
    reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
    reset_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH);
}

set_num_hitboxes(AT_UAIR, 4);

//Top Hitbox
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -73);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("Hit2"));

//Front Hitbox
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 43);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("Hit2"));

//Behind
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 41);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 49);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_UAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("Hit3"));