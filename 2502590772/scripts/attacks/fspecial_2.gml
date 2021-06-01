//attacks/fspecial_2.gml
if (is_master_player || species_id == 0) exit; //efficiency: don't load attacks on master player

var fspecial2_fx_proj_destroy = hit_fx_create(sprite_get("fxstaticplus"), 21);


set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("m_fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip3"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("bair3"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 26);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 30);

set_num_hitboxes(AT_FSPECIAL_2, 2);

//multi-hit
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 30);   //changing these values affects where the fspecial article spawns in attack_update.gml
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -24);  //
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE,  asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 1); //no tech
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, fspecial2_fx_proj_destroy);

//final hit
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 58); 
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE,  asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1); //>:)
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, fspecial2_fx_proj_destroy); //placeholder?


