set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_STRONG_CHARGE_WINDOW, 4);

set_window_value(AT_USPECIAL_2,1,AG_WINDOW_LENGTH,7);
set_window_value(AT_USPECIAL_2,1,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL_2,1,AG_WINDOW_ANIM_FRAME_START,0);

set_window_value(AT_USPECIAL_2,2,AG_WINDOW_LENGTH,12);
set_window_value(AT_USPECIAL_2,2,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL_2,2,AG_WINDOW_ANIM_FRAME_START,3);
set_window_value(AT_USPECIAL_2,2,AG_WINDOW_HAS_SFX,1);
set_window_value(AT_USPECIAL_2,2,AG_WINDOW_SFX,sound_get("triple_shot"));

set_window_value(AT_USPECIAL_2,3,AG_WINDOW_LENGTH,1);
set_window_value(AT_USPECIAL_2,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL_2,3,AG_WINDOW_ANIM_FRAME_START,3);

set_window_value(AT_USPECIAL_2,4,AG_WINDOW_LENGTH,1);
set_window_value(AT_USPECIAL_2,4,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL_2,4,AG_WINDOW_ANIM_FRAME_START,3);

set_window_value(AT_USPECIAL_2,5,AG_WINDOW_LENGTH,12);
set_window_value(AT_USPECIAL_2,5,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_USPECIAL_2,5,AG_WINDOW_ANIM_FRAME_START,0);

set_num_hitboxes(AT_USPECIAL_2,4);


// scope

set_hitbox_value(AT_USPECIAL_2,1,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_USPECIAL_2,1,HG_WINDOW,2);
set_hitbox_value(AT_USPECIAL_2,1,HG_WINDOW_CREATION_FRAME,1);
set_hitbox_value(AT_USPECIAL_2,1,HG_PRIORITY,3);
set_hitbox_value(AT_USPECIAL_2,1,HG_LIFETIME,200);
set_hitbox_value(AT_USPECIAL_2,1,HG_PARENT_HITBOX,2);
set_hitbox_value(AT_USPECIAL_2,1,HG_HITBOX_X,0);
set_hitbox_value(AT_USPECIAL_2,1,HG_HITBOX_Y,-60);

set_hitbox_value(AT_USPECIAL_2,2,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_USPECIAL_2,2,HG_WINDOW,2);
set_hitbox_value(AT_USPECIAL_2,2,HG_WINDOW_CREATION_FRAME,6);
set_hitbox_value(AT_USPECIAL_2,2,HG_PRIORITY,3);
set_hitbox_value(AT_USPECIAL_2,2,HG_LIFETIME,200);
set_hitbox_value(AT_USPECIAL_2,2,HG_DAMAGE,2);
set_hitbox_value(AT_USPECIAL_2,2,HG_HITBOX_X,0);
set_hitbox_value(AT_USPECIAL_2,2,HG_HITBOX_Y,-60);
set_hitbox_value(AT_USPECIAL_2,2,HG_SHAPE,0);
set_hitbox_value(AT_USPECIAL_2,2,HG_WIDTH,16);
set_hitbox_value(AT_USPECIAL_2,2,HG_ANGLE,40);
set_hitbox_value(AT_USPECIAL_2,2,HG_HEIGHT,16);
set_hitbox_value(AT_USPECIAL_2,2,HG_BASE_KNOCKBACK,0);
set_hitbox_value(AT_USPECIAL_2,2,HG_KNOCKBACK_SCALING,0.01);
set_hitbox_value(AT_USPECIAL_2,2,HG_HITSTUN_MULTIPLIER,0.01);
set_hitbox_value(AT_USPECIAL_2,2,HG_BASE_HITPAUSE,1);
set_hitbox_value(AT_USPECIAL_2,2,HG_HITPAUSE_SCALING,0);
set_hitbox_value(AT_USPECIAL_2,2,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL_2,2,HG_PROJECTILE_VSPEED,-15);  
set_hitbox_value(AT_USPECIAL_2,2,HG_PROJECTILE_SPRITE,sprite_get("superscope_bullet_small"));   
set_hitbox_value(AT_USPECIAL_2,2,HG_PROJECTILE_DESTROY_EFFECT,shadow_hit_fx);  
set_hitbox_value(AT_USPECIAL_2,2,HG_PROJECTILE_PARRY_STUN,1);  
set_hitbox_value(AT_USPECIAL_2,2,HG_EXTENDED_PARRY_STUN,1);  

set_hitbox_value(AT_USPECIAL_2,3,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_USPECIAL_2,3,HG_WINDOW,2);
set_hitbox_value(AT_USPECIAL_2,3,HG_WINDOW_CREATION_FRAME,11);
set_hitbox_value(AT_USPECIAL_2,3,HG_PRIORITY,3);
set_hitbox_value(AT_USPECIAL_2,3,HG_LIFETIME,200);
set_hitbox_value(AT_USPECIAL_2,3,HG_PARENT_HITBOX,2);
set_hitbox_value(AT_USPECIAL_2,3,HG_HITBOX_X,0);
set_hitbox_value(AT_USPECIAL_2,3,HG_HITBOX_Y,-60);

set_hitbox_value(AT_USPECIAL_2,4,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_USPECIAL_2,4,HG_WINDOW,5);
set_hitbox_value(AT_USPECIAL_2,4,HG_WINDOW_CREATION_FRAME,1);
set_hitbox_value(AT_USPECIAL_2,4,HG_PRIORITY,3);
set_hitbox_value(AT_USPECIAL_2,4,HG_LIFETIME,200);
set_hitbox_value(AT_USPECIAL_2,4,HG_DAMAGE,7);
set_hitbox_value(AT_USPECIAL_2,4,HG_HITBOX_X,0);
set_hitbox_value(AT_USPECIAL_2,4,HG_HITBOX_Y,-60);
set_hitbox_value(AT_USPECIAL_2,4,HG_SHAPE,0);
set_hitbox_value(AT_USPECIAL_2,4,HG_WIDTH,16);
set_hitbox_value(AT_USPECIAL_2,4,HG_ANGLE,40);
set_hitbox_value(AT_USPECIAL_2,4,HG_HEIGHT,16);
set_hitbox_value(AT_USPECIAL_2,4,HG_BASE_KNOCKBACK,8);
set_hitbox_value(AT_USPECIAL_2,4,HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_USPECIAL_2,4,HG_BASE_HITPAUSE,4);
set_hitbox_value(AT_USPECIAL_2,4,HG_HITPAUSE_SCALING,0.1);
set_hitbox_value(AT_USPECIAL_2,4,HG_HIT_SFX,asset_get("sfx_burnconsume"));
set_hitbox_value(AT_USPECIAL_2,4,HG_PROJECTILE_VSPEED,-15);  
set_hitbox_value(AT_USPECIAL_2,4,HG_PROJECTILE_SPRITE,sprite_get("superscope_bullet_large"));   
set_hitbox_value(AT_USPECIAL_2,4,HG_PROJECTILE_DESTROY_EFFECT,shadow_hit_fx);  


