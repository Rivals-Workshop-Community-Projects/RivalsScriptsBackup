//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

prev_attack_used = attack;

if attack == AT_FSPECIAL_2 //Can't fastfall during Explosion
  {
  can_fast_fall = false;
  }

/*
if (attack == AT_TAUNT and window == 1 and window_timer == 1 and shield_down){
  debugmode = true;
}
*/

if (attack == AT_TAUNT){
	if window == 2 and taunt_down{
		window_timer--;
	}
	if window == 3{
		if taunt_pressed{
			attack_end();
			destroy_hitboxes();
			attack = AT_TAUNT;
		}
	}
}

if (attack == AT_TAUNT_2){
	if window == 6 and taunt_down{
		window_timer--;
	}
}

if (attack == AT_FAIR)
  {
  if (window == 3)
    {
    if (spr_dir = -1) // Facing Left
      {
      if (left_strong_pressed or left_strong_down)
        {
        window = 4;
        window_timer = 0;
        }
      }
    else
      {
      if (right_strong_pressed or right_strong_down)
        {
        window = 4;
        window_timer = 0;
        }
      }
    }
  }

// Shuffle
if (attack == AT_DSPECIAL)
  {
  	move_cooldown[AT_DSPECIAL] = 60;
  if (window == 2 and window_timer == 1)
    {
    shuffle_cards();
    }
  can_fast_fall = false;
  }

if (attack == AT_JAB){
    if (window != 8 and window != 9) and attack_down and !was_parried{
    	// Make it just ROLL.
    	if (((window == 2 or window == 4) and window_timer == 1) and attack_down and !was_parried){
    		window++;
    		window_timer = 0;
    	}
    	if window == 7 and window_timer == get_window_value(AT_JAB, 7, AG_WINDOW_LENGTH) and attack_down and !was_parried{
    		window = 1;
    		window_timer = 0;
    	}

    	// Because Rivals refuses to allow frame one hitboxes:
    	if (window == 1 and window_timer == 1){
    		create_hitbox(AT_JAB, 1, x + 18, y - 35);
    	}

    	// Projectile to save up space
    	if ((window == 3 or window == 6) and window_timer == 1){
    		create_hitbox(AT_JAB, 4, x + 32, y - 38);
    	}

    	// Movement
        if (left_pressed and !was_parried) {
        	sound_stop(sound_get("bracer_shot"));
        	destroy_hitboxes();
        	attack_end();
        	go_through = true;
        	if spr_dir == 1{
            	window = 9;
              create_hitbox(AT_JAB, 4, x + 32, y - 38);
        	} else {
        		window = 8;
        	}
            window_timer = 0;
            if (hitpause == true)
              {
              old_hsp -= jabdash;
              }
            else
              {
              hsp -= jabdash;
              }
        }
        else if (right_pressed and !was_parried){
        	destroy_hitboxes();
        	attack_end();
        	go_through = true;
        	if spr_dir == 1{
            	window = 8;
        	} else {
        		window = 9;
            create_hitbox(AT_JAB, 4, x + 32, y - 38);
        	}
            window_timer = 0;
            if (hitpause == true)
              {
              old_hsp += jabdash;
              }
            else
              {
              hsp += jabdash;
              }
        }
    }
    if ((window == 8 or window == 9) and !was_parried){
    	go_through = true;
    	can_jump = true;
    	// Check to see if you're at the end of the window
	    if (window_timer == get_window_value(AT_JAB, 8, AG_WINDOW_LENGTH) or window_timer == get_window_value(AT_JAB, 9, AG_WINDOW_LENGTH)){
	    	attack_end();
	    	if attack_down{
		        window = 1;
		        window_timer = 0;
	    	}
	    }
    }
}

if attack == AT_UTILT{
  if window != 3{
    char_height = 86;
  } else {
    char_height = 56;
  }
}

if (attack == AT_DTILT and window == 3 and has_hit){
  if window_timer >= 7{
    iasa_script();
  }
}

if (attack == AT_BAIR){
	if (window == 1 and window_timer == 10){
		if spr_dir == 1{
			spawn_hit_fx(x - 30, y - 38, 141);
		} else {
			spawn_hit_fx(x + 32, y - 36, 141);
		}
	}
}

if (attack == AT_USTRONG){
	if window == 7{
		if window_timer == 10{
			hsp -= .1 * spr_dir;
		}
	}
}

if (attack == AT_FSPECIAL)
  {
  move_cooldown[AT_FSPECIAL] = 30;
  if (has_hit and !was_parried and window == 4)
    {
    	can_jump = true;
    }
  if (!has_hit or was_parried){
  	if window == 4 and window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH){
  		set_state(PS_PRATFALL);
  	}
  }
  }

if (attack == AT_FSTRONG){
	if window == 1{
		if (strong_charge >= 0 and strong_charge < 30){
      chargetier = 1;
      if (strong_charge == 14){
        playsound = true;
      }
			outline_color = [ 0, 0, 0 ];
			init_shader();
			print_debug("BANG");
		}
		// Decent Sized Projectile
		if (strong_charge >= 30 and strong_charge < 45){
      chargetier = 2;
      if (strong_charge == 43){
        playsound = true;
      }
			outline_color = [ 0, 0, 255 ];
			init_shader();
			print_debug("BAM");
		}
		// BFG (Fully Charged)
		if (strong_charge >= 45){
			outline_color = [ 255, 255, 255 ];
			init_shader();
			print_debug("BIGGER BAM");
		}
	}
	if (window == 2 and window_timer == 1){
		// Reset Player Outline
		outline_color = [ 0, 0, 0 ];
		init_shader();

		// No Charge
		if (strong_charge >= 0 and strong_charge < 15){
			print_debug("BANG");
		}
		// Decent Sized Projectile
		if ((strong_charge >= 15 and strong_charge < 45) or (strong_charge >= 15 and mana == 0)){
			if spr_dir == 1{
				create_hitbox( AT_FSTRONG, 2, x + 75, y - 30 );
			} else {
				create_hitbox( AT_FSTRONG, 2, x - 75, y - 30 );
			}
			// spawn the thing
			print_debug("BAM");
		}
		// BFG (Fully Charged)
		if (strong_charge >= 45 and mana >= 1){
			can_zoom = true;
			mana -= 1;
			manabar -= 20;
			if spr_dir == 1{
				create_hitbox( AT_FSTRONG, 3, x + 75, y - 30 );
			} else {
				create_hitbox( AT_FSTRONG, 3, x - 75, y - 30 );
			}
			// spawn the thing
			print_debug("BIGGER BAM");
		}
	}
	if window == 3 and window_timer >= 10{
		if can_zoom{
			iasa_script();
		}
	}
}

if ((attack == AT_NSPECIAL)and window == 1 and window_timer == 1)
  {
  clear_button_buffer(PC_SPECIAL_PRESSED);
  clear_button_buffer(PC_ATTACK_PRESSED);
  }

if (attack == AT_NSPECIAL and ((window == 1 and window_timer == 1) or window == 2))
  {
  char_height = 100;
  can_shield = true;
  can_jump = true;

  //Letting you roll cancel just by pressing a directional button.
  if (left_pressed == true and !free)
    {
    if (spr_dir == -1)
      {
      set_state(PS_ROLL_FORWARD);
      }
    else
      {
      set_state(PS_ROLL_BACKWARD);
      }
    }
  if (right_pressed == true and !free)
    {
    if (spr_dir == -1)
      {
      set_state(PS_ROLL_BACKWARD);
      }
    else
      {
      set_state(PS_ROLL_FORWARD);
      }
    }

  // Taunt cancel if you feel like it
  if (taunt_pressed and !free){
    set_state(PS_IDLE);
    attack = AT_TAUNT;
  }

  //Now we get to the fun shit - casting the spells in your slots.
  if (attack_pressed) //cast the spell in slot 1.
    {
    if (spellslot[0] != -4 and (manabar < spellcost[0] * 20)){
    	// if you can't cast it, play noise
    	sound_play(asset_get("mfx_tut_fail"));
    	clear_button_buffer(PC_ATTACK_PRESSED);
    }
    else if (spellslot[0] == -4 and spellslot[1] != -4 and (manabar >= spellcost[1] * 20))
      {
      manabar -= (spellcost[1] * 20);
      mana -= spellcost[1];
      //If the slot you pressed is empty, cast the spell in the other slot.
      set_attack(spellslot[1]);
      flash_time = 0;
      show_flashing_icon = true;
      move_cooldown[AT_NSPECIAL] = 60;
      //Checks if the spell you just cast was Echo, and if it's not, it saves
      //it as the previously cast spell.
      if (spellslot[1] != 33)
        {
        prev_spell_cast = spellslot[1];
        }

      //Consume spell 2, move all the other spells up.
      spellslot[1] = spellslot[2];
      spellslot[2] = spellslot[3];
      spellslot[3] = spellslot[4];
      spellslot[4] = spellslot[5];
      spellslot[5] = spellslot[6];
      spellslot[6] = spellslot[7];

      spellcost[1] = spellcost[2];
      spellcost[2] = spellcost[3];
      spellcost[3] = spellcost[4];
      spellcost[4] = spellcost[5];
      spellcost[5] = spellcost[6];
      spellcost[6] = spellcost[7];
      }
    else if (spellslot[0] != -4 and (manabar >= spellcost[0] * 20))
      {
      manabar -= (spellcost[0] * 20);
      mana -= spellcost[0];

      set_attack(spellslot[0]);
      flash_time = 0;
      show_flashing_icon = true;
      move_cooldown[AT_NSPECIAL] = 60;

      if (spellslot[0] != 33)
        {
        prev_spell_cast = spellslot[0];
        }

      //Consume spell 1, move all the other spells up.
      spellslot[0] = spellslot[2];
      spellslot[2] = spellslot[3];
      spellslot[3] = spellslot[4];
      spellslot[4] = spellslot[5];
      spellslot[5] = spellslot[6];
      spellslot[6] = spellslot[7];

      spellcost[0] = spellcost[2];
      spellcost[2] = spellcost[3];
      spellcost[3] = spellcost[4];
      spellcost[4] = spellcost[5];
      spellcost[5] = spellcost[6];
      spellcost[6] = spellcost[7];
      }

      spellslot[7] = -4;    // Empty Spell

    }
  if (special_pressed) //cast the spell in slot 2.
    {
    if (spellslot[1] != -4 and (manabar < spellcost[1] * 20)){
    	// if you can't cast it, play noise
    	sound_play(asset_get("mfx_tut_fail"));
    	clear_button_buffer(PC_SPECIAL_PRESSED);
    }
    if (spellslot[1] == -4 and spellslot[0] != -4 and (manabar >= spellcost[0] * 20))
      {
      manabar -= (spellcost[0] * 20);
      mana -= spellcost[0];
      //If the slot you pressed is empty, cast the spell in the other slot.
      set_attack(spellslot[0]);
      flash_time = 0;
      show_flashing_icon = true;
      move_cooldown[AT_NSPECIAL] = 60;

      if (spellslot[0] != 33)
        {
        prev_spell_cast = spellslot[0];
        }

      //Consume spell 1, move all other spells up.
      spellslot[0] = spellslot[2];
      spellslot[2] = spellslot[3];
      spellslot[3] = spellslot[4];
      spellslot[4] = spellslot[5];
      spellslot[5] = spellslot[6];
      spellslot[6] = spellslot[7];

      spellcost[0] = spellcost[2];
      spellcost[2] = spellcost[3];
      spellcost[3] = spellcost[4];
      spellcost[4] = spellcost[5];
      spellcost[5] = spellcost[6];
      spellcost[6] = spellcost[7];
      }
    else if (spellslot[1] != -4 and (manabar >= spellcost[1] * 20))
      {
      manabar -= (spellcost[1] * 20);
      mana -= spellcost[1];

      set_attack(spellslot[1]);
      flash_time = 0;
      show_flashing_icon = true;
      move_cooldown[AT_NSPECIAL] = 80;

      if (spellslot[1] != 33)
        {
        prev_spell_cast = spellslot[1];
        }

      //Consume spell 2, move all other spells up.
      spellslot[1] = spellslot[2];
      spellslot[2] = spellslot[3];
      spellslot[3] = spellslot[4];
      spellslot[4] = spellslot[5];
      spellslot[5] = spellslot[6];
      spellslot[6] = spellslot[7];

      spellcost[1] = spellcost[2];
      spellcost[2] = spellcost[3];
      spellcost[3] = spellcost[4];
      spellcost[4] = spellcost[5];
      spellcost[5] = spellcost[6];
      spellcost[6] = spellcost[7];
      }

      spellslot[7] = -4;    // Empty Spell
    }
  }

if (attack == AT_FSPECIAL)
  {
  can_fast_fall = false;
}

if (attack == AT_BAIR){
  if window == 2 and !has_hit{
    set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);
    set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 2);
    set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
    set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, 1);
  }
  if window == 3 and has_hit and !was_parried{
  	can_jump = true;
  }
  else if window == 3 and !has_hit and window_timer >= 10{
  	can_jump = true;
  }
}

if (attack == AT_UAIR){
	if window == 2{
		char_height = 96;
	} else {
		char_height = 56;
	}
}

if (attack == AT_NAIR or attack == AT_FAIR or attack == AT_DAIR or attack == AT_UAIR or attack == AT_BAIR or attack == AT_FSPECIAL or attack == AT_USPECIAL or attack == AT_NSPECIAL){
  can_wall_jump = true;
}

if (attack == AT_USPECIAL){
	if window == 1 and window_timer == 11{
		vsp = -8;
	}
	if window == 2 and window_timer == 14{
		vsp = -4;
	}
	if window == 3 and window_timer == 1{
		vsp += 1;
	}
	if window == 3 and window_timer == 10{
		vsp += 1;
	}
}

//If the spell is Echo, cast the previously cast spell.
if (attack == AT_ECHO and window == 1 and window_timer == 1)
	{
	if (prev_spell_cast != 33)
		{
		set_attack(prev_spell_cast);
    prev_spell_cast = 33;
		}
	}

//If the spell is Echo, cast the previously cast spell.
if (attack == AT_WONDER and window == 1 and window_timer == 1){
	var spell = random_func(0, 12, true);
	print_debug(string(spell));
	switch(spell){
		case 0:
			set_attack(31);
			break;
		case 1:
			set_attack(37);
			break;
		case 2:
			set_attack(38);
			break;
		case 3:
			set_attack(29);
			break;
		case 4:
			set_attack(26);
			break;
		case 5:
			set_attack(27);
			break;
		case 6:
			sound_play(asset_get("sfx_may_wrap1"));
			state = PS_WRAPPED;
			wrap_time = 180;
			break;
		case 7:
			set_attack(20);
			break;
		case 8:
			set_attack(28);
			break;
		case 9:
			set_attack(25);
			break;
		case 10:
			set_attack(30);
			break;
		case 11:
			set_attack(35);
			sound_play(asset_get("mfx_tut_fail"));
			manabar = 0;
			mana = 0;
			break;
		case 12:
			spellslot[0] = -4;  // 1
			spellslot[1] = -4;
			spellslot[2] = -4;
			spellslot[3] = -4;
			spellslot[4] = -4;
			spellslot[5] = -4;
			spellslot[6] = -4;
			spellslot[7] = -4;
			break;
	}
}

if (attack == AT_BOMB){
	if has_hit{
    	create_hitbox(AT_BOMB, 2, has_hit_id.x, has_hit_id.y);
	}
}

// steve jobs died
if attack == AT_GUILLOTINE{
  if (window == 2 && window_timer == 1 && has_hit_player) {
    // who's steve jobs
    if get_player_damage(has_hit_id.player) >= 100{
      //ligma balls
      create_deathbox(
        has_hit_id.x, // x
        has_hit_id.y, // y
        100, // w
        100, // h
        has_hit_id.player, // player
        true, // free
        1, // shape
        3, // lifespan
        2 // bg_type
      );
    }
  }
}

// Spells and their effects (Mostly big babies)
//Thunder
if attack == AT_THUNDER{
	if window == 1 and window_timer == 1{
		var newfx = spawn_hit_fx(x, y, fx_sprites[2]);
		newfx.depth = depth+1;
	}
}
// Ragnarok
if attack == AT_RAGNAROK{
	if window == 1 and window_timer == 1{
		var newfx = spawn_hit_fx(x, y, fx_sprites[3]);
		newfx.depth = depth+1;
	}
}
// explosion
if attack == AT_EXPLOSION{
	if window == 2 and window_timer == 1{
		var newfx = spawn_hit_fx(x, y, fx_sprites[4]);
		newfx.depth = depth+1;

		// Put Mana Recharge on Cooldown
		manacharge = -240;
	}
}
// thwack?
if attack == AT_GUILLOTINE{
	if window == 1 and window_timer == 1{
		var newfx = spawn_hit_fx(x, y, fx_sprites[5]);
		newfx.depth = depth+1;
	}
}
// crossfire
if attack == AT_CROSSFIRE{
	if window == 1 and window_timer == 5{
		var p;
		for(p = 1; p < 17; p++){
			var newfx = spawn_hit_fx(x + get_hitbox_value(AT_CROSSFIRE, p, HG_HITBOX_X), y + get_hitbox_value(AT_CROSSFIRE, p, HG_HITBOX_Y), fx_sprites[6]);
			newfx.depth = depth+1;
		}
	}
}

#define shuffle_cards
/// shuffle_cards will shuffle cards when called, obviously
	var i, j, k;
	for (i = 0; i < amountofspells - 1; i += 1){
	    j = i+random_func_2(i, amountofspells - i, true);
	    if (i != j)
	    {
	        k = spell_list[i];
	        spell_list[i] = spell_list[j];
	        spell_list[j] = k;
	    }
	}

    for (m = 0; m < amountofspells; m++){
    	spellslot[m] = spell_list[m] + 1;
    }

#define spellroll
/// spellroll(spellslot)
/// Rerolls
selectspell = random_func(1, amountofspells, true)

switch selectspell
{
  case 0:
      spellslot[argument[0]] = AT_EXTRA_1; //Thunder
      break;
  case 1:
      spellslot[argument[0]] = AT_EXTRA_2; //Pekay Fire
      break;
  case 2:
      spellslot[argument[0]] = AT_EXTRA_3; // Uppies
      break;
}
