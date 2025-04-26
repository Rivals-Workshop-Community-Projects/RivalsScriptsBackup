#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FAIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("fair"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,7);
atk(a,AG_HURTBOX_SPRITE,sprite_get("fair_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,10);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_VSPEED,-1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
win(a,1,AG_WINDOW_SFX_FRAME,8);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,10);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,2);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,1);
hbox(a,1,HG_HITBOX_X,44);
hbox(a,1,HG_HITBOX_Y,-30);
hbox(a,1,HG_WIDTH,40);
hbox(a,1,HG_HEIGHT,30);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,9);
hbox(a,1,HG_ANGLE,361);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,.85);
hbox(a,1,HG_BASE_HITPAUSE,9);
hbox(a,1,HG_HITPAUSE_SCALING,.4);
hbox(a,1,HG_VISUAL_EFFECT,sweetfx);
hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,20);
hbox(a,1,HG_HIT_LOCKOUT,2);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));

hbox(a,2,HG_PARENT_HITBOX,2);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_LIFETIME,3);
hbox(a,2,HG_HITBOX_X,28);
hbox(a,2,HG_HITBOX_Y,-30);
hbox(a,2,HG_WIDTH,64);
hbox(a,2,HG_HEIGHT,32);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,6);
hbox(a,2,HG_ANGLE,60);
hbox(a,2,HG_BASE_KNOCKBACK,7);//7
hbox(a,2,HG_KNOCKBACK_SCALING,.2);//.2
hbox(a,2,HG_BASE_HITPAUSE,6);
hbox(a,2,HG_HITPAUSE_SCALING,.3);
hbox(a,2,HG_VISUAL_EFFECT_X_OFFSET,20);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_weak2"));