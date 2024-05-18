set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_CANT_SAVE_ATTACK, 1);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 6);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(49, 2, AG_WINDOW_LENGTH, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("sfx_rudebuster"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(49, 3, AG_WINDOW_LENGTH, 8);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 3, AG_WINDOW_HSPEED, 32);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 4, AG_WINDOW_HSPEED, 4);
set_window_value(49, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 4, AG_WINDOW_SFX, sound_get("sfx_rudebuster"));
set_window_value(49, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(49, 5, AG_WINDOW_LENGTH, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 5, AG_WINDOW_HSPEED, 44);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 6, AG_WINDOW_HSPEED, 4);
set_window_value(49, 6, AG_WINDOW_LENGTH, 14);

for(var i = 1; i <= 6; i++){
    set_window_value(49, i, AG_WINDOW_INVINCIBILITY, 1);
}

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 8);
set_hitbox_value(49, 1, HG_HITBOX_X, -10);
set_hitbox_value(49, 1, HG_HITBOX_Y, -26);
set_hitbox_value(49, 1, HG_WIDTH, 25);
set_hitbox_value(49, 1, HG_HEIGHT, 70);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_ANGLE, 361);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, fx_strike);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 5);
set_hitbox_value(49, 2, HG_LIFETIME, 8);
set_hitbox_value(49, 2, HG_HITBOX_X, -10);
set_hitbox_value(49, 2, HG_HITBOX_Y, -26);
set_hitbox_value(49, 2, HG_WIDTH, 25);
set_hitbox_value(49, 2, HG_HEIGHT, 70);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_ANGLE, 361);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, fx_strike);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));