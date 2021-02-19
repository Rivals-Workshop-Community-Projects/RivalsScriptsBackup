var articlecount = 0;
var article1 = noone;

with(asset_get("obj_article1")){
	if (player_id == other.id){
		articlecount++;
		article1 = id;
	}
}
if (articlecount > 0){
	// targma looking towards the ball
	if ((x >= article1.x && spr_dir == 1)
	|| (x < article1.x && spr_dir == -1)){
		signflipper = -1;
	} else{ // targma looking the other direction
		signflipper = 1;
	}
}

if (!instance_exists(article1)
&& articlecount < 1){
		taunt_detonate = false;
} else if (instance_exists(article1)
&& articlecount > 0) {
	taunt_detonate = true;
}

if (state != PS_ATTACK_AIR
&& state != PS_ATTACK_GROUND
&& attack == AT_NAIR){
		can_create_hitbox = true;
}

// doesn't work...
// if (!free){
	// set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	// set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("pratfall_hurt"));
// }else{
	// set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_air"));
	// set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_air_hurt"));
// }

// uncomment once you find a better visual effect
// if (super_jump_timer > 0){
// 	super_jump_timer--;
// 	if (super_jump_timer % 7 == 0){
// 		spawn_hit_fx(x-0*spr_dir, y-0, hit_fx_create(sprite_get("boost_jump_fx"), 15));
// 	}
// }

if (jump_pressed && state == PS_DOUBLE_JUMP && can_super_jump && free && place_meeting(x, y, asset_get("obj_article3"))){
	hsp *= 2.5;
	// vsp = -abs(vsp*1.2);
	vsp = -abs(vsp*1.8);
	if (play_boost_sound){
		sound_play(asset_get("sfx_charge_blade_swing"));
		spawn_hit_fx(x-0*spr_dir, y-0, hit_fx_create(sprite_get("boost_jump_fx"), 20));
		super_jump_timer = 20;
		play_boost_sound = false;
		can_super_jump = false;
	}
}

if (!free){
	play_boost_sound = true;
	can_super_jump = true;
}	

if (magnet > 0){
	magnet--;
}
if (nspec_sound_timer > 0){
	nspec_sound_timer--;
}

if (uspecial_timer > 0){
    can_uspecial = false;
    uspecial_timer--;
}

if (uspecial_timer < 1){
    can_uspecial = true;
}

if(state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_RESPAWN || !free){
	can_uspecial = true;
	move_cooldown[AT_USPECIAL] = 0;
    // uspecial_timer = 1;
}

if(state != PS_ATTACK_AIR && attack == AT_UAIR){
	uair_charge = 0;
	set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_ell_arc_small_missile_ground"));
	set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
}