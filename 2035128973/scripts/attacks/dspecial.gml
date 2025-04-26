#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DSPECIAL;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("dspecialAcc"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_OFF_LEDGE,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dspecialAcc_hurt"));
	atk(a,AG_USES_CUSTOM_GRAVITY,1);
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,15);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_absa_concentrate"));
	win(a,1,AG_WINDOW_HSPEED_TYPE,1);
	win(a,1,AG_WINDOW_VSPEED_TYPE,2);
	win(a,1,AG_WINDOW_HSPEED,0);
	win(a,1,AG_WINDOW_VSPEED,0);
	win(a,1,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,1,AG_WINDOW_CUSTOM_AIR_FRICTION,1);
	win(a,1,AG_WINDOW_CUSTOM_GRAVITY,0.1);
	win(a,1,AG_WINDOW_ANIM_FRAME_START,0);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_SFX_FRAME,5);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("teleport"));
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,3,AG_WINDOW_HSPEED,9);
	win(a,3,AG_WINDOW_HSPEED_TYPE,0);
	win(a,3,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,3,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,4);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,4,AG_WINDOW_HSPEED,9);
	win(a,4,AG_WINDOW_HSPEED_TYPE,2); 
	win(a,4,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,4,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.3);
	
	win(a,5,AG_WINDOW_TYPE,1);
	win(a,5,AG_WINDOW_LENGTH,8);
	win(a,5,AG_WINDOW_ANIM_FRAMES,1);
	win(a,5,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,5,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,5,AG_WINDOW_CUSTOM_GROUND_FRICTION,0.4);
	
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_GROUP,1);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,9);
	hbox(a,1,HG_HITBOX_X,34);
	hbox(a,1,HG_HITBOX_Y,-38);
	hbox(a,1,HG_WIDTH,58);
	hbox(a,1,HG_HEIGHT,32);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,16);
	hbox(a,1,HG_ANGLE,361);
	hbox(a,1,HG_HITSTUN_MULTIPLIER,1.7);
	hbox(a,1,HG_BASE_KNOCKBACK,10);
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
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,9);
	hbox(a,2,HG_HITBOX_X,12);
	hbox(a,2,HG_HITBOX_Y,-16);
	hbox(a,2,HG_WIDTH,48);
	hbox(a,2,HG_HEIGHT,16);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,16);
	hbox(a,2,HG_ANGLE,361);
	hbox(a,2,HG_HITSTUN_MULTIPLIER,1.7);
	hbox(a,2,HG_BASE_KNOCKBACK,10);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.3);
	hbox(a,2,HG_BASE_HITPAUSE,2);
	hbox(a,2,HG_EXTRA_HITPAUSE,5);
	hbox(a,2,HG_VISUAL_EFFECT,301);
	hbox(a,2,HG_IGNORES_PROJECTILES,0);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
}
else
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("dspecial"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_OFF_LEDGE,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dspecial_hurt"));

	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,20);
	win(a,1,AG_WINDOW_ANIM_FRAMES,5);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_absa_concentrate"));
	win(a,1,AG_WINDOW_HSPEED_TYPE,2);
	win(a,1,AG_WINDOW_VSPEED_TYPE,2);
	win(a,1,AG_WINDOW_HSPEED,3);
	win(a,1,AG_WINDOW_VSPEED,-8);

	win(a,2,AG_WINDOW_TYPE,8);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,5);
	win(a,2,AG_WINDOW_HSPEED,6);
	win(a,2,AG_WINDOW_HSPEED_TYPE,1);
	win(a,2,AG_WINDOW_VSPEED,15);
	win(a,2,AG_WINDOW_VSPEED_TYPE,1);

	win(a,3,AG_WINDOW_TYPE,10);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,7);
	win(a,3,AG_WINDOW_HSPEED,6);
	win(a,3,AG_WINDOW_HSPEED_TYPE,1);
	win(a,3,AG_WINDOW_VSPEED,15);
	win(a,3,AG_WINDOW_VSPEED_TYPE,1);

	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,30);
	win(a,4,AG_WINDOW_ANIM_FRAMES,6);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,9);
	win(a,4,AG_WINDOW_HSPEED,0);
	win(a,4,AG_WINDOW_HSPEED_TYPE,1);
	win(a,4,AG_WINDOW_HAS_SFX,1);
	win(a,4,AG_WINDOW_SFX,asset_get("sfx_land_heavy"));

	set_num_hitboxes(a,3);

	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_WINDOW_CREATION_FRAME,0);
	hbox(a,1,HG_LIFETIME,9000);
	hbox(a,1,HG_HITBOX_X,15);
	hbox(a,1,HG_HITBOX_Y,-25);
	hbox(a,1,HG_WIDTH,50);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_SHAPE,0);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,3);
	hbox(a,1,HG_ANGLE,-75);
	hbox(a,1,HG_BASE_KNOCKBACK,6);
	hbox(a,1,HG_KNOCKBACK_SCALING,.4);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_EXTRA_HITPAUSE,-4);
	hbox(a,1,HG_HITPAUSE_SCALING,0);
	hbox(a,1,HG_VISUAL_EFFECT,303);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,0);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,0);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium3"));
	hbox(a,1,HG_GROUNDEDNESS,2);
	hbox(a,1,HG_IGNORES_PROJECTILES,0);
	hbox(a,1,HG_TECHABLE,3);
	hbox(a,1,HG_FORCE_FLINCH,1);

	hbox(a,2,HG_PARENT_HITBOX,2);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,0);
	hbox(a,2,HG_LIFETIME,9000);
	hbox(a,2,HG_HITBOX_X,15);
	hbox(a,2,HG_HITBOX_Y,-25);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,50);
	hbox(a,2,HG_SHAPE,0);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,3);
	hbox(a,2,HG_ANGLE,-75);
	hbox(a,2,HG_BASE_KNOCKBACK,4);
	hbox(a,2,HG_KNOCKBACK_SCALING,0);
	hbox(a,2,HG_BASE_HITPAUSE,8);
	hbox(a,2,HG_EXTRA_HITPAUSE,-4);
	hbox(a,2,HG_HITPAUSE_SCALING,0);
	hbox(a,2,HG_VISUAL_EFFECT,303);
	hbox(a,2,HG_VISUAL_EFFECT_X_OFFSET,0);
	hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,0);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium3"));
	hbox(a,2,HG_GROUNDEDNESS,1);
	hbox(a,2,HG_IGNORES_PROJECTILES,0);
	hbox(a,2,HG_FORCE_FLINCH,1);

	hbox(a,3,HG_PARENT_HITBOX,3);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,4);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,0);
	hbox(a,3,HG_LIFETIME,5);
	hbox(a,3,HG_HITBOX_X,15);
	hbox(a,3,HG_HITBOX_Y,-13);
	hbox(a,3,HG_WIDTH,120);
	hbox(a,3,HG_HEIGHT,30);
	hbox(a,3,HG_SHAPE,1);
	hbox(a,3,HG_PRIORITY,3);
	hbox(a,3,HG_DAMAGE,10);
	hbox(a,3,HG_ANGLE,361);
	hbox(a,3,HG_BASE_KNOCKBACK,10);
	hbox(a,3,HG_KNOCKBACK_SCALING,.55);
	hbox(a,3,HG_BASE_HITPAUSE,8);
	hbox(a,3,HG_HITPAUSE_SCALING,.75);
	hbox(a,3,HG_VISUAL_EFFECT,304);
	hbox(a,3,HG_VISUAL_EFFECT_X_OFFSET,0);
	hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,0);
	hbox(a,3,HG_HIT_SFX,0);
	hbox(a,3,HG_ANGLE_FLIPPER,6);
	hbox(a,3,HG_EXTRA_CAMERA_SHAKE,4);
	hbox(a,3,HG_IGNORES_PROJECTILES,0);
	hbox(a,3,HG_HITBOX_GROUP,1);
	hbox(a,3,HG_HITSTUN_MULTIPLIER,.90);
}