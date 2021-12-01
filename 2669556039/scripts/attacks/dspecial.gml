set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

for(var i = 1; i < 11; i++)
{
    set_window_value(AT_DSPECIAL, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_DSPECIAL, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
    set_window_value(AT_DSPECIAL, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
    set_window_value(AT_DSPECIAL, i, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
    /*if(i >= 4 && i <= 10)
    {
        set_window_value(AT_DSPECIAL, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 1000);
        set_window_value(AT_DSPECIAL, i, AG_WINDOW_CUSTOM_GRAVITY, 0);
    }*/
}

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_rag_plant_ready"));//sfx_absa_orb_missrelease sfx_may_wrap1 sfx_may_root sfx_absa_orb_missrelease sfx_ori_glide_start sfx_ice_uspecial_start

//charge
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//release
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_rag_plant_shoot"));//sfx_shovel_swing_light1 mfx_title_zoom_fast
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)-1);

//start extend
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//extending
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 9); //TODO: add this back if extend via article?
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//start finish extend
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_abyss_seed_land"));

//is extended
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);

//start retract
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 11);
//set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_springswitch"));

//retracting
//set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 9); //TODO: add this back if extend via article?
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 13);

//restore
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_abyss_seed_explode"));

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1000);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);//asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);//1
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);//1
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);//1
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);//TODO: make this true but fix it breaking
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
//set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, asset_get("emptry_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);//0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);//0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);//0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);