set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1); //startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1); //punch
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1); //endlag
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_num_hitboxes(AT_NSPECIAL_2, 0);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1); //POWAH. GAISAHHH
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, mediumhit);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

//air version
for(var i = 1; i < 4; i++){
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HITBOX_GROUP, 1); //sour
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_WINDOW, 2); 
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HITBOX_X, 52 + ((i-1) * 38));
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HITBOX_Y, 12 + ((i-1) * 38));
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_WIDTH, 45);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HEIGHT, 45);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_SHAPE, 0);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_PRIORITY, 1);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_DAMAGE, 9);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_ANGLE, 80);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_KNOCKBACK_SCALING, 0.8);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_EXTRA_HITPAUSE, 4);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_VISUAL_EFFECT, mediumhit);
    set_hitbox_value(AT_NSPECIAL_2, i+1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
}

set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_GROUP, 1); //tip
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW, 2); 
set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_X, 164);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_Y, 124);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_ANGLE, 290);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_VISUAL_EFFECT, stronghit);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));