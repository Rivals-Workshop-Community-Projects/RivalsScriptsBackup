set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
// set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("Throw_Start"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("Throw_Rock"));
// set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

var grov_seed_sprite = sprite_get("geopebble")
if get_player_color(player) == 14 grov_seed_sprite = sprite_get("geopebble_abyss")
if get_player_color(player) == 15 grov_seed_sprite = sprite_get("geopebble_EA")


set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 18);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, grov_seed_sprite);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_HSPEED, 2.0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GRAVITY, 0.45);
// set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0.015);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//RUNES
if has_rune("G"){
    set_num_hitboxes(AT_UTILT,3);
    for (i=1; i < 3; i++){
        // set_hitbox_value(AT_UTILT, i+1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_UTILT, i+1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_UTILT, i+1, HG_WINDOW, 2);
        set_hitbox_value(AT_UTILT, i+1, HG_LIFETIME, 50);
        set_hitbox_value(AT_UTILT, i+1, HG_HITBOX_X, 20);
        set_hitbox_value(AT_UTILT, i+1, HG_HITBOX_Y, -44);
        set_hitbox_value(AT_UTILT, i+1, HG_WIDTH, 24);
        set_hitbox_value(AT_UTILT, i+1, HG_HEIGHT, 18);
        set_hitbox_value(AT_UTILT, i+1, HG_PRIORITY, 2);
        set_hitbox_value(AT_UTILT, i+1, HG_DAMAGE, 6);
        set_hitbox_value(AT_UTILT, i+1, HG_ANGLE, 70);
        set_hitbox_value(AT_UTILT, i+1, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_UTILT, i+1, HG_KNOCKBACK_SCALING, 0.5);
        set_hitbox_value(AT_UTILT, i+1, HG_BASE_HITPAUSE, 6);
        set_hitbox_value(AT_UTILT, i+1, HG_HITPAUSE_SCALING, .35);
        set_hitbox_value(AT_UTILT, i+1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
        set_hitbox_value(AT_UTILT, i+1, HG_ANGLE_FLIPPER, 0);
        
        set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_SPRITE, grov_seed_sprite);
        set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_MASK, -1);
        // set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_HSPEED, 3.0);
        // set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_VSPEED, -9);
        // set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_GRAVITY, 0.45);
        // set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0.015);
        set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
        set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_UTILT, i+1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
    }
    set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_HSPEED, 4.0);
    set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_VSPEED, -9.5);
    set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GRAVITY, 0.45);
    set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_HSPEED, 2.0);
    set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_VSPEED, -8.5);
    set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_GRAVITY, 0.45);
}