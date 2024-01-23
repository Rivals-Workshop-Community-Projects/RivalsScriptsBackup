atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_nspec_start"));

window_num ++; //aim
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);


window_num ++; //pre-shoot 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //pre-shoot 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_nspec_shoot"));

window_num ++; //shoot
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);

window_num ++; //post-shoot
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);



set_num_hitboxes(atk, 2);

hitbox_num = 1; //explosion (spawns with article1_update)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 160);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 160);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
//set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 15); //9
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1); //0.7
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, empty);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_empty);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK,  -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_elec2);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, hitbox_num, HG_EFFECT, 12);

hitbox_num ++; //projectile (spawns with attack_update)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_elec1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_nspec_cursorspawn);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_nspec_proj"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);