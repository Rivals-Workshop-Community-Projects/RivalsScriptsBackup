#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DTILT;

atk(a,AG_SPRITE,sprite_get("dtilt"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HURTBOX_SPRITE,sprite_get("dtilt_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,8);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
win(a,1,AG_WINDOW_SFX_FRAME,6);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,12);
win(a,2,AG_WINDOW_ANIM_FRAMES,3);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,10);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,6);
hbox(a,1,HG_HITBOX_X,22);
hbox(a,1,HG_HITBOX_Y,-26);
hbox(a,1,HG_WIDTH,60);
hbox(a,1,HG_HEIGHT,30);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,3);
hbox(a,1,HG_ANGLE,40);
hbox(a,1,HG_BASE_KNOCKBACK,8);
hbox(a,1,HG_KNOCKBACK_SCALING,0.2);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,0.2);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
hbox(a,1,HG_VISUAL_EFFECT,301);
hbox(a,1,HG_FORCE_FLINCH,1);

hbox(a,2,HG_HITBOX_TYPE,2);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_WINDOW_CREATION_FRAME,4);
hbox(a,2,HG_LIFETIME,20);
hbox(a,2,HG_HITBOX_X,28);
hbox(a,2,HG_HITBOX_Y,-32);
hbox(a,2,HG_WIDTH,32);
hbox(a,2,HG_HEIGHT,32);
hbox(a,2,HG_PRIORITY,2);
hbox(a,2,HG_DAMAGE,3);
hbox(a,2,HG_BASE_KNOCKBACK,6);
hbox(a,2,HG_KNOCKBACK_SCALING,0.4);
hbox(a,2,HG_BASE_HITPAUSE,1);
hbox(a,2,HG_EXTRA_HITPAUSE,10);
hbox(a,2,HG_ANGLE,60);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));
hbox(a,2,HG_PROJECTILE_SPRITE,sprite_get("dtiltProj"));
hbox(a,2,HG_PROJECTILE_MASK,-1);
hbox(a,2,HG_PROJECTILE_HSPEED,12);
hbox(a,2,HG_PROJECTILE_VSPEED,3);
hbox(a,2,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,2,HG_PROJECTILE_PARRY_STUN,1);
hbox(a,2,HG_PROJECTILE_DOES_NOT_REFLECT,1);
hbox(a,2,HG_EXTENDED_PARRY_STUN,1);
hbox(a,2,HG_VISUAL_EFFECT,302);
hbox(a,2,HG_HIT_LOCKOUT,10);
hbox(a,2,HG_HITSTUN_MULTIPLIER,0.9);

hbox(a,3,HG_HITBOX_TYPE,2);
hbox(a,3,HG_WINDOW,2);
hbox(a,3,HG_LIFETIME,20);
hbox(a,3,HG_WIDTH,46);
hbox(a,3,HG_HEIGHT,28);
hbox(a,3,HG_SHAPE,1);
hbox(a,3,HG_PRIORITY,2);
hbox(a,3,HG_DAMAGE,4);
hbox(a,3,HG_BASE_KNOCKBACK,6);
hbox(a,3,HG_KNOCKBACK_SCALING,0.4);
hbox(a,3,HG_BASE_HITPAUSE,6);
hbox(a,3,HG_ANGLE,60);
hbox(a,3,HG_HIT_SFX,asset_get("sfx_icehit_medium2"));
hbox(a,3,HG_PROJECTILE_SPRITE,sprite_get("dtiltProj2"));
hbox(a,3,HG_PROJECTILE_ANIM_SPEED,0.25);
hbox(a,3,HG_PROJECTILE_ENEMY_BEHAVIOR,1);
hbox(a,3,HG_PROJECTILE_MASK,-1);
hbox(a,3,HG_PROJECTILE_DESTROY_EFFECT,29);
hbox(a,3,HG_VISUAL_EFFECT,spinfx);
hbox(a,3,HG_PROJECTILE_PARRY_STUN,1);
hbox(a,3,HG_PROJECTILE_DOES_NOT_REFLECT,1);
hbox(a,3,HG_EXTENDED_PARRY_STUN,1);
hbox(a,3,HG_HITSTUN_MULTIPLIER,0.9);