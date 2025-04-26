#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_JAB;

atk(a,AG_NUM_WINDOWS,10);
atk(a,AG_SPRITE,sprite_get("jab"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("jab_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,4);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
win(a,1,AG_WINDOW_HSPEED,4);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,4);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
win(a,2,AG_WINDOW_GOTO,6);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,2);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,18);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
win(a,4,AG_WINDOW_GOTO,7);

win(a,5,AG_WINDOW_TYPE,1);
win(a,5,AG_WINDOW_LENGTH,9);
win(a,5,AG_WINDOW_ANIM_FRAMES,3);
win(a,5,AG_WINDOW_ANIM_FRAME_START,6);
win(a,5,AG_WINDOW_GOTO,4);
win(a,5,AG_WINDOW_HAS_SFX,1);
win(a,5,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));

win(a,6,AG_WINDOW_TYPE,1);
win(a,6,AG_WINDOW_LENGTH,21);
win(a,6,AG_WINDOW_ANIM_FRAMES,3);
win(a,6,AG_WINDOW_ANIM_FRAME_START,2);
win(a,6,AG_WINDOW_GOTO,11);

win(a,7,AG_WINDOW_TYPE,1);
win(a,7,AG_WINDOW_LENGTH,6);
win(a,7,AG_WINDOW_ANIM_FRAMES,2);
win(a,7,AG_WINDOW_ANIM_FRAME_START,9);
win(a,7,AG_WINDOW_HAS_SFX,1);
win(a,7,AG_WINDOW_SFX,asset_get("sfx_swipe_weak1"));

win(a,8,AG_WINDOW_TYPE,1);
win(a,8,AG_WINDOW_LENGTH,8);
win(a,8,AG_WINDOW_ANIM_FRAMES,1);
win(a,8,AG_WINDOW_ANIM_FRAME_START,11);

win(a,9,AG_WINDOW_TYPE,1);
win(a,9,AG_WINDOW_LENGTH,12);
win(a,9,AG_WINDOW_ANIM_FRAMES,4);
win(a,9,AG_WINDOW_ANIM_FRAME_START,12);
win(a,9,AG_WINDOW_HAS_SFX,1);
win(a,9,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));

win(a,10,AG_WINDOW_TYPE,1);
win(a,10,AG_WINDOW_LENGTH,8);
win(a,10,AG_WINDOW_ANIM_FRAMES,2);
win(a,10,AG_WINDOW_ANIM_FRAME_START,16);


set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,28);
hbox(a,1,HG_HITBOX_Y,-24);
hbox(a,1,HG_WIDTH,60);
hbox(a,1,HG_HEIGHT,40);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,4);
hbox(a,1,HG_ANGLE,55);
hbox(a,1,HG_SHAPE,1);
hbox(a,1,HG_BASE_KNOCKBACK,5);
hbox(a,1,HG_KNOCKBACK_SCALING,.1);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_HITPAUSE_SCALING,.1);
hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,9);
hbox(a,2,HG_WINDOW_CREATION_FRAME,6);
hbox(a,2,HG_LIFETIME,2);
hbox(a,2,HG_HITBOX_X,30);
hbox(a,2,HG_HITBOX_Y,-30);
hbox(a,2,HG_WIDTH,60);
hbox(a,2,HG_HEIGHT,60);
hbox(a,2,HG_SHAPE,0);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,6);
hbox(a,2,HG_ANGLE,90);
hbox(a,2,HG_BASE_KNOCKBACK,8);
hbox(a,2,HG_KNOCKBACK_SCALING,.2);
hbox(a,2,HG_BASE_HITPAUSE,8);
hbox(a,2,HG_EXTRA_HITPAUSE,4);
hbox(a,2,HG_HITPAUSE_SCALING,.2);
hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,30);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
hbox(a,2,HG_HITBOX_GROUP,2);