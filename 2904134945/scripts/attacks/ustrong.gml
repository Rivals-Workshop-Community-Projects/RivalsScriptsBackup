#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_USTRONG;

atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_SPRITE,sprite_get("ustrong"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("ustrong_hurt"));
atk(a,AG_STRONG_CHARGE_WINDOW,1);

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,15);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
win(a,1,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
win(a,1,AG_WINDOW_CUSTOM_GROUND_FRICTION,.2);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy1"));

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,20);
win(a,3,AG_WINDOW_ANIM_FRAMES,5);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,12);
win(a,4,AG_WINDOW_ANIM_FRAMES,3);
win(a,4,AG_WINDOW_ANIM_FRAME_START,10);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,4);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_WINDOW_CREATION_FRAME,3);
hbox(a,1,HG_LIFETIME,3);
hbox(a,1,HG_HITBOX_Y,-40);
hbox(a,1,HG_WIDTH,90);
hbox(a,1,HG_HEIGHT,66);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,2);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,10);
hbox(a,1,HG_BASE_HITPAUSE,3);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_HITSTUN_MULTIPLIER,0.7);
hbox(a,1,HG_SDI_MULTIPLIER,0.3);
hbox(a,1,HG_DRIFT_MULTIPLIER,0.3);

hbox(a,2,HG_PARENT_HITBOX,2);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,3);
hbox(a,2,HG_LIFETIME,8);
hbox(a,2,HG_HITBOX_X,-25);
hbox(a,2,HG_HITBOX_Y,-89);
hbox(a,2,HG_WIDTH,52);
hbox(a,2,HG_HEIGHT,52);
hbox(a,2,HG_PRIORITY,2);
hbox(a,2,HG_DAMAGE,3);
hbox(a,2,HG_ANGLE,60);
hbox(a,2,HG_BASE_KNOCKBACK,10);
hbox(a,2,HG_BASE_HITPAUSE,4);
hbox(a,2,HG_EXTRA_HITPAUSE,2);
hbox(a,2,HG_VISUAL_EFFECT,spinfx);
hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,-10);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));
hbox(a,2,HG_HITBOX_GROUP,-1);
hbox(a,2,HG_HITSTUN_MULTIPLIER,0.7);
hbox(a,2,HG_SDI_MULTIPLIER,0.5);
hbox(a,2,HG_DRIFT_MULTIPLIER,0.5);

hbox(a,3,HG_PARENT_HITBOX,3);
hbox(a,3,HG_HITBOX_TYPE,1);
hbox(a,3,HG_WINDOW,3);
hbox(a,3,HG_WINDOW_CREATION_FRAME,4);
hbox(a,3,HG_LIFETIME,8);
hbox(a,3,HG_HITBOX_X,25);
hbox(a,3,HG_HITBOX_Y,-96);
hbox(a,3,HG_WIDTH,52);
hbox(a,3,HG_HEIGHT,52);
hbox(a,3,HG_PRIORITY,2);
hbox(a,3,HG_DAMAGE,3);
hbox(a,3,HG_ANGLE,120);
hbox(a,3,HG_BASE_KNOCKBACK,10);
hbox(a,3,HG_BASE_HITPAUSE,4);
hbox(a,3,HG_EXTRA_HITPAUSE,2);
hbox(a,3,HG_VISUAL_EFFECT,spinfx);
hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,-10);
hbox(a,3,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));
hbox(a,3,HG_HITBOX_GROUP,-1);
hbox(a,3,HG_HITSTUN_MULTIPLIER,0.7);
hbox(a,3,HG_SDI_MULTIPLIER,0.5);
hbox(a,3,HG_DRIFT_MULTIPLIER,0.5);

hbox(a,4,HG_PARENT_HITBOX,4);
hbox(a,4,HG_HITBOX_TYPE,1);
hbox(a,4,HG_WINDOW,3);
hbox(a,4,HG_WINDOW_CREATION_FRAME,8);
hbox(a,4,HG_LIFETIME,8);
hbox(a,4,HG_HITBOX_X,-1);
hbox(a,4,HG_HITBOX_Y,-133);
hbox(a,4,HG_WIDTH,78);
hbox(a,4,HG_HEIGHT,78);
hbox(a,4,HG_PRIORITY,3);
hbox(a,4,HG_DAMAGE,5);
hbox(a,4,HG_ANGLE,90);
hbox(a,4,HG_BASE_KNOCKBACK,8);
hbox(a,4,HG_KNOCKBACK_SCALING,1.1);
hbox(a,4,HG_BASE_HITPAUSE,10);
hbox(a,4,HG_HITPAUSE_SCALING,1.1);
hbox(a,4,HG_VISUAL_EFFECT,bigicefx);
hbox(a,4,HG_VISUAL_EFFECT_Y_OFFSET,-10);
hbox(a,4,HG_HIT_SFX,asset_get("sfx_icehit_heavy1"));
hbox(a,4,HG_HITBOX_GROUP,-1);
hbox(a,4,HG_HIT_LOCKOUT,4);
hbox(a,4,HG_SDI_MULTIPLIER,1);
hbox(a,4,HG_DRIFT_MULTIPLIER,1);