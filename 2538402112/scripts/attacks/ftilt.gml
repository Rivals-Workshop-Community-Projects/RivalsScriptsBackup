set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

for(i = 0; i < 5; i++){
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_ANIM_FRAME_START, min(i+1,3));
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
    set_window_value(AT_FTILT, 2+i, AG_WINDOW_SFX_FRAME, 1);
}

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 5);


var grov_seed_sprite = sprite_get("bullet_seed")
if get_player_color(player) == 14 grov_seed_sprite = sprite_get("bullet_seed_abyss")
if get_player_color(player) == 15 grov_seed_sprite = sprite_get("bullet_seed_EA")

set_num_hitboxes(AT_FTILT,5);

for(i = 1; i < 6; i++){
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_FTILT, i, HG_WINDOW, 1+i);
    set_hitbox_value(AT_FTILT, i, HG_LIFETIME, 7);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_X, 16);
    set_hitbox_value(AT_FTILT, i, HG_HITBOX_Y, -31);
    set_hitbox_value(AT_FTILT, i, HG_WIDTH, 14);
    set_hitbox_value(AT_FTILT, i, HG_HEIGHT, 10);
    set_hitbox_value(AT_FTILT, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_FTILT, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_FTILT, i, HG_ANGLE, 361);
    set_hitbox_value(AT_FTILT, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_FTILT, i, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_FTILT, i, HG_HITPAUSE_SCALING, .6);
    set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT, 18); // Leaf Tiny
    set_hitbox_value(AT_FTILT, i, HG_VISUAL_EFFECT_Y_OFFSET, 18);
    set_hitbox_value(AT_FTILT, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_HSPEED, 18);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_SPRITE, grov_seed_sprite);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_FTILT, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
}



set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 17); // Leaf Small
set_hitbox_value(AT_FTILT, 5, HG_EXTRA_CAMERA_SHAKE, 2);