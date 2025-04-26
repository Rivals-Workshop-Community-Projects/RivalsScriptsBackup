#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FTILT;

atk(a,AG_SPRITE,sprite_get("ftilt"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HURTBOX_SPRITE,sprite_get("ftilt_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,10);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy2"));
win(a,1,AG_WINDOW_SFX_FRAME,9);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
win(a,2,AG_WINDOW_HSPEED,5);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,10);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,6);
hbox(a,1,HG_HITBOX_X,28);
hbox(a,1,HG_HITBOX_Y,-26);
hbox(a,1,HG_WIDTH,60);
hbox(a,1,HG_HEIGHT,40);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,7);
hbox(a,1,HG_ANGLE,45);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,0.4);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_HITPAUSE_SCALING,0.4);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
hbox(a,1,HG_VISUAL_EFFECT,301);

hbox(a,2,HG_HITBOX_GROUP,1);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_LIFETIME,3);
hbox(a,2,HG_HITBOX_X,46);
hbox(a,2,HG_HITBOX_Y,-26);
hbox(a,2,HG_WIDTH,75);
hbox(a,2,HG_HEIGHT,30);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,10);
hbox(a,2,HG_ANGLE,45);
hbox(a,2,HG_BASE_KNOCKBACK,8);
hbox(a,2,HG_KNOCKBACK_SCALING,.8);
hbox(a,2,HG_BASE_HITPAUSE,11);
hbox(a,2,HG_HITPAUSE_SCALING,.8);
hbox(a,2,HG_VISUAL_EFFECT,sweetfx);
hbox(a,2,HG_VISUAL_EFFECT_X_OFFSET,16);
hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,8);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_icehit_heavy1"));