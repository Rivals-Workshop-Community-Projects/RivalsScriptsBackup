#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DATTACK;

atk(a,AG_SPRITE,sprite_get("dattack"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_AIR_SPRITE,sprite_get("dattack"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("dattack_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,10);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HSPEED,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,8);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_blow_medium3"));
win(a,2,AG_WINDOW_SFX_FRAME,2);
win(a,2,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
win(a,2,AG_WINDOW_CUSTOM_GROUND_FRICTION,.04);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,8);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,3);
win(a,3,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
win(a,3,AG_WINDOW_CUSTOM_GROUND_FRICTION,.6);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,8);
win(a,4,AG_WINDOW_ANIM_FRAMES,2);
win(a,4,AG_WINDOW_ANIM_FRAME_START,4);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,4);
hbox(a,1,HG_WINDOW_CREATION_FRAME,4);
hbox(a,1,HG_HITBOX_X,28);
hbox(a,1,HG_HITBOX_Y,-20);
hbox(a,1,HG_WIDTH,80);
hbox(a,1,HG_HEIGHT,40);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,7);
hbox(a,1,HG_ANGLE,65);
hbox(a,1,HG_SHAPE,1);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,.3);
hbox(a,1,HG_BASE_HITPAUSE,10);
hbox(a,1,HG_HITPAUSE_SCALING,.3);
hbox(a,1,HG_VISUAL_EFFECT,301);
hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,8);
hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,24);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
hbox(a,1,HG_HITBOX_GROUP,-1);