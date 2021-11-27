//hit_player.gml
//dattack2

var hitFSTRONG = my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1;
var hitUSTRONG = my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1;
var hitDSTRONG = my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6);
if ((hitFSTRONG || hitUSTRONG|| hitDSTRONG) && hit_player_obj.malsick)
{
	sound_play(sound_get("getboosted"));  
	hit_player_obj.malsick = false;
	hit_player_obj.sickTimer = 0
	hit_player_obj.sickAfterGrace = hit_player_obj.sickAfterGraceMax;
	markConsumed = true;
	
	hit_player_obj.should_make_shockwave = false;
	hit_player_obj.orig_knock = 5; //adjust this number
	hit_player_obj.hitstop_full = 60;
	hit_player_obj.hitstop = 60;
	hit_player_obj.hitpause = true;
	
	hit_player_obj.strongStunnedTimer = 20;
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

