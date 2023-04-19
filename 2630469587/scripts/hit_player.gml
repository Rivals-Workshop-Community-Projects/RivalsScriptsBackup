// Hit detection for uspecial throw
if (my_hitboxID.attack = AT_USPECIAL) {
	phantom.state = 8;
	phantom.state_timer = 0;
	phantom.following = hit_player_obj;
}

// Refresh dash on hit
//has_fly = true;

//grab stuff
if (my_hitboxID.attack == AT_DSPECIAL) {
	
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
		set_attack(AT_DSPECIAL_2);
		
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

if (my_hitboxID.attack == AT_DSPECIAL_AIR) {
	
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
		set_attack(AT_EXTRA_3);
		
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

if my_hitboxID.attack == AT_USPECIAL //and whatever other conditions you want
{
  var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-35,myonhit);
  hit_effect.depth = depth - 4;
}

if my_hitboxID.attack == AT_DSTRONG_2
{
  //var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-35,myonhit);
  //hit_effect.depth = depth - 4;
  	//phantom.state = 8;
	//phantom.state_timer = 0;
	//phantom.following = hit_player_obj;
}



if (my_hitboxID.attack == AT_FSPECIAL) {
    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
    set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 8);
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR) {
    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 11);
    if (fspec_djump = true && djumps > 0) {
    djumps = 0;
    fspec_djump = false;
    }
}

if (my_hitboxID.attack == AT_DATTACK) {
    set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 5);
}

if (my_hitboxID.attack == AT_FSTRONG) {
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 13);
}

if (voice_mode && (my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR)) {
	voice_rng = random_func(0, 4, true);
	if (voice_rng == 0)
		sound_play(sound_get("v_grab1"));
	else if (voice_rng = 1)
		sound_play(sound_get("v_grab2"));
	else if (voice_rng = 2)
		sound_play(sound_get("v_grab3"));
}

if (my_hitboxID.attack == AT_FTILT) {
    set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 || (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 1) || my_hitboxID.attack == AT_DATTACK || (my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4)) || (my_hitboxID.attack == AT_FSTRONG_2  && (my_hitboxID.hbox_num == 1)) || my_hitboxID.attack == AT_DAIR)
{
	spark_rng = random_func(0, 2, true);
		if (spark_rng == 0) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,slashspark);
			hit_effect.depth = depth - 0.5;
		}
		else if (spark_rng == 1) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,slashspark2);
			hit_effect.depth = depth - 0.5;
		}
}

if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_FSPECIAL_AIR && my_hitboxID.hbox_num == 2) || my_hitboxID.attack == AT_EXTRA_1)
{
	spark_rng = random_func(0, 2, true);
		if (spark_rng == 0) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,slashsparkslow);
			hit_effect.depth = depth - 0.5;
		}
		else if (spark_rng == 1) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,slashsparkslow2);
			hit_effect.depth = depth - 0.5;
		}
}


if ((my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3) || (my_hitboxID.attack == AT_FSTRONG_2 && (my_hitboxID.hbox_num == 2)) || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_FAIR /*|| my_hitboxID.attack == AT_NAIR*/ || (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1 && my_hitboxID.hbox_num == 2 && my_hitboxID.hbox_num == 4)) || my_hitboxID.attack == AT_EXTRA_2)
{
	spark_rng = random_func(0, 2, true);
		if (spark_rng == 0) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,nslashspark);
			hit_effect.depth = depth - 0.5;
		}
		else if (spark_rng == 1) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,nslashspark2);
			hit_effect.depth = depth - 0.5;
		}
}

if (my_hitboxID.attack == AT_USTRONG || (my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 2)) || my_hitboxID.attack == AT_DSTRONG)
{
	spark_rng = random_func(0, 2, true);
		if (spark_rng == 0) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,nslashsparkslow);
			hit_effect.depth = depth - 0.5;
		}
		else if (spark_rng == 1) {
			var hit_effect = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30,nslashsparkslow2);
			hit_effect.depth = depth - 0.5;
		}
}