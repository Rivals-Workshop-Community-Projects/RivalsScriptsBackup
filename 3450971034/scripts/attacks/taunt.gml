atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

window_num = 1; //it's morbin' time
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

window_num ++; //almost done morb
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_taunt"));

window_num ++; //now i'm morb
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

window_num ++; //morb lean
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 35);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);



set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -133);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 10);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 10);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 13);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_explosion);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnconsume"));


set_num_hitboxes(atk, hitbox_num);


// Rune Code
if(plant_gang_rune){
    window_num = 1; //it's morbin' time
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);

window_num ++; //almost done morb   
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
    
    window_num ++; //now i'm morb
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
    
    window_num ++; //morb lean
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
    
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
}