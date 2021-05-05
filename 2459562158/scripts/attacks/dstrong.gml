set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);

// startup charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME,0);

// startup after charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH,6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME,5);

// swing 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME,11);

// swing 2
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_troupple_fish_splash_in"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME,11);

// throw
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);

// endlag
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 3 + has_rune("N") * 2);

//swing1
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 0);

//swing2
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -57);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH,100);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 130);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9.5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 0);

// water bomb
var step  = 0;
for (var i = 3; i < 6; i+= 1)
{
   
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW,5 - step )
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 600);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 60 - 120 * (i == 4));
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 50);
    set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 50);
    set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 50 + 80 * (i == 4));
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 8.5);
    set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0.8);
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, 0.8);
    set_hitbox_value(AT_DSTRONG, i, HG_GROUNDEDNESS, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_HIT_LOCKOUT, 4);
    set_hitbox_value(AT_DSTRONG, i, HG_VISUAL_EFFECT, 195);
    set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_SPRITE, sprite_get("water_bomb"));
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_ANIM_SPEED, 0.2);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_HSPEED, 10 - 20 * (i == 4) );
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_VSPEED, -3);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_GRAVITY, 0.4);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_UNBASHABLE, false);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_DESTROY_EFFECT, 195);
    set_hitbox_value(AT_DSTRONG, i, HG_PROJECTILE_AIR_FRICTION, 0.01);
    set_hitbox_value(AT_DSTRONG, i, HG_EFFECT, has_rune("M"));
    
    step += 1;
}


