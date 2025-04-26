#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=AT_FSPECIAL_2;

atk(a,AG_CATEGORY,2);
atk(a,AG_SPRITE,sprite_get("fspecial"));
atk(a,AG_NUM_WINDOWS,9);
atk(a,AG_HURTBOX_SPRITE,sprite_get("fspecial_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,8);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,2);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,2);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_HAS_SFX,1);
win(a,3,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,2);
win(a,4,AG_WINDOW_ANIM_FRAMES,2);
win(a,4,AG_WINDOW_ANIM_FRAME_START,2);

win(a,5,AG_WINDOW_TYPE,1);
win(a,5,AG_WINDOW_LENGTH,6);
win(a,5,AG_WINDOW_ANIM_FRAMES,3);
win(a,5,AG_WINDOW_ANIM_FRAME_START,4);

win(a,6,AG_WINDOW_TYPE,1);
win(a,6,AG_WINDOW_LENGTH,4);
win(a,6,AG_WINDOW_ANIM_FRAMES,1);
win(a,6,AG_WINDOW_ANIM_FRAME_START,7);
win(a,6,AG_WINDOW_HAS_SFX,1);
win(a,6,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy1"));
win(a,6,AG_WINDOW_HSPEED,3);

win(a,7,AG_WINDOW_TYPE,1);
win(a,7,AG_WINDOW_LENGTH,4);
win(a,7,AG_WINDOW_ANIM_FRAMES,2);
win(a,7,AG_WINDOW_ANIM_FRAME_START,8);

win(a,8,AG_WINDOW_TYPE,1);
win(a,8,AG_WINDOW_LENGTH,10);
win(a,8,AG_WINDOW_ANIM_FRAMES,2);
win(a,8,AG_WINDOW_ANIM_FRAME_START,10);
win(a,8,AG_WINDOW_HAS_WHIFFLAG,1);

win(a,9,AG_WINDOW_TYPE,1);
win(a,9,AG_WINDOW_LENGTH,4);
win(a,9,AG_WINDOW_ANIM_FRAMES,1);
win(a,9,AG_WINDOW_ANIM_FRAME_START,3);
win(a,9,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,3);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,7);
hbox(a,1,HG_LIFETIME,4);
hbox(a,1,HG_SHAPE,1);
hbox(a,1,HG_HITBOX_X,66);
hbox(a,1,HG_HITBOX_Y,-20);
hbox(a,1,HG_WIDTH,80);
hbox(a,1,HG_HEIGHT,40);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,4);
hbox(a,1,HG_ANGLE,40);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,0.6);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,1);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
hbox(a,1,HG_VISUAL_EFFECT,306);
hbox(a,1,HG_HITBOX_GROUP,-1);

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_WINDOW_CREATION_FRAME,1);
hbox(a,2,HG_LIFETIME,1);
hbox(a,2,HG_SHAPE,1);
hbox(a,2,HG_HITBOX_X,45);
hbox(a,2,HG_HITBOX_Y,-20);
hbox(a,2,HG_WIDTH,70);
hbox(a,2,HG_HEIGHT,40);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,1);
hbox(a,2,HG_ANGLE,70);
hbox(a,2,HG_BASE_KNOCKBACK,3);
hbox(a,2,HG_BASE_HITPAUSE,2);
hbox(a,2,HG_EXTRA_HITPAUSE,4);
hbox(a,2,HG_HITPAUSE_SCALING,1);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
hbox(a,2,HG_HITBOX_GROUP,-1);

hbox(a,3,HG_HITBOX_TYPE,1);
hbox(a,3,HG_WINDOW,4);
hbox(a,3,HG_WINDOW_CREATION_FRAME,1);
hbox(a,3,HG_LIFETIME,1);
hbox(a,3,HG_SHAPE,1);
hbox(a,3,HG_HITBOX_X,45);
hbox(a,3,HG_HITBOX_Y,-20);
hbox(a,3,HG_WIDTH,70);
hbox(a,3,HG_HEIGHT,40);
hbox(a,3,HG_PRIORITY,1);
hbox(a,3,HG_DAMAGE,2);
hbox(a,3,HG_ANGLE,70);
hbox(a,3,HG_BASE_KNOCKBACK,3);
hbox(a,3,HG_BASE_HITPAUSE,2);
hbox(a,3,HG_EXTRA_HITPAUSE,4);
hbox(a,3,HG_HITPAUSE_SCALING,1);
hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
hbox(a,3,HG_HITBOX_GROUP,-1);