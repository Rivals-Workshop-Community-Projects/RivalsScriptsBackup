#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_NAIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("nair"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,4);
atk(a,AG_HURTBOX_SPRITE,sprite_get("nair_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,has_rune("D")?1:4);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,has_rune("D")?1:4);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,5);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_abyss_hex_hit"));
win(a,2,AG_WINDOW_SFX_FRAME,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,2);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,6);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,has_rune("D")?6:12);
win(a,4,AG_WINDOW_ANIM_FRAMES,3);
win(a,4,AG_WINDOW_ANIM_FRAME_START,7);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,6);

set_num_hitboxes(a,1);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,0);
hbox(a,1,HG_HITBOX_Y,-37);
hbox(a,1,HG_WIDTH,has_rune("D")?100:85);
hbox(a,1,HG_HEIGHT,has_rune("D")?100:85);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,7);
hbox(a,1,HG_ANGLE,70);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,.3);
hbox(a,1,HG_BASE_HITPAUSE,7);
hbox(a,1,HG_HITPAUSE_SCALING,.2);
hbox(a,1,HG_VISUAL_EFFECT,hexfx);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));
hbox(a,1,HG_ANGLE_FLIPPER,has_rune("D")?8:3);