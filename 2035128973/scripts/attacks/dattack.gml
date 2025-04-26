#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DATTACK;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("dattackAcc"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dattackAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,6);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_SFX_FRAME,5);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_owl2"));
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,0);
	win(a,2,AG_WINDOW_HSPEED,7);
	win(a,2,AG_WINDOW_HSPEED_TYPE,0);
	win(a,2,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,2,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,0);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,12);
	win(a,3,AG_WINDOW_HSPEED,7);
	win(a,3,AG_WINDOW_HSPEED_TYPE,2); 
	win(a,3,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,3,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,8);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,0);
	win(a,4,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,4,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.4);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_GROUP,1);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,9);
	hbox(a,1,HG_HITBOX_X,34);
	hbox(a,1,HG_HITBOX_Y,-38);
	hbox(a,1,HG_WIDTH,58);
	hbox(a,1,HG_HEIGHT,32);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,6);
	hbox(a,1,HG_ANGLE,361);
	hbox(a,1,HG_HITSTUN_MULTIPLIER,0.7);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.3);
	hbox(a,1,HG_BASE_HITPAUSE,2);
	hbox(a,1,HG_EXTRA_HITPAUSE,5);
	hbox(a,1,HG_VISUAL_EFFECT,301);
	hbox(a,1,HG_IGNORES_PROJECTILES,0);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_GROUP,1);
	hbox(a,2,HG_SHAPE,2);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_LIFETIME,9);
	hbox(a,2,HG_HITBOX_X,12);
	hbox(a,2,HG_HITBOX_Y,-16);
	hbox(a,2,HG_WIDTH,48);
	hbox(a,2,HG_HEIGHT,16);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,6);
	hbox(a,2,HG_ANGLE,361);
	hbox(a,2,HG_HITSTUN_MULTIPLIER,0.7);
	hbox(a,2,HG_BASE_KNOCKBACK,8);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.3);
	hbox(a,2,HG_BASE_HITPAUSE,2);
	hbox(a,2,HG_EXTRA_HITPAUSE,5);
	hbox(a,2,HG_VISUAL_EFFECT,301);
	hbox(a,2,HG_IGNORES_PROJECTILES,0);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
}
else
{
	atk(a,AG_SPRITE,sprite_get("dattack"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_AIR_SPRITE,sprite_get("dattack"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dattack_hurt"));

	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,10);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_SFX_FRAME,5);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_blink_dash"));

	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_HSPEED,7);
	win(a,2,AG_WINDOW_HSPEED_TYPE,0);
	win(a,2,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,2,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);

	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,12);
	win(a,3,AG_WINDOW_HSPEED,7);
	win(a,3,AG_WINDOW_HSPEED_TYPE,2); 
	win(a,3,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,3,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);

	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,13);
	win(a,4,AG_WINDOW_ANIM_FRAMES,3);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,4,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,4,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.4);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

	set_num_hitboxes(a,1);

	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,9);
	hbox(a,1,HG_HITBOX_X,24);
	hbox(a,1,HG_HITBOX_Y,-25);
	hbox(a,1,HG_WIDTH,68);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,5);
	hbox(a,1,HG_ANGLE,70);
	hbox(a,1,HG_BASE_KNOCKBACK,9);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.2);
	hbox(a,1,HG_BASE_HITPAUSE,9);
	hbox(a,1,HG_HITPAUSE_SCALING,0.3);
	hbox(a,1,HG_VISUAL_EFFECT,301);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
}