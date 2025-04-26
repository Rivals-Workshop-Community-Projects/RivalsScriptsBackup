#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DAIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,6);
atk(a,AG_SPRITE,sprite_get("dair"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("dair_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,9);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_spin"));
win(a,1,AG_WINDOW_SFX_FRAME,8);
win(a,1,AG_WINDOW_VSPEED,-1);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,14);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,9);
win(a,3,AG_WINDOW_ANIM_FRAMES,3);
win(a,3,AG_WINDOW_ANIM_FRAME_START,7);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,-4);
hbox(a,1,HG_HITBOX_Y,-20);
hbox(a,1,HG_WIDTH,66);
hbox(a,1,HG_HEIGHT,44);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,2);
hbox(a,1,HG_ANGLE,270);
hbox(a,1,HG_BASE_KNOCKBACK,5);
hbox(a,1,HG_KNOCKBACK_SCALING,0.4);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,0.4);
hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,16);
hbox(a,1,HG_VISUAL_EFFECT,303);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium3"));
hbox(a,1,HG_HITBOX_GROUP,-1);

hbox(a,2,HG_PARENT_HITBOX,2);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_LIFETIME,2);
hbox(a,2,HG_HITBOX_X,-4);
hbox(a,2,HG_HITBOX_Y,-20);
hbox(a,2,HG_WIDTH,66);
hbox(a,2,HG_HEIGHT,44);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,2);
hbox(a,2,HG_ANGLE,90);
hbox(a,2,HG_BASE_KNOCKBACK,6);
hbox(a,2,HG_BASE_HITPAUSE,4);
hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,16);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
hbox(a,2,HG_ANGLE_FLIPPER,9);
hbox(a,2,HG_HITBOX_GROUP,-1);