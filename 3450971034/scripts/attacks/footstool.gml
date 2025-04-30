var atk = AT_EXTRA_1;
var i = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("footstool"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("footstool_hurt"));

// Startup
set_window_value(atk, i, AG_WINDOW_LENGTH, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, i, AG_WINDOW_SFX_FRAME, 1);
i++;

// Active 1
set_window_value(atk, i, AG_WINDOW_LENGTH, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, i, AG_WINDOW_SFX, sound_get("sfx_bite_medium"));
set_window_value(atk, i, AG_WINDOW_SFX_FRAME, 1);
i++;

// Active 2
set_window_value(atk, i, AG_WINDOW_LENGTH, 6);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 2);
i++;

// Endlag (hold)
set_window_value(atk, i, AG_WINDOW_LENGTH, 4);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, i, AG_WINDOW_HAS_WHIFFLAG, 1);
i++;

// Endlag (return)
set_window_value(atk, i, AG_WINDOW_LENGTH, 4);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, i, AG_WINDOW_HAS_WHIFFLAG, 1);
i++;

set_num_hitboxes(atk, 2);
i = 1;

set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_WINDOW, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_Y, -54);
set_hitbox_value(atk, i, HG_WIDTH, 20);
set_hitbox_value(atk, i, HG_HEIGHT, 90);
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_PRIORITY, 2);
set_hitbox_value(atk, i, HG_DAMAGE, 2); // 3
set_hitbox_value(atk, i, HG_ANGLE, 90);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, fx_bite);
i++;

set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, i, HG_WINDOW, 3);
set_hitbox_value(atk, i, HG_LIFETIME, 4);
set_hitbox_value(atk, i, HG_HITBOX_Y, -104);
set_hitbox_value(atk, i, HG_WIDTH, 60); // 20
set_hitbox_value(atk, i, HG_HEIGHT, 60);
set_hitbox_value(atk, i, HG_PRIORITY, 2);
set_hitbox_value(atk, i, HG_DAMAGE, 4); // 3
set_hitbox_value(atk, i, HG_ANGLE, 90);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, fx_bigbite);
i++;

// Abyss Rune: Poison Consume

if(poison_consume_rune){

    set_hitbox_value(atk, 1, HG_EFFECT, poison_extend_effect_index);

    i++
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, i, HG_HITBOX_GROUP, 1);
    set_hitbox_value(atk, i, HG_WINDOW, 3);
    set_hitbox_value(atk, i, HG_LIFETIME, 4);
    set_hitbox_value(atk, i, HG_HITBOX_Y, -104);
    set_hitbox_value(atk, i, HG_WIDTH, 60); // 20
    set_hitbox_value(atk, i, HG_HEIGHT, 60);
    set_hitbox_value(atk, i, HG_PRIORITY, 3);
    set_hitbox_value(atk, i, HG_DAMAGE, 10); // 3
    set_hitbox_value(atk, i, HG_ANGLE, 90);
    set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.2);
    set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, i, HG_EFFECT, poison_consume_effect_index);
    set_hitbox_value(atk, i, HG_HIT_LOCKOUT, 10);
    
    set_num_hitboxes(atk, i);

}