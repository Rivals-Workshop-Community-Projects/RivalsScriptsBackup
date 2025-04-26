#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_USPECIAL;

atk(a,AG_CATEGORY,2);
atk(a,AG_SPRITE,sprite_get("uspecial"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("uspecial_hurt"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_OFF_LEDGE,1);

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,12);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_bird_sidespecial"));

win(a,2,AG_WINDOW_TYPE,9);
win(a,2,AG_WINDOW_LENGTH,4);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_TYPE,7);
win(a,3,AG_WINDOW_LENGTH,4);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

set_num_hitboxes(a,0);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_LIFETIME,30);
hbox(a,1,HG_HITBOX_Y,-40);
hbox(a,1,HG_WIDTH,70);
hbox(a,1,HG_HEIGHT,70);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,8);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_ANGLE_FLIPPER,10);
hbox(a,1,HG_BASE_KNOCKBACK,6.5);
hbox(a,1,HG_KNOCKBACK_SCALING,.4);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_HITPAUSE_SCALING,.4);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium3"));
hbox(a,1,HG_IGNORES_PROJECTILES,1);
hbox(a,1,HG_HITBOX_GROUP,-1);