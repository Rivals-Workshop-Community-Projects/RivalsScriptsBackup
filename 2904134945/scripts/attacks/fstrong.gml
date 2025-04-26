#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FSTRONG;

atk(a,AG_SPRITE,sprite_get("fstrong"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_HAS_LANDING_LAG,3);
atk(a,AG_STRONG_CHARGE_WINDOW,1);
atk(a,AG_HURTBOX_SPRITE,sprite_get("fstrong_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,10);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_ori_ustrong_charge"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
win(a,2,AG_WINDOW_HSPEED,5);
win(a,2,AG_WINDOW_HSPEED_TYPE,2);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy2"));

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,20);
win(a,3,AG_WINDOW_ANIM_FRAMES,5);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
win(a,3,AG_WINDOW_HSPEED_TYPE,1);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,14);
win(a,4,AG_WINDOW_ANIM_FRAMES,2);
win(a,4,AG_WINDOW_ANIM_FRAME_START,9);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,4);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,80);
hbox(a,1,HG_HITBOX_Y,-32);
hbox(a,1,HG_WIDTH,60);
hbox(a,1,HG_HEIGHT,60);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,2);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,6);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_EXTRA_HITPAUSE,4);
hbox(a,1,HG_VISUAL_EFFECT,spinfx);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_weak2"));
hbox(a,1,HG_ANGLE_FLIPPER,9);
hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_HITSTUN_MULTIPLIER,0.7);

hbox(a,2,HG_PARENT_HITBOX,1);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,3);
hbox(a,2,HG_WINDOW_CREATION_FRAME,4);
hbox(a,2,HG_LIFETIME,2);
hbox(a,2,HG_HITBOX_X,80);
hbox(a,2,HG_HITBOX_Y,-32);
hbox(a,2,HG_HITBOX_GROUP,2);

hbox(a,3,HG_PARENT_HITBOX,3);
hbox(a,3,HG_HITBOX_TYPE,1);
hbox(a,3,HG_WINDOW,3);
hbox(a,3,HG_WINDOW_CREATION_FRAME,8);
hbox(a,3,HG_LIFETIME,4);
hbox(a,3,HG_HITBOX_X,84);
hbox(a,3,HG_HITBOX_Y,-36);
hbox(a,3,HG_WIDTH,74);
hbox(a,3,HG_HEIGHT,74);
hbox(a,3,HG_PRIORITY,3);
hbox(a,3,HG_DAMAGE,8);
hbox(a,3,HG_ANGLE,45);
hbox(a,3,HG_BASE_KNOCKBACK,8);
hbox(a,3,HG_KNOCKBACK_SCALING,1);
hbox(a,3,HG_BASE_HITPAUSE,10);
hbox(a,3,HG_HITPAUSE_SCALING,1);
hbox(a,3,HG_VISUAL_EFFECT,bigicefx);
hbox(a,3,HG_VISUAL_EFFECT_X_OFFSET,20);
hbox(a,3,HG_HIT_SFX,asset_get("sfx_icehit_heavy1"));
hbox(a,3,HG_HITBOX_GROUP,3);
hbox(a,3,HG_HIT_LOCKOUT,4);

hbox(a,4,HG_PARENT_HITBOX,4); // identical to 1
hbox(a,4,HG_HITBOX_TYPE,1);
hbox(a,4,HG_WINDOW,3);
hbox(a,4,HG_LIFETIME,2);
hbox(a,4,HG_HITBOX_X,26);
hbox(a,4,HG_HITBOX_Y,-32);
hbox(a,4,HG_WIDTH,52);
hbox(a,4,HG_HEIGHT,30);
hbox(a,4,HG_PRIORITY,1);
hbox(a,4,HG_DAMAGE,2);
hbox(a,4,HG_SHAPE,1);
hbox(a,4,HG_ANGLE,40);
hbox(a,4,HG_BASE_KNOCKBACK,10);
hbox(a,4,HG_BASE_HITPAUSE,4);
hbox(a,4,HG_VISUAL_EFFECT,spinfx);
hbox(a,4,HG_HIT_SFX,asset_get("sfx_icehit_weak2"));
hbox(a,4,HG_HITBOX_GROUP,1);
hbox(a,4,HG_HITSTUN_MULTIPLIER,0.7);