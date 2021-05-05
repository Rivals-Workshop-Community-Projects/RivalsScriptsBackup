// update

if get_gameplay_time() == 2 {
	move_cooldown[AT_NSPECIAL] = 360;
}

if show_flashing_icon{
	if flash_time < max_flash_time{
		flash_time++;
		if flash_time % 8 == 0{
			col_flashing = c_dkgray;
		} else {
			col_flashing = c_white;
		}
	} else {
		flash_time = 0;
		show_flashing_icon = false;
	}
}

if playsound{
	switch(chargetier){
		case 1:
			sound_play(asset_get("mfx_timertick"));
			break;
		case 2:
			sound_play(asset_get("mfx_timertick2"));
			break;
	}
	playsound = false;
}

// Ho Ho Ho.
if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, fx_sprites[1]);
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
	wearing_hat = 1;
	}
}

//Gets the center of the current position "4 tiles away"
//FOUR_TILES_POS = (x + (227 * spr_dir));
TWO_TILES_POS = (x + (96 * spr_dir));

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)
  {
    switch (attack)
      {
      case AT_NSPECIAL:
      case AT_EXTRA_2: //Thunder.
        draw_reticle = true;
        break;
      default:
        draw_reticle = false;
        break;
      }
  }
else
  {
  char_height = 56;
  draw_reticle = false;
  uair_hitcheckvar = 0;
  can_zoom = false;
  }

// Preventing Spell Spam
if move_cooldown[AT_NSPECIAL] != 0{
	slotone_col = c_gray;
	slottwo_col = c_gray;
}
if move_cooldown[AT_NSPECIAL] == 0{
	// Check to see if you have mana for the spell
	if manabar >= spellcost[0] * 20{
		// Slot 1
		slotone_col = c_white;
	} else {
		// Slot 1 isn't castable
		slotone_col = c_gray;
	}

	if manabar >= spellcost[1] * 20{
		// Slot 2
		slottwo_col = c_white;
	} else {
		// Slot 2 isn't castable
		slottwo_col = c_gray;
	}
}
// Mana Charging
if ((manabar <= manabar_max) and get_gameplay_time() > 120){
	manacharge++;
	if manacharge == 35{
		manabar++;
		manacharge = 0;
	}
}

if manabar > manabar_max{
    manabar = manabar_max;
}

if manabar <= 0{
	manabar = 0;
}

if manabar >= 20 && manabar < 40{
    mana = 1;
}
if manabar >= 40 && manabar < 60{
    mana = 2;
}
if manabar >= 60 && manabar < 80{
    mana = 3;
}
if manabar >= 80 && manabar < manabar_max{
    mana = 4;
}
if manabar == manabar_max{
    mana = 5;
		if fullmana_flash < 255 and wait_timer_thing == -1{
			fullmana_flash += 5;
			outline_color = [0, 0, fullmana_flash];
		}

		if fullmana_flash == 255{
			wait_timer_thing++;
			if wait_timer_thing == 15{
				wait_timer_thing = -2;
			}
		}

		if fullmana_flash > 0 and wait_timer_thing == -2{
			fullmana_flash -= 5;
			outline_color = [0, 0, fullmana_flash];
		}
		if fullmana_flash == 0{
			wait_timer_thing++;
			if wait_timer_thing == 14{
				wait_timer_thing = -1;
			}
		}
		init_shader();
}
else
	{
	fullmana_flash = 0;   // literally don't even worry about this.
	wait_timer_thing = -1;
	outline_color = [0, 0, 0];
	init_shader();
	}

//funny orb
if get_player_color(player) == 13{
    orbvis = 1;
    time_y++;
    if (time_y < duration){
        orb_y = ease_sineInOut(start_y, dest_y, time_y, duration);
    } else {
        var tempStart_y = start_y;
        start_y = dest_y;
        dest_y = tempStart_y;
        time_y = 0;
    }
}

if (suspended_frames > 0)
	{
	if (shield_pressed or down_down or down_hard_pressed or jump_pressed or jump_down or attack == AT_USPECIAL)
		{
		suspended_frames = 0;
		}
	else
		{
		vsp = 0;
		suspended_frames -= 1;
		}
	}

// for debug sake and just so i am not dying.
for (var i = 0; i < (8); i++){
    switch spellslot[i]{
    	// Because honestly i don't care
		case 1:
			spellslot[i] = 31;
			break;
		case 2:
			spellslot[i] = 37;
			break;
		case 3:
			spellslot[i] = 38;
			break;
		case 4:
			spellslot[i] = 29;
			break;
		case 5:
			spellslot[i] = 26;
			break;
		case 6:
			spellslot[i] = 27;
			break;
		case 7:
			spellslot[i] = 33;
			break;
		case 8:
			spellslot[i] = 20;
			break;
		case 9:
			spellslot[i] = 28;
			break;
		case 10:
			spellslot[i] = 25;
			break;
		case 11:
			spellslot[i] = 30;
			break;
		case 12:
			spellslot[i] = 24;
			break;
		
		case 20:
			debugspell[i] = "Knock Down";
			spellcost[i] = spKnockdown;
			spellselect[i] = 11;
			break;
		case 24:
			debugspell[1] = "Wonder";
			spellcost[i] = spWonder;
			spellselect[i] = 13;
			break;
		case 25:
			debugspell[1] = "EXPLOSION!!";
			spellcost[i] = spExplosion;
			spellselect[i] = 12;
			break;
		case 26:
			debugspell[i] = "Ragnarok";
			spellcost[i] = spRagnarok;
			spellselect[i] = 7;
			break;
		case 27:
			debugspell[i] = "Guillotine";
			spellcost[i] = spGetNaeNaed;
			spellselect[i] = 10;
			break;
		case 28:
			debugspell[i] = "Crossfire";
			spellcost[i] = spCrossfire;
			spellselect[i] = 9;
			break;
		case 29:
			debugspell[i] = "Empower Ring";
			spellcost[i] = spEmpowerRing;
			spellselect[i] = 5;
			break;
		case 30:
			debugspell[i] = "Tri-Shot";
			spellcost[i] = spTrishot;
			spellselect[i] = 8;
			break;
		case 31:
			debugspell[i] = "Thunder";
			spellcost[i] = spThunder;
			spellselect[i] = 2;
			break;
		case 33:
			debugspell[1] = "Echo";
			spellcost[i] = spEcho;
			spellselect[i] = 6;
			break;
		case 37:
			debugspell[i] = "Pekay Fire";
			spellcost[i] = spPekayFire;
			spellselect[i] = 3;
			break;
		case 38:
			debugspell[i] = "Bomb Drop";
			spellcost[i] = spBomb;
			spellselect[i] = 4;
			break;
		case -4:
			debugspell[i] = "None";
			spellcost[i] = 0;
			spellselect[i] = 1;
			break;
		default:
			debugspell[i] = "???";
			spellcost[i] = 0;
			spellselect[i] = 0;
			break;
    }
}

switch(prev_spell_cast){
	case 20:	// Knockdown
		prev_spell_icon = 11;
		break;
	case 24:	// Wonder
		prev_spell_icon = 13;
		break;
	case 25:	// Explosion
		prev_spell_icon = 12;
		break;
	case 26:	// Ragnarok
		prev_spell_icon = 7;
		break;
	case 27:	// Guillotine
		prev_spell_icon = 10;
		break;
	case 28:	// Crossfire
		prev_spell_icon = 9;
		break;
	case 29:	// Empower Ring
		prev_spell_icon = 5;
		break;
	case 30:	// Tri-Shot
		prev_spell_icon = 8;
		break;
	case 31:	// Thunder
		prev_spell_icon = 2;
		break;
	case 33:	// Echo
		prev_spell_icon = 6;
		break;
	case 37:	// Pekay Fire
		prev_spell_icon = 3;
		break;
	case 38:	// Bomb Drop
		prev_spell_icon = 4;
		break;
}

// Runes
if has_rune("A"){
    set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
}

// Trummnel

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 18;
    trummelcodecsprite1 = sprite_get("saffrontrummel");
    trummelcodecsprite2 = sprite_get("hazeltrummel");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Wait, are my eyes";
    trummelcodecline[page,2] = "deceiving me?";
    trummelcodecline[page,3] = "How did Saffron";
    trummelcodecline[page,4] = "get here?!";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "from a portal";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;

	//Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "or the steam workshop";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;

	//Page 3
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "The steam - what now?";
	trummelcodecline[page,2] = " ";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 4
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;

	trummelcodecline[page,1] = "Look, we're getting";
	trummelcodecline[page,2] = "off topic.";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 5
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "That's Saffron.";
	trummelcodecline[page,2] = "She's from another";
	trummelcodecline[page,3] = "universe just like";
	trummelcodecline[page,4] = "Ori and Shovel Knight.";
	page++;

	//Page 6
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "Where she's from,";
	trummelcodecline[page,2] = "she's a military";
	trummelcodecline[page,3] = "researcher who";
	trummelcodecline[page,4] = "develops weapons.";
	page++;

	//Page 7
	trummelcodecspeaker[page] = 3;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "Some pretty kick-butt";
	trummelcodecline[page,2] = "weapons!";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = "If if say so myself.";
	page++;

	//Page 8
	trummelcodecspeaker[page] = 4;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "Your ego is showing, Saff.";
	trummelcodecline[page,2] = " ";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 8
	trummelcodecspeaker[page] = 3;
	trummelcodecexpression[page] = 1;

	trummelcodecline[page,1] = "Sorry,";
	trummelcodecline[page,2] = "I can't help being this";
	trummelcodecline[page,3] = "cool.";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 9
	trummelcodecspeaker[page] = 4;
	trummelcodecexpression[page] = 1;

	trummelcodecline[page,1] = "*sigh*";
	trummelcodecline[page,2] = " ";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 10
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "Saffron is well-versed";
	trummelcodecline[page,2] = "on the battlefield.";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 11
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "She's able to cast a";
	trummelcodecline[page,2] = "variety spells.";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 12
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 5;

	trummelcodecline[page,1] = "All of which";
	trummelcodecline[page,2] = "do something different";
	trummelcodecline[page,3] = "than the ones before!";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 13
	trummelcodecspeaker[page] = 2;
	trummelcodecexpression[page] = 0;

	trummelcodecline[page,1] = "does she have crits";
	trummelcodecline[page,2] = " ";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 14
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 1;

	trummelcodecline[page,1] = "No. Thankfully.";
	trummelcodecline[page,2] = "Luckily, her spells are";
	trummelcodecline[page,3] = "randomly ordered.";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 15
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 4;

	trummelcodecline[page,1] = "Meaning that she'll";
	trummelcodecline[page,2] = "have to spend time";
	trummelcodecline[page,3] = "and shuffle her cards.";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 16
	trummelcodecspeaker[page] = 1;
	trummelcodecexpression[page] = 1;

	trummelcodecline[page,1] = "That should give us";
	trummelcodecline[page,2] = "an opening!";
	trummelcodecline[page,3] = " ";
	trummelcodecline[page,4] = " ";
	page++;

	//Page 17
	trummelcodecspeaker[page] = 3;
	trummelcodecexpression[page] = 1;

	trummelcodecline[page,1] = "Are you guys done";
	trummelcodecline[page,2] = "chatting or am I";
	trummelcodecline[page,3] = "going to have to";
	trummelcodecline[page,4] = "start without you?";
	page++;
}

//Dracula support
dracula_portrait = sprite_get("dracula_portrait"); // Normal
dracula_portrait2 = sprite_get("dracula_portrait2"); // Angy
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "You should best be going. I don't take kindly to tresspassers.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "I'm just passing through.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Say, have you seen any calamity spells?";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "That's none of your business, mortal. Now, please, exit my-";
page++;

//Page 4
dracula_speaker[page] = 2;
dracula_text[page] = "Those were my spells! I'm going to need them back, please.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Were you raised in a barn?[shake] Your lack of manners shall be your undoing! Prepare to meet your maker![glass] Have at thee!";
page++;

// Mr Kirby Rodent Man
//Daroach support
daroach_portrait = sprite_get("dracula_portrait1");
daroach_portrait2 = sprite_get("dracula_portrait2");
daroach_portrait3 = asset_get("empty_sprite")
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Welcome, friend! I am Daroach, the captain of the treasure-hunting Squaks.";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "If you've been hunting treasure, did you happen to find any calamity spells?";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "Calamity Spells? Certainly sounds like something valuable...";
page++;

//Page 3
daroach_speaker[page] = 2;
daroach_text[page] = "It's a yes or no answer. I can search myself if I need to.";
page++;

//Page 4
daroach_speaker[page] = 0;
daroach_text[page] = "Sorry, lady, but I'm afraid I can't let you do that.";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "You might be a treasure-hunter yourself! [shake]";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = " I can't let you go any further. No sir! Now then, let us BATTLE! [laugh]";
page++;
