//hit_player.gml
//dattack2

var sickImmune = "immune_to_sickness" in hit_player_obj && hit_player_obj.immune_to_sickness

//sfx layering
switch(my_hitboxID.attack){
	
	case AT_NAIR:
		if (my_hitboxID.hbox_num == 3){ 
				sound_play(asset_get("sfx_ice_back_air"), 0, noone, 1, 0.85)
		}
	break;
	
	case AT_FSTRONG:
		if (my_hitboxID.hbox_num == 2){ 
				sound_play(asset_get("sharp3"), 0, noone, 1, 0.85)
		}
	break;
	
	case AT_DSTRONG:
		if (my_hitboxID.hbox_num == 8){ 
				sound_play(asset_get("sharp3"), 0, noone, 1, 0.85)
		}
	break;
	
	case AT_USTRONG:
		if (my_hitboxID.hbox_num == 7){ 
				sound_play(asset_get("sharp3"), 0, noone, 1, 0.85)
		}
	break;
	
	case AT_NSPECIAL:
		if (hit_player_obj.malsick && my_hitboxID.hbox_num == 2) {
			print_debug("lol")
			sound_play(sound_get("getboosted"));  
			hit_player_obj.malsick = false;
			hit_player_obj.sickTimer = 0;
			hit_player_obj.sickAfterGrace = hit_player_obj.sickAfterGraceMax;
		}
}

//Consume sickness to enhance strongs
var hitFSTRONG = my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1;
var hitUSTRONG = my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1;
var hitDSTRONG = my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6);
if ((hitFSTRONG || hitUSTRONG|| hitDSTRONG) && hit_player_obj.malsick)
{
	sound_play(sound_get("getboosted"));  
	hit_player_obj.malsick = false;
	hit_player_obj.sickTimer = 0;
	hit_player_obj.sickAfterGrace = hit_player_obj.sickAfterGraceMax;
	markConsumed = true;
	hit_player_obj.resetOutline = true;
	
	hit_player_obj.should_make_shockwave = false;
	hit_player_obj.orig_knock = 5; //adjust this number
	hit_player_obj.hitstop_full = 60;
	hit_player_obj.hitstop = 60;
	hit_player_obj.hitpause = true;
	
	hit_player_obj.strongStunnedTimer = 20;
}

//(and dair now)
var hitDAIR1 = my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1;
var hitDAIR2 = my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num == 1;

if (hitDAIR1) 
{
	if hit_player_obj.malsick {
		set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 270);
	}
	else {
		set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 80);
	}
}

if (hitDAIR2 && hit_player_obj.malsick) 
{
		set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 270);
		
		sound_play(sound_get("getboosted"));  
		hit_player_obj.malsick = false;
		hit_player_obj.sickTimer = 0;
		hit_player_obj.sickAfterGrace = hit_player_obj.sickAfterGraceMax;
		markConsumed = true;
		hit_player_obj.resetOutline = true;
}

if (my_hitboxID.attack == AT_USPECIAL) {
	
	//Before PROGRESSING, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false
	&& hit_player_obj.clone == false) {
	    uspeccancel = true;
	}
}

//Inflict poison to hit foes
if (my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DTILT) 
{
    if !("malsick_immune" in hit_player_obj and hit_player_obj.malsick_immune)
    {
        if !hit_player_obj.malsick 
        {
        	hit_player_obj.statustexttrigger = true;
            sound_play(sound_get("sick"));
        }
        hit_player_obj.sickAfterGrace = 0;
        hit_player_obj.malsick = true;
        hit_player_obj.sickOwner = id;
        hit_player_obj.sickTimer = 60*5;
    }
}


//dairgrab
if (my_hitboxID.attack == AT_DAIR) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_NTHROW);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

