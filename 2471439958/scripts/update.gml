//update

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 17) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.


if ((attack == AT_USPECIAL)  || state_cat == SC_HITSTUN)
{
	//Corta la generaci�n de meter cuando eres golpeado o mientras estas realizando la recovery
	var meter_gain = 0; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
	//move_cooldown[AT_USPECIAL] = 5;						//cooldown  por ahora desactivado
}

// ESTA ES LA CONDICION PARA RECUPERAR METER (Con esta logica -Recupera al estar en el suelo o hacer walljumps)
if (!free) // If hit or walljump or on the ground, you get back your uspec
{
	//Movi aqui la condicion para recuperar meter
	var meter_gain = 1; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
}

//Gana mas cuando hace walljump
if (state == PS_WALL_JUMP) // If hit or walljump or on the ground, you get back your uspec
{
	//Movi aqui la condicion para recuperar meter
	var meter_gain = 5; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
}

if ((attack == AT_USPECIAL_GROUND)  || state_cat == SC_HITSTUN)
{
	//Corta la generaci�n de meter cuando eres golpeado o mientras estas realizando la recovery
	var meter_gain = 0; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
	//move_cooldown[AT_USPECIAL_GROUND] = 5;						//cooldown  por ahora desactivado
}

if (attack == AT_NSPECIAL)
{
	//Corta la generaci�n de meter cuando eres golpeado o mientras estas realizando la recovery
	var meter_gain = 0; // change this to how much you meter you gain back per frame
	uspec_meter = min(uspec_meter+meter_gain,uspec_max);
	//move_cooldown[AT_NSPECIAL] = 5;						//cooldown  por ahora desactivado
}


if uspec_meter <= 0{
	uspec_meter = 0;
}
if (attack == AT_USPECIAL) && (uspec_meter == 0){
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -1);
	set_num_hitboxes(AT_USPECIAL, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 16);
}
if (uspec_meter > 1) && fire == 1{
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -3);
	set_num_hitboxes(AT_USPECIAL, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
}if (uspec_meter > 1)&& ice == 1{
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -4);
	set_num_hitboxes(AT_USPECIAL, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
}if (uspec_meter > 1)&& thunder == 1{
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -3);
	set_num_hitboxes(AT_USPECIAL, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
}if (uspec_meter > 1)&& pistols == 1{
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -2.5);
	set_num_hitboxes(AT_USPECIAL, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
}

//FREEZE

if (ice_cont > -31 && ice_cont < 30 && ice_cont != 0){
	ice_cont++;
}

if (ice == 1){

	if (ice_cont == 30){
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 30);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 30);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 30);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 5);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 5);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
	
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
	}

	if (ice_cont < 30){
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 30);
	
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
	}
}

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        ice_mark = 0;
        outline_color = [ 0, 0, 0];
        other_player_id.ice_cont = -30;
    	other_player_id.ice_active = false;
    	other_player_id.ice_active_cont = 0;
    }
}

if (ice_active = true){
	ice_active_cont++
}

if (ice_active_cont >= 400){ //How long the ice effect is active, in frames
	ice_active_cont = 0;
	ice_active = false;
	ice_cont = 0;
	hit_player_obj.ice_mark = 0;
	hit_player_obj.outline_color = [0, 0, 0];
}

if (attack == AT_FSTRONG){
		if window == 5 && has_hit = true && fire = 1{ 
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_fire"));
	}if fire = 1 && window < 2
	{
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
	}
}

if (attack == AT_FSTRONG){
		if window == 4 && fire == 1 { 
		has_hit=false;
	}
}
if (attack == AT_DSPECIAL){
		if window >= 3 && (vsp >= 1) or (vsp <= -1){ 
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -3);
	}
	if window == 1{
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -1);
	}
}

//ELEMENT CHANGE


if (pistols == 1){

	
	set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 10);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 193);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 193);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dirt_effect"));
		
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 10);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 193);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 193);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("dirt_effect"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 13);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_rock"));	
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
				
	set_num_hitboxes(AT_FSTRONG, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 155);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 38);
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 155);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 30);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
	
	//FORWARD AIR ROCK
	
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairB_rock"));
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 15);
	
	set_num_hitboxes(AT_FAIR, 3);
	
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 32);
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .85);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 131);
	
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 6);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 134);
	
	set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 13);
	set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
	set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 131);
	
}

	
if (ice == 1){		
		
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -3);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("shotgunhit"));
	
	set_num_hitboxes(AT_NSPECIAL, 3);
	
		
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 12);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -28);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 158);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletI"));
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -2);
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 158);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .9);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bulletI"));
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 158);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("bulletI"));
	
	
	set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 14);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 199);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ice_effect"));
		
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 0);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 14);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 199);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("ice_effect"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_ice"));		
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
			
	set_num_hitboxes(AT_FSTRONG, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_blow_ice_heavy2"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_blow_ice_heavy2"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 199);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 30);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 35);
	
	//FORWARD AIR ICE
	
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairB_ice"));
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
	
	set_num_hitboxes(AT_FAIR, 3);
	
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("sfx_blow_ice_heavy2"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 199);
	
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("sfx_blow_ice_heavy1"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 199);
	
	set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("sfx_blow_ice_heavy1"));
	set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 199);
}

	
if thunder == 1{
	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("TESLA_CHARGE"));
	
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -5);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("TESLA_FIRE"));
	
	set_num_hitboxes(AT_NSPECIAL, 1);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 12);
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 22);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 124);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -18);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 157);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tesla"));	
	
	
	set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 10);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 124);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 124);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("thunder_effect"));
	
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 10);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 124);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 124);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("thunder_effect"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 7);
	
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
	
	set_num_hitboxes(AT_FSTRONG, 2);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 130);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 11);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 35);
	
	//FORWARD AIR PLASMA
	
	
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
	
	set_num_hitboxes(AT_FAIR, 3);
	
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 125);
	
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 129);
	
	set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
	set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 0);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
	set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 129);
}

	
if fire == 1{
	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);	
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -3);
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("Dusk_shotgun"));
	
	set_num_hitboxes(AT_NSPECIAL, 6);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 12);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -28);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletF"));
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bulletF"));
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 15);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("bulletF"));
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);	
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .5);

	
	set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 12);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fire_effect"));
	
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 0);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 12);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 2);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("fire_effect"));
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));		
	
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	
	set_num_hitboxes(AT_FSTRONG, 4);
	
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
	
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 19);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 38);
	set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
	set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 16);
	
	//FORWARD AIR FIRE
	
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairB_fire"));
	
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
	
	set_num_hitboxes(AT_FAIR, 3);
	
	set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 16);
	set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 204);
	
	set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 7);
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 204);
	
	set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 7);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
	set_hitbox_value(AT_FAIR, 3, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 204);
}

if thunder == 1 && genesis == 0{
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_plasma"));	
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairB_plasma"));
}
if genesis == 1{
	if thunder == 1{
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_G8"));	
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fairB_G8"));
	}
}

if (taunt_pressed) && switcher == 1{
	if down_down && (element_change == 5){
	fire = 0
	ice = 0
	thunder = 0
	pistols = 1
	}
	if right_down && (element_change == 5){
	
	fire = 0
	ice = 1
	thunder = 0
	pistols = 0
	}
	if left_down && (element_change == 5){

	fire = 0
	ice = 0
	thunder = 1
	pistols = 0
	}
	if up_down && (element_change == 5){
	
	fire = 1
	ice = 0
	thunder = 0
	pistols = 0
	}
	if (!joy_pad_idle){
		element_change++;
		if (element_change >= 7){
			element_change = 0;
		}
	}
	if (element_change == 6){
		if up_down && fire = 1{
		spawn_hit_fx( x + 2*spr_dir, y + -25, switcherF);
		sound_play(sound_get("element_switcher"));
		}
		if right_down && ice = 1{
		spawn_hit_fx( x + 2*spr_dir, y + -25, switcherI);
		sound_play(sound_get("element_switcher"));
		}
		if left_down && thunder = 1{
		spawn_hit_fx( x + 2*spr_dir, y + -25, switcherP);
		sound_play(sound_get("element_switcher"));
		}
		if down_down && pistols = 1{
		spawn_hit_fx( x + 2*spr_dir, y + -25, switcherR);
		sound_play(sound_get("element_switcher"));
		}
	}
}

if (attack == 49){
		hit_player_obj.should_make_shockwave=false;
		hit_player.can_move=false;
		hit_player.can_wall_jump=false;
		hit_player.has_walljump=false;
		hit_player.can_fast_fall=false;
}


//NO Element


//I LIVE AGAIN

//if get_gameplay_time() <= 120 && caleb == 0 and taunt_pressed && get_player_color(player) == 2{
	//caleb = 1
	//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
	//sound_play(sound_get("I_live_again"));
//}
//if get_player_color(player) == 2{
	//set_victory_theme(sound_get("caleb_victory"));
//}

//SERVANT OF THE CRYSTAL

if get_gameplay_time() <= 120 && switcher == 0 and shield_pressed{
	switcher = 1
	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	//sound_play(sound_get("machina_intro"));
}

//if get_player_color(player) == 12{
	//set_victory_theme(sound_get("machina_victory"));
//}
//if get_player_color(player) == 15{
	//set_victory_theme(sound_get("yuri_victory"));
//}
//----------------------------- //
//CALEB SOUNDS

//if (state == PS_FIRST_JUMP)&&(state_timer==1) {
    //if (caleb == 1) {
        //sound_play(sound_get("JUMP"));
    //}
//}

//#region After Image Code
if(get_player_color(player) == 30){
if(afterImageTimer = 0) {afterImageTimer = 6;}
//	if (afterImageTimer > 0)
	{
	    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:4};
	    afterImageTimer--;
	}
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 4) afterImage[i].alpha--;
//}
//afterImageTimer++;
}
//#endregion



if(caleb==1)&&(state==14)&&(state_timer==80){
		sound_play( sound_get("am_not_dead_yet"));
}

if get_gameplay_time() == 30 {
		sound_play(asset_get("sfx_blow_medium3"))
}
if get_gameplay_time() == 34 {
		sound_play(asset_get("sfx_swipe_weak1"))
}
if get_gameplay_time() == 39 {
		sound_play(asset_get("sfx_swipe_weak1"))
}
if get_gameplay_time() == 45 {
		sound_play(asset_get("sfx_swipe_weak1"))
}
if get_gameplay_time() == 50 {
		sound_play(asset_get("sfx_swipe_medium2"))
}
if get_gameplay_time() == 60 {
		sound_play(asset_get("sfx_swipe_medium2"))
}
if get_gameplay_time() == 70 {
		sound_play(asset_get("sfx_swipe_medium2"))
}
if get_gameplay_time() == 80 {
		sound_play(sound_get("axe_hit"))
}