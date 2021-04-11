var temp_color = c_white;
if ("practiceinit" in self
	&& "stupidbossbool" in self
	&& "tutalpha" in self
	&& "tutstate" in self
	&& practiceinit
	&& !stupidbossbool
	&& tutalpha != 0) // Tutorial
{
	draw_set_alpha(tutalpha);
	switch (tutstate)
	{
	case 0:
		draw_debug_text(temp_x,temp_y - 8 + floor(tutalpha*4)*2-8, "Taunt");
		break;
	case 1:
		tech[0] = "Clone Walk";
		tech[1] = "Reverse Blink";
		tech[2] = "Double Blink";
		tech[3] = "Void Jump Cancel";
		tech[4] = "Void B Reverse";
		tech[5] = "Fakieless Void";
		tech[6] = "Void Drop";
		tech[7] = "Flash Angling";
		tech[8] = "Fakie Recovery Wall Cancel";
		tech[9] = "USPEC Platforms";
		tech[10] = "Hyperjump";
		tech[11] = "USPEC cancelled Hyperjump";
		tech[12] = "JAB 3 Time Break";
		tech[13] = "JAB 3 cancelled DSPEC";
		tech[14] = "DATTACK cancelled DSPEC";
		tech[15] = "FTILT cancelled DSPEC";
		tech[16] = "Raindrop";
		tech[17] = "Booplexing";
		tech[18] = "Instadrop";
		DrawTutBlock(nooftechs);
		DrawTutText(nooftechs, tech);
		break;
	case 2:
		draw_debug_text(16,temp_y - 48 + floor(tutalpha*4)*2-8, tutstring);
		draw_debug_text(16,temp_y - 32 + floor(tutalpha*4)*2-8, tutstring2);
		break;
	case 3:
		menu[0] = "Practice Menu";
		menu[1] = "Tutorials";
		menu[2] = "Change Notes";
		menu[3] = "Shrine of Light Discord";
		DrawTutBlock(noofmainmenu);
		DrawTutText(noofmainmenu, menu);
		break;
	case 4:
		items[0] = "Fakie: " + YesNo(aura);
		items[1] = "Permanent Fakie: " + YesNo(aurainf);
		items[2] = "100% Accurate: " + YesNo(runeN);
		items[3] = "Old DSPEC: " + YesNo(old_dspec);
		items[4] = "Zoroark Mode (Beta)";
		items[5] = "Instantly win";
		items[6] = "Control everyone (Beta)";
		items[7] = "Get Fakie when Parry: " + YesNo(parryaura);
		items[8] = "Show F/USpec timer: " + YesNo(fspeccoolhud);
		items[9] = "FSpec cooldown: " + string(fspeccool);
		items[10] = "Clone lifetime: " + string(clone_lifetime);
		items[11] = "Fakie return time: " + string(aurapt[6]);
		items[12] = "Spawn Fakie orb";
		items[13] = "Dance Party";
		items[14] = "Ascend";
		items[15] = "alts" in self ? "Colour selector: " + string(altnum) : "Colour selector unavailable";
		items[16] = "Mute BG: " + YesNo(mutebg);
		items[17] = "Delete taunt menu";
		items[18] = "Get stickbugged lol";
		items[19] = "Folet";
		items[20] = "Final Smash";
		DrawTutBlock(noofitems);
		DrawTutText(noofitems, items);
		if (tutmenu == 15 && "alts" in self)
		{
			shader_start();
			draw_sprite_ext(sprite_get("idle"),0,temp_x+220,temp_y-54,1,1,0,temp_color,1);
			shader_end();
			draw_debug_text(temp_x+190, temp_y-54, string(alts[altnum].name));
		}
		break;
	case 5:
		DrawTutBlock(3);
		draw_set_alpha(tutalpha*0.4);
		if (tutmenu > 0)
			draw_debug_text(temp_x, temp_y - 20 - (2)*16 + floor(tutalpha*4)*2-8, "  "+"v"+string(tutmenu));
		draw_set_alpha(tutalpha);
		draw_debug_text(temp_x, temp_y - 20 - (1)*16 + floor(tutalpha*4)*2-8, "> "+"v"+string(tutmenu+1));
		draw_set_alpha(tutalpha*0.4);
		if (tutmenu < noofV-1)
			draw_debug_text(temp_x, temp_y - 20 - (0)*16 + floor(tutalpha*4)*2-8, "  "+"v"+string(tutmenu+2));
		draw_set_alpha(tutalpha*0.4);
		draw_debug_text(temp_x + 32, temp_y - 20 - (1)*16 + floor(tutalpha*4)*2-8, " . "+"0");
		if (1 < noofsubV-1)
			draw_debug_text(temp_x + 32, temp_y - 20 - (0)*16 + floor(tutalpha*4)*2-8, " . "+"1");
		break;
	case 6:
		DrawTutBlock(3);
		DrawChangelog();
		draw_set_alpha(tutalpha*0.4);
		if (tutpart > 0)
			draw_debug_text(temp_x, temp_y - 20 - (2)*16 + floor(tutalpha*4)*2-8, "  "+"v"+string(tutpart));
		draw_set_alpha(tutalpha);
		draw_debug_text(temp_x, temp_y - 20 - (1)*16 + floor(tutalpha*4)*2-8, "> "+"v"+string(tutpart+1));
		draw_set_alpha(tutalpha*0.4);
		if (tutpart < noofV-1)
			draw_debug_text(temp_x, temp_y - 20 - (0)*16 + floor(tutalpha*4)*2-8, "  "+"v"+string(tutpart+2));
		draw_set_alpha(tutalpha*0.4);
		if (tutmenu > 0)
			draw_debug_text(temp_x + 32, temp_y - 20 - (2)*16 + floor(tutalpha*4)*2-8, " . "+string(tutmenu-1));
		draw_set_alpha(tutalpha);
		draw_debug_text(temp_x + 32, temp_y - 20 - (1)*16 + floor(tutalpha*4)*2-8, " . "+string(tutmenu));
		draw_set_alpha(tutalpha*0.4);
		if (tutmenu < noofsubV-1)
			draw_debug_text(temp_x + 32, temp_y - 20 - (0)*16 + floor(tutalpha*4)*2-8, " . "+string(tutmenu+1));
		break;
	case 7:
		h[0] = "Join the Shrine of Light Discord!";
		h[1] = "";
		h[2] = "Chat with the developer of Hikaru and Lonin!";
		h[3] = "discord.gg/Kn5ttGx";
		h[4] = "";
		h[5] = "";
		h[6] = "";
		h[7] = "";
		DrawTutBlockExt(8, 20, -4, 500);
		DrawTutTextExt(8, h, 20, -4);
		draw_sprite_ext(sprite_get("discord"), 0, 20, temp_y-64+floor(tutalpha*4)*2-8, 2, 2, 0, c_white, tutalpha);
		draw_sprite_ext(sprite_get("meme"), get_gameplay_time()/(43/16), 110, temp_y-12+floor(tutalpha*4)*2-8, 1, 1, 0, c_white, tutalpha);
		break;
	default:
		break;
	}
	draw_set_alpha(1);
}
else if ("beast_deity" in self && beast_deity) // Bossfight
{
	// Healthbar
	shader_start();
	draw_sprite_part(sprite_get("Healthbar2"),0,0,0,(870*hp/max_hp),12,hp_x,hp_y);
	draw_sprite_part(sprite_get("Healthbar2"),0,0,0,(870*hp/max_hp),12,hp_x,hp_y+2);
	draw_sprite_part(sprite_get("Healthbar2"),0,0,0,(870*hp/max_hp),12,hp_x-2,hp_y+4);
	draw_sprite_part(sprite_get("Healthbar3"),0,0,0,(870*hp/max_hp),12,hp_x-2,hp_y+6);
	draw_sprite_part(sprite_get("Healthbar2"),0,0,0,(870*hp/max_hp),12,hp_x-4,hp_y+8);
	draw_sprite_part(sprite_get("Healthbar3"),0,0,0,(870*hp/max_hp),12,hp_x-4,hp_y+10);
	draw_sprite_part(sprite_get("Healthbar3"),0,0,0,(870*hp/max_hp),12,hp_x-6,hp_y+12);
	draw_sprite_part(sprite_get("Healthbar3"),0,0,0,(870*hp/max_hp),12,hp_x-6,hp_y+14);
	draw_sprite_ext(sprite_get("Healthbar"),0,hp_x - 48,hp_y - 10,1,1,0,temp_color,1);
	shader_end();

	draw_sprite_ext(sprite_get("Name"),0,0,-6,1,1,0,temp_color,1);

	draw_sprite(sprite_get("speech"),0,temp_x - 16,temp_y - 80 + textbox_y);

	if (((!talk && beast_state) || isasking) && "ai_target" in self && instance_exists(ai_target) && ai_target)
	{
		var lmaocolour = c_white;
		if (talktime < 100)
			lmaocolour = c_gray;
		with (ai_target)
		{
			var reverse = 0;
			var xoffsett = sprite_xoffset;
			if (spr_dir == -1)
			{
				xoffsett = -sprite_xoffset;
				reverse = 232;
			}
			shader_start();
			draw_sprite_part_ext(sprite_index,image_index, xoffsett - 116, sprite_yoffset - 96, 232, 120, other.temp_x + reverse - 12, other.temp_y + other.textbox_y - 76, spr_dir, 1, lmaocolour, 1);
			shader_end();
		}
	}

	if (isasking || talk || !run_timer)
	{
		draw_debug_text(temp_x-2,temp_y-68 + textbox_y,cout[0]);
		draw_debug_text(temp_x-2,temp_y-50 + textbox_y,cout[1]);
		draw_debug_text(temp_x-2,temp_y-32 + textbox_y,cout[2]);
		draw_debug_text(temp_x-2,temp_y-14 + textbox_y,cout[3]);
		draw_debug_text(temp_x-2,temp_y+04 + textbox_y,cout[4]);
	}
	else
		draw_debug_text(temp_x-2,temp_y-68 + textbox_y,"Targeting:");

	if (!run_timer && speedrun_timer && beast_state == 8)
	{
		var messagee = "Beaten in:"
		if (practice)
			messagee = "Practice time:"
		draw_debug_text(temp_x + 32,temp_y + 28,messagee);
	}
	if (run_timer || speedrun_timer)
	{
		draw_debug_text(temp_x + 122, temp_y + 28, string_format(floor(speedrun_timer/3600), 4, 0));
		draw_debug_text(temp_x + 156, temp_y + 28, ": " + string_format(floor(speedrun_timer/60%60), 2, 0) + " : " + string_format(floor(speedrun_timer/6*10%100), 2, 0));
	}
}
else if ("as_charge" in self)
{
	var temp_anim = get_gameplay_time()*.2;
	shader_start();
	switch (as_charge)
	{
	case 0:
		if (as_frame)
			draw_sprite_ext(sprite_get("nspecial_proj"),temp_anim,temp_x+188,temp_y - 16,1,1,0,temp_color,1);
	    break;
	case 1:
	    draw_sprite_ext(sprite_get("nspecial_proj2"),temp_anim,temp_x+188,temp_y - 16,1,1,0,temp_color,1);
	    break;
	case 2:
	    draw_sprite_ext(sprite_get("nspecial_proj3"),temp_anim,temp_x+188,temp_y - 16,1,1,0,temp_color,1);
	    break;
	default:
	    break;
	}
	shader_end();
}

var stringg = "";
if ("beast_deity" in self && !beast_deity)
{
	if (godmode)
		stringg = "Final Deity, Hikaru";
	else if (o_copyplayer && o_copyplayer != noone)
	{
		stringg = "Zoroark mode";
	}
	else if ("auraalpha" in self && auraalpha != 0 && counterid)
	{
		var dontadd = false;
		if (ishomestage)
		{
			stringg = "Team SoL";
		}
		else if (counterid.select == clamp(counterid.select, 2, 15)) // base cast
		{
			switch (counterid.select)
			{
			case 2:
				stringg = "Scarlet Flame";
				break;
			case 3:
				stringg = "Scalding Paws";
				break;
			case 4:
				stringg = "Raging Tempest";
				break;
			case 5:
				stringg = "Seismic Pressure";
				break;
			case 6:
				stringg = "Deception Inferno";
				break;
			case 7:
				stringg = "Forest Fire";
				break;
			case 8:
				stringg = "Circuit Breaker";
				break;
			case 9:
				stringg = "Absolute Zero";
				break;
			case 10:
				stringg = "Will o' the Wisp";
				break;
			case 11:
				stringg = "Toxic Downpour";
				break;
			case 12:
				stringg = "Plasma Claws";
				break;
			case 13:
				stringg = "Deforestation Menace";
				break;
			case 14:
				stringg = "Annihilator of Mechs";
				break;
			case 15:
				stringg = "Rust Bucket Rattler";
				break;
			default:
				stringg = "Null Maiden";
				break;
			}
		}
		else if (counterid.url == "1928599994")
			stringg = "True Deity Inari";
		else if (counterid.url == "1865940669")
			stringg = "Sandbert Clone";
		else if (counterid.url == "1866016173")
			stringg = "Panda Bamboozler";
		else if (counterid.url == url)
		{
			stringg = "@hikaru_the_kitsune";
			dontadd = true;
		}
		else if (Hikaru_Title2 == "")
		{
			stringg = (get_player_color( player )==12?"@ssb_sino":"The Kitsune of Light");
			dontadd = true;
		}
		else
			stringg = Hikaru_Title2;
		if (!dontadd)
			stringg += ", Hikaru";
	}
}

if ("auraalpha" in self && auraalpha != 0 && (!practiceinit ^^ stupidbossbool))
{
	draw_set_alpha(auraalpha);
	draw_debug_text(temp_x,temp_y - 8 + floor(auraalpha*4)*2-8, stringg);
	draw_set_alpha(1);
}
else if ("o_copyplayer" in self && o_copyplayer && o_copyplayer != noone)
{
	draw_debug_text(temp_x,temp_y - 8, stringg);
}

if ("workprev" in self && workprev && get_gameplay_time() < 120)
{
	draw_debug_text(temp_x,temp_y - 40,"Workshop_Previous detected");
	draw_debug_text(temp_x,temp_y - 24,"[!] Errors may occur [!]");
}
else if ("muted" in self && "muteaplha" in self && "stupidbossbool" in self && !stupidbossbool && muteaplha != 0)
{
	var muteaplhaclamp = clamp(muteaplha,0,1);
	draw_set_alpha(muteaplhaclamp);
	if (muted)
		draw_debug_text(temp_x,temp_y - 8 + floor(muteaplhaclamp*4)*2-8,"Taunt to unmute");
	else
		draw_debug_text(temp_x,temp_y - 8 + floor(muteaplhaclamp*4)*2-8,"Unmuted!");
	draw_set_alpha(1);
}

if ("yes" in self && yes)
{
	//draw_sprite_ext(sprite_get("rowonald"), 0, 0, 0, 2, 2, 0, c_white, 1);
	var giveronaldhisgun = false;
	var timesgun = 1;
	while (yes)
	{
		sound_play(sound_get( "deathsong" ));
		var answer = string_lower(get_string( string(timesgun) + ". " + "621 / 9", "" ));
		if (answer == "nice")
		{
			yes = false;
			giveronaldhisgun = true;
		}
		else if (timesgun < 30) // just spam 30 times
		{
			++timesgun;
		}
		else
		{
			yes = false;
		}
	}
	if (giveronaldhisgun)
	{
		with (oPlayer)
		{
			if ("afakening" in self)
				afakening = true;
		}
	}
}

// debug
//var stage_x = get_stage_data( SD_X_POS );
//var stage_y = get_stage_data( SD_Y_POS );
//draw_debug_text(temp_x,temp_y - 70, string(move_cooldown[AT_FSPECIAL]));
//draw_debug_text(temp_x+48,temp_y - 70, string(ai_recovering));

#define YesNo(bool)
{
	return (bool?"Yes":"No");
}

#define DrawTutBlock(noofthings)
{
	draw_set_alpha(tutalpha*0.4);
	draw_rectangle_color(temp_x - 8,temp_y - 12 - 16*noofthings + floor(tutalpha*4)*2-8,temp_x + 215,temp_y + floor(tutalpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(temp_x - 6,temp_y - 10 - 16*noofthings + floor(tutalpha*4)*2-8,temp_x + 213,temp_y-2 + floor(tutalpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(tutalpha);
}

#define DrawTutBlockExt(noofthings, xpos, ypos, width)
{
	draw_set_alpha(tutalpha*0.4);
	draw_rectangle_color(-8 + xpos,temp_y - 12 + ypos - 16*noofthings + floor(tutalpha*4)*2-8,-8 + xpos + width,temp_y + ypos + floor(tutalpha*4)*2-8,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(-6 + xpos,temp_y - 10 + ypos - 16*noofthings + floor(tutalpha*4)*2-8,-10 + xpos + width,temp_y-2 + ypos + floor(tutalpha*4)*2-8,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(tutalpha);
}

#define DrawTutText(noofthings, list)
{
	for (var i = 0; i < noofthings; ++i)
	{
		draw_debug_text((tutmenu==i?round(sin(get_gameplay_time()/8))*2+2:0) + temp_x,temp_y - 20 - (noofthings-i-1)*16 + floor(tutalpha*4)*2-8, (tutmenu==i?"> ":"  ")+list[i]);
	}
}

#define DrawTutTextExt(noofthings, list, xpos, ypos)
{
	for (var i = 0; i < noofthings; ++i)
	{
		draw_debug_text(xpos, temp_y - 20 - (noofthings-i-1)*16 + floor(tutalpha*4)*2-8 + ypos, list[i]);
	}
}

#define DrawChangelog()
{
	var xpos = 20;
	var ypos = -64;
	var nooflines = 1;
	var textwidth = 1;
	switch (tutpart)
	{
		case 0:
			switch (tutmenu)
			{
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
					text[0] = "[Blank]";
					textwidth = 70;
					break;
				case 8:
					text[0] = "Counter";
					textwidth = 70;
					break;
				case 9:
					text[0] = "Final (beta)";
					textwidth = 100;
					break;
				case 10:
					text[0] = "Kirby Copy update";
					textwidth = 140;
					break;
				case 11:
					text[0] = "Changed outline colour to full black";
					textwidth = 280;
					break;
				case 12:
					text[0] = "AI";
					textwidth = 30;
					break;
				case 13:
					text[0] = "Reduced fall speed";
					text[1] = "";
					text[2] = "FSpecial has additional hitboxes before the sweetspot";
					text[3] = "";
					text[4] = "FSpecial now has 3 height options: High, Mid, Low";
					text[5] = "Tilt joystick up or down during FSpecial before hit";
					text[6] = "";
					text[7] = "Advanced AI for FSpecial";
					text[8] = "";
					text[9] = "Cleaned up some micro code for AI so there's slightly less lag";
					nooflines = 10;
					textwidth = 480;
					break;
				case 14:
					text[0] = "Added compatibility with TCO and Trummel";
					text[1] = "";
					text[2] = "Reduced running speed";
					text[3] = "Reduced FStrong hitbox range";
					text[4] = "Counter damage and knockback now scales with damage taken from hit";
					text[5] = "Changed Dash Attack completely";
					text[6] = "Readjusted hit effects to line up with contact points";
					text[7] = "Advanced AI for FSpecial";
					text[8] = "1st hit of BAir has more hitstun";
					text[9] = "";
					text[10] = "Taunt sfx plays when match starts";
					nooflines = 11;
					textwidth = 530;
					break;
				case 15:
					text[0] = "Reduced FStrong hitbox range";
					text[1] = "New hitbox for Counter: hitbox moves to the countered opponent to guarantee a hit";
					text[2] = "Added Shine and Fire visual effects for Counter, FSpecial, FStrong, DStrong";
					nooflines = 3;
					textwidth = 630;
					break;
				case 16:
					text[0] = "Increased Counter end lag";
					text[1] = "FStrong has can slide less";
					text[2] = "Increased landing lag for all aerials";
					text[3] = "Adjusted angle of dash attack";
					text[4] = "";
					text[5] = "Changed FTilt completely. FTilt has a sweetspot at the edge.";
					nooflines = 6;
					textwidth = 460;
					break;
				case 17:
					text[0] = "Added god mode (Up or Down + Taunt)";
					text[1] = "Added flying for god mode";
					text[2] = "Super armor in god mode";
					text[3] = "Counter instantly hits opponent in god mode";
					text[4] = "Counter lets you fly in god mode";
					text[5] = "";
					text[6] = "Added new animation for FSpecial";
					text[7] = "Reduced Counter hitpause";
					text[8] = "Enlarged hitbox and sprite of FTilt";
					text[9] = "Reduced shine visual effect time";
					nooflines = 10;
					textwidth = 340;
					break;
				case 18:
					text[0] = "Counter now can set direction of knockback with joystick";
					textwidth = 440;
					break;
				case 19:
					text[0] = "Changed UStrong completely.";
					text[1] = "UStrong has new animation.";
					text[2] = "";
					text[3] = "Balanced all Strong knockback and knockback multiplier";
					nooflines = 4;
					textwidth = 410;
					break;
				case 20:
					text[0] = "Changed animation for DTilt";
					text[1] = "Adjusted hitboxes for DTilt";
					text[2] = "";
					text[3] = "Completely changed UAir";
					nooflines = 4;
					textwidth = 220;
					break;
				case 21:
					text[0] = "TCO drawing";
					textwidth = 100;
					break;
				case 22:
					text[0] = "Finished tag";
					textwidth = 100;
					break;
				case 23:
					text[0] = "Reduced hitstun multiplier of UAir final hit to 0.7";
					text[1] = "";
					text[2] = "Added teleport intro animation";
					nooflines = 3;
					textwidth = 380;
					break;
				case 24:
					text[0] = "F";
					textwidth = 30;
					break;
				case 25:
					text[0] = "Undo F";
					textwidth = 60;
					break;
				case 26:
					text[0] = "Substitute doll will appear when Counter activates";
					text[1] = "Doll does 1 damage and no knockback";
					nooflines = 2;
					textwidth = 380;
					break;
				case 27:
					text[0] = "AI update";
					text[1] = "CPU Hikaru will use more neutral airs overall";
					text[2] = "CPU Hikaru will use custom moves based on get_training_cpu_action() and the cpu level";
					text[3] = "CPU Hikaru will perform Forward Special closer to the edge than before";
					text[4] = "";
					text[5] = "Grab update";
					text[6] = "Jabs have been updated to a grab";
					text[7] = "You can choose to perform a front or back throw depending on which way you hold the joystick";
					text[8] = "Throws combo into the sweet spot of Forward Special";
					text[9] = "";
					text[10] = "Up Tilt update";
					text[11] = "Up Tilt has a new animation";
					text[12] = "";
					text[13] = "General";
					text[14] = "Most of Hikaru's moves have been buffed in damage output";
					nooflines = 15;
					textwidth = 710;
					break;
				case 28:
					text[0] = "Grab Update";
					text[1] = "You now can buffer FSpecial by holding B at the end of the throw";
					text[2] = "FSpecial should now sweetspot on most characters";
					text[3] = "";
					text[4] = "Counter Update";
					text[5] = "Counter now deals less hitstun";
					text[6] = "Whifflag is now doubled";
					nooflines = 7;
					textwidth = 500;
					break;
			}
			break;
		case 1:
			switch (tutmenu)
			{
				case 0:
					text[0] = "Hikaru now has an Aura mode";
					text[1] = "If you counter any attack, you'll go into Aura mode";
					text[2] = "Aura mode will cause Hikaru's outline colour to turn from black to red";
					text[3] = "Aura mode will buff the next Special/Strong attack once";
					text[4] = "After the hit connects, you will revert back to normal mode.";
					text[5] = "Hikaru's Up Special is now a teleport move";
					text[6] = "You will move in the specified direction for 15 frames";
					text[7] = "In normal mode, there aren't any hitboxes";
					text[8] = "In Aura mode, you will perform this move twice";
					text[9] = "If you are within 300 pixels from the last opponent that hit you, you will teleport to them, deal damage, and teleport again";
					text[10] = "Aura will be consumed even if you don't hit the target";
					text[11] = "Hikaru's Forward Special will no longer spike at its sweetspot in normal mode";
					text[12] = "Only in Aura mode will it spike";
					text[13] = "Aura is only consumed when you hit the sweetspot";
					text[14] = "Hikaru's normal Counter will not do any damage";
					text[15] = "When normal Counter is activated, you can teleport in any specified direction to avoid getting hit";
					text[16] = "Hikaru's Aura Counter is the pre-existing Counter";
					text[17] = "Aura Counter has increased hitstun";
					text[18] = "Aura Neutral Special will spawn a fully-charged Aura Sphere with increased hitstun";
					text[19] = "This projectile will have the Plasma Stun effect (Clairen)";
					text[20] = "Aura Sphere will no longer have the Burn debuff effect";
					text[21] = "Aura throws will knock the target the same angle every time";
					text[22] = "Aura throws wiill combo into sweetspot Forward Special";
					text[23] = "Normal throws has increased Drift Multiplier";
					text[24] = "All strong attacks now have less knockback";
					text[25] = "Aura strong attacks have increased knockback and has the Burn debuff effect";
					nooflines = 26;
					textwidth = 920;
					break;
				case 1:
					text[0] = "Removed a bug where UStrong, DStrong, and DTilt can't be parried";
					text[1] = "Added a new victory sound which will play if you use Deity mode";
					text[2] = "Increased Aura FSpecial sweetspot knockback";
					nooflines = 3;
					textwidth = 490;
					break;
				case 2:
					text[0] = "There is a HUD showing the charge state of Aura Sphere";
					text[1] = "";
					text[2] = "FTilt has now has a windbox to ensure the second hit will hit";
					text[3] = "BAir has a lower hitbox that pushes grounded rivas into the second, stronger hitbox";
					text[4] = "UAir has a lower different sprite origin, and hitboxes are lower";
					text[5] = "UAir has greater knockback, for juggling opponents off the top";
					text[6] = "Throw has a lower knockback and higher knockback scaling";
					text[7] = "Throw has suitable sfx to be played";
					text[8] = "Counter now comes out frame 5 instead of frame 2";
					text[9] = "NSpecial has a longer startup time";
					text[10] = "Aura FSpecial has higher knockback";
					nooflines = 11;
					textwidth = 630;
					break;
			}
			break;
		case 2:
			text[0] = "[V3 is all Blank]";
			textwidth = 130;
			break;
		case 3:
			switch (tutmenu)
			{
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
					text[0] = "[Blank]";
					textwidth = 70;
					break;
				case 6:
					text[0] = "(Alrght fine I'll do patch notes again)";
					text[1] = "Floaty dair timeeeee";
					nooflines = 2;
					textwidth = 300;
					break;
				case 7:
					text[0] = "Enhanced Gold AI";
					text[1] = "Added SFX for void ball";
					text[2] = "Added Destroy effect for Substitute doll";
					nooflines = 3;
					textwidth = 310;
					break;
				case 8:
					text[0] = "Adjusted Air Friction for Uair and Dair";
					text[1] = "Blink now has less distance but carries momentum after the Blink";
					text[2] = "Higher angle for Utilt";
					nooflines = 3;
					textwidth = 500;
					break;
				case 9:
					text[0] = "New Deceptive Blink tech!!!!";
					text[1] = "When you teleport to the ground, you don't go into pratland, and can instantly attack out of it. (Won't consume Deception)";
					text[2] = "If you don't teleport to the ground, you'll trigger the usual opponent Dair teleport attack. (Will consume Deception)";
					text[3] = "";
					text[4] = "New Blink tech!";
					text[5] = "You can choose to teleport through platforms or not by holding B during the teleport.";
					text[6] = "Hold B -> Through Platforms";
					text[7] = "Tap B -> Stop at platforms";
					text[8] = "";
					text[9] = "Deceptive Kitsune Flash will no longer consume Deception";
					text[10] = "";
					text[11] = "If you're in Beast Deity mode or Godmode, text will now appear beside the Void Ball HUD.";
					nooflines = 12;
					textwidth = 910;
					break;
				case 10:
					text[0] = "Changed Deceptive state's visual effect from a red outline to "+'"'+"playful"+'"'+" lines";
					text[1] = "Changed parry's sprite to a Substitute doll";
					text[2] = "Deceptive Blink now lets you teleport through Air Armada (Will not consume Deception)";
					text[3] = "Adjusted Character Select Screen art";
					text[4] = "Adjusted BAir art";
					text[5] = "Reduced dash speed to 7.5";
					nooflines = 6;
					textwidth = 640;
					break;
				case 11:
					text[0] = "Added effects for the Beast Deity fight";
					text[1] = "Fixed "+'"'+"Playful"+'"'+" effect while teleporting";
					nooflines = 2;
					textwidth = 310;
					break;
				case 12:
					text[0] = "Added more colour palettes";
					nooflines = 1;
					textwidth = 210;
					break;
				case 13:
					text[0] = "Changed CSS and Portrait art (Thanks Equinox!)";
					text[1] = "Added backwards compatibility with workshop_previous";
					text[2] = "HUD will warn if you're using workshop_previous that errors may occur";
					nooflines = 3;
					textwidth = 530;
					break;
				case 14:
					text[0] = "Air Armada Deception Blink through stage oversight for custom stages fixed";
					nooflines = 1;
					textwidth = 570;
					break;
				case 15:
					text[0] = "[v4.20 in Steam workshop]";
					text[1] = "Change note number 69 ayyy";
					text[2] = "AND ALSO V4.20 lmaoooooooooo";
					text[3] = "";
					text[4] = "We have ascended!!!!!!!!!!!!!!!!!";
					text[5] = "";
					text[6] = "Patch notes:";
					text[7] = "Changed Infoboxes to let players (who are to lazy to read description) know about Hikaru's gimmick (Deception)";
					nooflines = 8;
					textwidth = 830;
					break;
			}
			break;
		case 4:
			switch (tutmenu)
			{
				case 0:
					text[0] = "Slightly big update!";
					text[1] = "There are titles that appear when you're in Deception state!";
					text[2] = "Titles are unique to each character!";
					text[3] = "You can add custom titles for Hikaru by adding Hikaru_Title in init.gml";
					text[4] = "";
					text[5] = "Hikaru_Title = "+'"'+"Test"+'"'+";";
					text[6] = "";
					text[7] = "It will appear as "+'"'+"Test, Hikaru"+'"';
					nooflines = 8;
					textwidth = 520;
					break;
				case 1:
					text[0] = "ADAM CARRA PLAYED HIKARU";
					text[1] = "...and found a bug";
					text[2] = "";
					text[3] = "So here's the update while he's streaming rn";
					text[4] = "";
					text[5] = "Transformation bug with v5.0";
					nooflines = 6;
					textwidth = 350;
					break;
				case 2:
					text[0] = "Changed NSpecial Projectile art";
					text[1] = "NSpecial Projectile has slightly more extra hitpause (0 -> 0, 0 -> 6, 0 -> 7)";
					text[2] = "Readded #f42069 #b4da55 colour scheme since it's highly requested";
					nooflines = 3;
					textwidth = 570;
					break;
				case 3:
					text[0] = "Removed Succ for Fair";
					text[1] = "Added Up Kick to Fair";
					text[2] = "Added Hitpause to various attacks";
					text[3] = "Altered Dair Sprites";
					nooflines = 4;
					textwidth = 270;
					break;
				case 4:
					text[0] = "Deceptive Void Ball now takes on the form of the dash sprite of the opponent's custom character!";
					text[1] = "It still uses the previous Deceptive Void Ball sprite for base cast and custom characters that do not have a dash sprite.";
					text[2] = "Void Ball (all variants) now has very little knockback, but deal a lot of hitstun.";
					text[3] = "Deceptive Deception now has very little knockback, but deal a lot of hitstun.";
					nooflines = 4;
					textwidth = 900;
					break;
			}
			break;
		case 5:
			switch (tutmenu)
			{
				case 0:
					text[0] = "Added Rune Buddy support!";
					text[1] = "Added clone articles of Hikaru when performing Down Special";
					text[2] = "These clones will let Hikaru enter Deception state if the opponent hits it";
					text[3] = "There can only be 2 clones out at a time";
					text[4] = "Parry now also triggers Deception state";
					nooflines = 5;
					textwidth = 550;
					break;
				case 1:
					text[0] = "Removed hitpause on clone hit, as it somehow affects the opponent's speed and make them fly off stage";
					text[1] = "Slowed Void Ball a lot, and decreased hitstun";
					nooflines = 2;
					textwidth = 800;
					break;
				case 2:
					text[0] = "Deception Void Ball now copies base cast!";
					text[1] = "Parry and grounded Jump cancels have been removed for Void Ball";
					text[2] = "You can still perform a grounded jump cancel if the charging hitbox has hit someone";
					text[3] = "";
					text[4] = "DStrong windboxes have been removed";
					text[5] = "";
					text[6] = "Beast Deity Hikaru now uses clones";
					text[7] = "";
					text[8] = "Increased DStrong Hitpause";
					text[9] = "Changed DStrong hitsound";
					text[10] = "";
					text[11] = "Hikaru clones now disappear on parry and on hit";
					text[12] = "";
					text[13] = "Decreased damage on BAir";
					nooflines = 14;
					textwidth = 630;
					break;
				case 3:
					text[0] = "Deceptive Void Ball now has different sound effects depending on whether it takes the form of the opponent";
					text[1] = "While charging Void Ball, you can use the C-Stick to fire. This means that you can choose the direction you want to fire it";
					text[2] = "Void Ball has slightly more stun";
					text[3] = "AI now knows how to use Void Ball";
					text[4] = "Deceptive Void Ball now has checks of asset names in case asset doesn't exist when taking sprites";
					text[5] = "";
					text[6] = "Removed first hit of FAir";
					nooflines = 7;
					textwidth = 910;
					break;
				case 4:
					text[0] = "Added Victory music (Shrine3)";
					text[1] = "";
					text[2] = "Sped up FAir's hit window";
					text[3] = "";
					text[4] = "Fixed animation for BAir, Dair, and UAir";
					text[5] = "";
					text[6] = "Added abyssHime_deathspr (Hikaru will steal deceived opponent's walk sprite during cutscene kill)";
					text[7] = "";
					text[8] = "Altered Beast Deity AI so that Hikaru doesn't spam Void Ball and Deceive";
					nooflines = 9;
					textwidth = 720;
					break;
				case 5:
					text[0] = "Fixed hitbox timings for FAir and DAir so that it comes out after the smear";
					text[1] = "";
					text[2] = "Added null pointer checks for Hikaru copy so it won't crash anymore :D";
					nooflines = 3;
					textwidth = 580;
					break;
				case 6:
					text[0] = "Adjusted UStrong and DStrong's charge frames to tell them apart";
					text[1] = "";
					text[2] = "Victory tune added fox sounds";
					nooflines = 3;
					textwidth = 500;
					break;
				case 7:
					text[0] = "Made DTilt techable if used multiple times in a row (to prevent infinites)";
					text[1] = "Added glitch effects to Hikaru's clones, but only for the Gameboy and the pseudo-G7 alts";
					nooflines = 2;
					textwidth = 670;
					break;
				case 8:
					text[0] = "My dumbass forgot to add curly brackets to the code that spawns the clones so the clones could spawn in the air";
					text[1] = "";
					text[2] = "But hey, we're nearing v6.9";
					nooflines = 3;
					textwidth = 870;
					break;
				case 9:
					text[0] = "Nice";
					text[1] = "";
					text[2] = "Fixed Beast Deity AI";
					nooflines = 3;
					textwidth = 170;
					break;
				case 10:
					text[0] = "Changed hitboxes for UStrong, DStrong, and UAir";
					text[1] = "";
					text[2] = "Reduced extra hitpause on Jab 2 so that you can't infinite";
					text[3] = "";
					text[4] = "Readded jump and parry cancels for Void Ball, but with endlag";
					nooflines = 5;
					textwidth = 460;
					break;
				case 11:
					text[0] = "Jab 3 charge + reverse";
					text[1] = "Jab 3 lower base knockback";
					text[2] = "";
					text[3] = "Godmode control opponent (Hold Attack and Shield while taunting in godmode)";
					nooflines = 4;
					textwidth = 580;
					break;
				case 12:
					text[0] = "Jab 3 charge can only be activated on player hit";
					text[1] = "Jab 3 can be cancelled into:";
					text[2] = "Front dash Jab 3 (for back rolls)";
					text[3] = "Back dash Jab 3 (for front rolls)";
					text[4] = "Deceive (for attacks)";
					nooflines = 5;
					textwidth = 380;
					break;
				case 13:
					text[0] = "Renamed Deception to Fakie";
					text[1] = "";
					text[2] = "Added sound effects to accompany the Fakie mechanic";
					text[3] = "";
					text[4] = "You now can drop through platforms while charging NSpecial by hitting down";
					nooflines = 5;
					textwidth = 590;
					break;
				case 14:
					text[0] = "Added heavier sounds for FAir";
					text[1] = "Added a sound effect when you charge Jab 3 for a certain amount of time to indicate it's stronger";
					text[2] = "Added new victory sound (Shrine4)";
					text[3] = "";
					text[4] = "Altered DSpecial hitpause so that the full copy animation will appear";
					text[5] = "";
					text[6] = "FAir up kick readded, but with less knockback";
					nooflines = 7;
					textwidth = 760;
					break;
			}
			break;
		case 6:
			switch (tutmenu)
			{
				case 0:
					text[0] = "Added Beast Deity Hikaru bossfight!";
					text[1] = "This bossfight has plenty of phases and even boasts 2 endings.";
					nooflines = 2;
					textwidth = 490;
					break;
				case 1:
					text[0] = "Changed Void phase to grey";
					text[1] = "Added more floaties to Time phase and will not allow Hikaru to leave the stage during phase";
					text[2] = "Reduced hitpause for Earth and Water";
					text[3] = "Increased KB for Earth";
					nooflines = 4;
					textwidth = 700;
					break;
				case 2:
					text[0] = "Bugfix: Invincible non boss Hikaru";
					nooflines = 1;
					textwidth = 260;
					break;
				case 3:
					text[0] = "Reduced number of projectiles in phase 7 (Celestial)";
					text[1] = "Made Kragg Pillar hit you up";
					text[2] = "Removed hitpause for Bubbles";
					text[3] = "";
					text[4] = "Now compatible with custom stages";
					text[5] = "";
					text[6] = "Removed most dialogue if you hit Hikaru instead of asking to spar";
					nooflines = 7;
					textwidth = 500;
					break;
				case 4:
					text[0] = "Made Kragg pillar kill at 200%";
					text[1] = "Removed Fire from Wind phase";
					text[2] = "Changes Wind phase mechanic to blow the direction Hikaru is facing";
					nooflines = 3;
					textwidth = 510;
					break;
				case 5:
					text[0] = "Removed non-scripted normals from Beast Deity Hikaru";
					text[1] = "Kragg Pillar now kills at 300%";
					text[2] = "Changed Water phase to bubble columns";
					text[3] = "Altered non-pacifist text to make Hikaru seem less "+'"'+"annoying"+'"';
					text[4] = "Gave almost every phase one scripted normal attack";
					text[5] = "Changed level 9 to level 1 to select bossfight";
					nooflines = 6;
					textwidth = 480;
					break;
				case 6:
					text[0] = "Jab 2 is now techable";
					text[1] = "";
					text[2] = "UAir is more consistent";
					text[3] = "";
					text[4] = "FTilt no longer confirms into Fakie Kitsune Flash";
					text[5] = "";
					text[6] = "Beast Deity Hikaru now pauses movement to breathe fire";
					text[7] = "";
					text[8] = "Hikaru will have an ultra hard mode with Boss Zetta by activating Fakie Counter";
					nooflines = 9;
					textwidth = 600;
					break;
				case 7:
					text[0] = "Removed a teleport bug Adam Carra found during stream";
					text[1] = "";
					text[2] = "Added Ori Article Bash support";
					text[3] = "";
					text[4] = "New taunt animation! (Thanks SpriteStar)";
					text[5] = "You can hold down taunt and it will loop!";
					text[6] = "";
					text[7] = "FTilt has increased drift multiplier so it's very difficult to get infinites by chasing DI";
					text[8] = "";
					text[9] = "Buffed UAir's knockback";
					text[10] = "";
					text[11] = "Fair comes out 1 frame faster now";
					text[12] = "Fair's hitboxes are adjusted to fit the sprites";
					text[13] = "";
					text[14] = "BAir now deals 1% more damage";
					text[15] = "BAir has less landing lag";
					text[16] = "";
					text[17] = "NSpecial now can fire low by holding down and shooting";
					text[18] = "";
					text[19] = "You now can walljump out of FSpecial to recover a little faster";
					text[20] = "";
					text[21] = "DStrong is 2 frames faster";
					text[22] = "";
					text[23] = "Added Hyper Jumps";
					text[24] = "Hyper Jumps let you jump higher from the ground by fastfalling your doublejump to the ground";
					text[25] = "A sound effect will play if you did it correctly";
					nooflines = 26;
					textwidth = 710;
					break;
				case 8:
					text[0] = "Added more dialogue for Pacifist Route Beast Deity Hikaru";
					text[1] = "";
					text[2] = "Added Ditto/Zoroark copy for the last two alts (down and taunt to activate)";
					text[3] = "";
					text[4] = "Hitting FSpecial sourspot now doesn't put you in pratfall. It just gives you a 40 frame cooldown for FSpecial";
					nooflines = 5;
					textwidth = 820;
					break;
				case 9:
					text[0] = "Redone "+'"'+"Time Break"+'"'+" effect into a circle";
					text[1] = "Added "+'"'+"Time Break"+'"'+" effect to Fakie attacks";
					text[2] = "";
					text[3] = "Reduced DTilt damage";
					text[4] = "";
					text[5] = "Increased hitpause for FSpecial and all strongs";
					text[6] = "";
					text[7] = "Reduced FSpecial knockback";
					text[8] = "";
					text[9] = "USpecial no longer carries momentum";
					text[10] = "";
					text[11] = "NSpecial charging hitbox is only active when you start charging";
					text[12] = "NSpecial charging hitbox hits at a 120 angle instead of flipper 8";
					text[13] = "";
					text[14] = "Fakie DSpecial now moves you to the opponent that you countered";
					text[15] = "";
					text[16] = "Removed Clairen Stun and Zetterburn Burn effects";
					text[17] = "";
					text[18] = "Touched up on FAir sprites";
					text[19] = "";
					text[20] = "DAir can now be cancelled if you haven't hit any player by pressing down, jump, or shield";
					nooflines = 21;
					textwidth = 670;
					break;
				case 10:
					text[0] = "Time Break effect added hole on non counter";
					text[1] = "Time break effect ease out";
					text[2] = "NSpec Charge time 30 -> 40 frames per stage";
					text[3] = "NSpec2 Hitpause 8 -> 6";
					text[4] = "NSpec2 Angle 72 -> 108";
					text[5] = "NSpec2 Hitstun Multiplier 0.5 -> 1.5";
					text[6] = "NSpec2 Base Knockback 2 -> 10";
					text[7] = "NSpec2 Knockback Scaling 0.3 -> 0";
					text[8] = "NSpec2 Extra Hitpause 8 -> 6";
					text[9] = "NSpec2 Drift Multiplier 1 -> 0";
					text[10] = "";
					text[11] = "NSpec3 Extra Hitpause 12 -> 16";
					text[12] = "FSpec2 Base Knockback 6 -> 5";
					text[13] = "FSpec2 Knockback scaling 0.8 -> 0.6";
					text[14] = "FSpec2 Fakie Base Knockback 10 -> 0";
					text[15] = "FSpec2 Fakie Base Hitpause 15 -> 10";
					text[16] = "FSpec2 Fakie Extra Hitpause 20 -> 30";
					text[17] = "FSpec2 on hit moves you to the hit player, can choose to move to right or left of target by holding left or right";
					text[18] = "respectively during hitpause. If don't hold any direction, you will go behind the target.";
					text[19] = "If holding down (auto choose), you will go to the location farther from the side blastzone.";
					text[20] = "";
					text[21] = "DAir Cancel into airdodge only";
					text[22] = "";
					text[23] = "FAir2 Damage 11 -> 9";
					text[24] = "BAir2 Damage 9 -> 8";
					text[25] = "NAir3 Damage 4 -> 3";
					nooflines = 26;
					textwidth = 860;
					break;
				case 11:
					text[0] = "Redone Kirby support to match the latest Hikaru NSpecial stats";
					nooflines = 1;
					textwidth = 490;
					break;
				case 12:
					text[0] = "HACK TEST";
					nooflines = 1;
					textwidth = 90;
					break;
				case 13:
					text[0] = "HACK TEST 2 in case Steam doesn't allow";
					nooflines = 1;
					textwidth = 310;
					break;
				case 14:
					text[0] = "AHAHAHAHAHAHA I CAN HACK HIKARU";
					text[1] = "NOW HIKARU WILL BE NERFED";
					nooflines = 2;
					textwidth = 270;
					break;
				case 15:
					text[0] = "F";
					nooflines = 1;
					textwidth = 30;
					break;
				case 16:
					text[0] = "BIG NERFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
					text[1] = "HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA [Continued for a long time]";
					nooflines = 2;
					textwidth = 510;
					break;
				case 17:
					text[0] = "Imagine if you died instantly against some characters";
					nooflines = 1;
					textwidth = 410;
					break;
				case 18:
					text[0] = "Hikaru now creates clones when hyperjumping";
					text[1] = "Aerial counter has a longer startup (frame 11 compared to grounded 5)";
					text[2] = "A lot of moves have decreased damage idk which";
					text[3] = "FSpecial has increased kb and priority";
					text[4] = "Mudkid's crashing no longer trigger";
					text[5] = "";
					text[6] = "idk Hikaru received a lot of nerfs";
					nooflines = 7;
					textwidth = 560;
					break;
				case 19:
					text[0] = "Idk I buffed tf out of Hikaru cuz she weak";
					text[1] = "more hitstun for combo starters";
					text[2] = "dair now sends down";
					text[3] = "more voice clips for fakie strongs too";
					text[4] = "slightly changed victory song";
					text[5] = "dattack is attack cancellable on hit";
					text[6] = "";
					text[7] = "help";
					nooflines = 8;
					textwidth = 360;
					break;
				case 20:
					text[0] = "NO";
					nooflines = 1;
					textwidth = 40;
					break;
				case 21:
					text[0] = "Overnerfed speed and weight";
					text[1] = "Strong attacks do pretty much no kb at low percents";
					text[2] = "Redone some sprites";
					text[3] = "FTilt and DAir is techable again";
					text[4] = "BAir scaling is nerfed a LOT";
					text[5] = "Dash attack cancelling has been removed";
					text[6] = "Prat land time increased to 24";
					text[7] = "Fakie strongs are more disrespectfu";
					text[8] = "Added a victory background";
					text[9] = "Increased some hitbox sizes (idk, theres a lot)";
					text[10] = "Increased consistency on DAir";
					nooflines = 11;
					textwidth = 410;
					break;
				case 22:
					text[0] = "Added BlueyBot support";
					nooflines = 1;
					textwidth = 200;
					break;
				case 23:
					text[0] = "Resized Jab hitboxes for more height consistency";
					text[1] = "Increased FTilt hitstun since it was overnerfed";
					nooflines = 2;
					textwidth = 390;
					break;
				case 24:
					text[0] = "Fixed an other_draw error";
					text[1] = "Added css_draw stuff";
					nooflines = 2;
					textwidth = 210;
					break;
				case 25:
					text[0] = "[Literally the Bee Movie script]";
					nooflines = 1;
					textwidth = 250;
					break;
				case 26:
					text[0] = "Funni sound effect";
					nooflines = 1;
					textwidth = 160;
					break;
				case 27:
					text[0] = "Jab 3 buffed lmao";
					text[1] = "NAir angle lowered";
					text[2] = "yeet";
					text[3] = "Sino skin";
					text[4] = "hit or miss";
					text[5] = "I guess they never miss huh?";
					text[6] = "BAir weak hit";
					text[7] = "sounds stuff changed";
					text[8] = "uair hitstun multiplier 1";
					text[9] = "nspec charge is faster";
					text[10] = "If I were green I would die";
					nooflines = 11;
					textwidth = 230;
					break;
				case 28:
					text[0] = "Never gonna give you up~";
					text[1] = "Never gonna let you down~";
					nooflines = 2;
					textwidth = 220;
					break;
				case 29:
					text[0] = "Country Road";
					text[1] = "Take me home";
					nooflines = 2;
					textwidth = 140;
					break;
				case 30:
					text[0] = "Spine music";
					nooflines = 1;
					textwidth = 120;
					break;
				case 31:
					text[0] = "Idk what Sino added lol";
					text[1] = "";
					text[2] = "I added skins and some logos for the skins hehe";
					nooflines = 3;
					textwidth = 380;
					break;
			}
			break;
		case 7:
			switch (tutmenu)
			{
				case 0:
					text[0] = "DSpecial has been changed into a roll/dash";
					text[1] = "";
					text[2] = "Hyperjumps no longer create clones";
					text[3] = "";
					text[4] = "UAir has a new animation";
					text[5] = "UAir has more knockback";
					text[6] = "UAir has less knockback growth";
					text[7] = "";
					text[8] = "NAir has a new animation";
					text[9] = "NAir's hitboxes moved back slightly to fit the animation";
					text[10] = "";
					text[11] = "Clones now disappear in 5 seconds";
					text[12] = "";
					text[13] = "DAir at the bottom blastzone will not kill you first";
					text[14] = "";
					text[15] = "DStrong has more knockback, knockback growth and range";
					nooflines = 16;
					textwidth = 450;
					break;
				case 1:
					text[0] = "Added "+'"'+"Infamous"+'"'+" (graffiti) alt";
					text[1] = "Added Graffiti taunt (down + taunt)";
					text[2] = "Graffiti taunt is automatic for Infamous alt when taunting";
					text[3] = "";
					text[4] = "Removed DSpecial charging mechanic";
					text[5] = "";
					text[6] = "Added some new runes";
					nooflines = 7;
					textwidth = 460;
					break;
				case 2:
					text[0] = "Fixed Infamous taunt intro bug";
					text[1] = "Fixed Infamous taunt direction";
					text[2] = "Changed graffiti colours";
					text[3] = "Added exclusive spray can projectile for Infamous alt";
					text[4] = "Polished spray can projectile";
					text[5] = "Polished graffiti article";
					text[6] = "Infamous taunt is now Attack + Taunt";
					text[7] = "";
					text[8] = "Added base cast code for Mew and Zoroark mode";
					nooflines = 9;
					textwidth = 410;
					break;
				case 3:
					text[0] = "CSS stuff disappears after a while now! Pretty!";
					text[1] = "Reduced startup of FStrong";
					nooflines = 2;
					textwidth = 380;
					break;
				case 4:
					text[0] = "New UStrong! Its really similar to Sheik's Up Smash";
					text[1] = "";
					text[2] = "Increased pratlandtime back to 17 from 16";
					text[3] = "";
					text[4] = "Changed a few words in the pacifist bossfight talk";
					text[5] = "";
					text[6] = "Added a spray sound effect for the Graffiti taunt";
					nooflines = 7;
					textwidth = 400;
					break;
				case 5:
					text[0] = "Nerfed UStrong a lot";
					text[1] = "Fakie UStrong sweetspot has a larger hitbox";
					text[2] = "Sourspot has increased base knockback";
					text[3] = "Sourspot now has time break";
					text[4] = "";
					text[5] = "Jab3 has time break";
					text[6] = "Jab3 has some new sounds";
					text[7] = "Jab3 Forward has more speed";
					text[8] = "Jab3 now cancels into the new dspecial (dash) instead of the old dspecial (counter)";
					text[9] = "";
					text[10] = "Reduced UTilt hitstun mulltiplier from 1.5 to 1.1";
					text[11] = "";
					text[12] = "FStrong angle changed from 31 to 361";
					text[13] = "";
					text[14] = "Hyperjumps now multiply your hsp by 1.2";
					nooflines = 15;
					textwidth = 620;
					break;
				case 6:
					text[0] = "Enhanced godmode";
					text[1] = "Renamed godmode to something new (you gotta find it out yourself)";
					text[2] = "";
					text[3] = "Hikaru AI uses new dspecial instead of the old dspecial";
					text[4] = "Hikaru AI follows dspecial cooldown";
					nooflines = 5;
					textwidth = 510;
					break;
				case 7:
					text[0] = "Added a meter for DSpecial cooldown";
					text[1] = "DSpecial cooldown can no longer be removed by hitting the opponent";
					text[2] = "Grounded DSpecial has less horizontal speed";
					text[3] = "";
					text[4] = "Updated Sino skin";
					text[5] = "Added Early Access logo for Gameboy skin";
					text[6] = "";
					text[7] = "Updated Hikaru titles for Sino skin against title-less characters";
					text[8] = "New default title for title-less characters";
					text[9] = "New title for Hikaru dittos";
					text[10] = "";
					text[11] = "UAir's knockback scaling is increased by 0.1";
					text[12] = "";
					text[13] = "Fakie DTilt no longer negates DI";
					text[14] = "";
					text[15] = "FSpecial has added 20 frames endlag";
					text[16] = "FSpecial endlag will be cancelled when on the ground (pratlandtime still applies)";
					text[17] = "";
					text[18] = "UStrong2 comes out 2 frames earlier and is 2 frames longer (Same frame as UStrong1 - sweetspot)";
					nooflines = 19;
					textwidth = 750;
					break;
				case 8:
					text[0] = "Fakie HUDs now fade in and out (Pretty!)";
					text[1] = "";
					text[2] = "Jab1 is reaches slightly farther";
					text[3] = "";
					text[4] = "Added Acolyte skin (Bye bye Mew skin!)";
					text[5] = "Added logos for some skins";
					text[6] = "";
					text[7] = "Increased NSpec3 and Fakie NSpec hitstun by 10 frames";
					text[8] = "";
					text[9] = "Fakie NSpec and Fakie USpec now makes the opponent shake while they are stunned";
					text[10] = "";
					text[11] = "Bugfix for Fakie USpec trade and not losing fakie";
					text[12] = "Fakie USpec has attack invincibility after the teleport and before the transformation so fakie can be removed on hit";
					nooflines = 13;
					textwidth = 870;
					break;
				case 9:
					text[0] = "NSpecial charge being parried will now put Hikaru in parry stun and lose all charge";
					text[1] = "Active frames of NSpecial charge has been increased from 5 to 7";
					text[2] = "Increased NSpecial charge time for NSpec3";
					text[3] = "NSpecial low shot has been removed";
					text[4] = "Bugfix for teleporting off the stage when hitting down while charging NSpecial at the ledge";
					text[5] = "Redone NSpecial sprites";
					text[6] = "";
					text[7] = "FSpecial1's base hitpause increased from 3 to 5";
					text[8] = "FSpecial1's extra hitpause decreased from 0 to -5";
					text[9] = "FSpecial now has visual effects during the startup";
					text[10] = "";
					text[11] = "DSpecial has 2 frames less startup";
					text[12] = "Added code for easier grounded DSpecial on platforms";
					text[13] = "";
					text[14] = "Fixed a bug for Fakie USpecial where Hikaru can't hit the opponent while they are attacking";
					text[15] = "";
					text[16] = "The DSpecial cooldown bar now fades in and out more smoothly";
					text[17] = "The cooldown bar will now disappear when Hikaru is using USpecial";
					text[18] = "";
					text[19] = "FTilt grab now sets the opponent to (40, 1) instead of (50, 1)";
					text[20] = "";
					text[21] = "DAir now grabs even stronger";
					text[22] = "UAir2 no longer has hitfall";
					text[23] = "UAir1 Raindrops can no longer be chained into itself";
					text[24] = "";
					text[25] = "Hikaru now uses her custom stage as her victory screen";
					nooflines = 26;
					textwidth = 700;
					break;
				case 10:
					text[0] = "Fixed a bug where Hikaru can fakie herself by parrying her own projectile that was reflected by the opponent";
					text[1] = "";
					text[2] = "Fakie NSpecial can now be reflected by parrying";
					text[3] = "All variants of NSpecial will now reset their lifetime upon being reflected by parry";
					text[4] = "";
					text[5] = "FSpecial now has 23 frames of startup, from the previous 15 frames";
					text[6] = "FSpecial now has 18 frames of endlag, from the previous 24";
					text[7] = "Slightly altered FSpecial sprites";
					text[8] = "Fakie FSpecial will now not put Hikaru in pratfall, but will now consume fakie";
					text[9] = "";
					text[10] = "Fakie DSpecial cancel will put a 2 second (120 frame) timer on Hikaru";
					text[11] = "During the countdown, Hikaru cannot use DSpecial";
					text[12] = "Once the countdown has ended, Hikaru will lose fakie";
					text[13] = "Hikaru can use her fakie for any other attack before the countdown ends";
					text[14] = "";
					text[15] = "Jab3 no longer has forward and backward dash";
					text[16] = "Jab3 has slightly higher horizontal speed, from 20 to 23";
					text[17] = "";
					text[18] = "FAir2's angle has been changed from 314 to 30";
					text[19] = "FAir2 now has 1 higher priority over FAir3 and FAir4";
					text[20] = "";
					text[21] = "DAir can no longer be cancelled into Airdodge or NAir";
					text[22] = "";
					text[23] = "Clones now use the walk animation and change direction they're facing when moving";
					text[24] = "";
					text[25] = "The CSS screen will now play Hikaru's taunt";
					nooflines = 26;
					textwidth = 820;
					break;
				case 11:
					text[0] = "Fixed a few pixels some attack sprites";
					text[1] = "Slightly altered Wavedash and Jump sprites";
					text[2] = "Walkturn finally lines up with the rest of the sprites now";
					text[3] = "";
					text[4] = "Removed overhead HUD while Hikaru is invisible during FSpecial";
					text[5] = "FSpecial's startup decreased from 23 to 18";
					text[6] = "FSpecial has 27 frames pratlandtime instead of 17";
					text[7] = "";
					text[8] = "Increased NAir1,2 radius from 70 to 85";
					text[9] = "Increased NAir3 radius from 80 to 95";
					text[10] = "Slightly moved the X value of the hitboxes to match the sprite";
					text[11] = "";
					text[12] = "Added extra 1 frame window for UAir raindrops";
					text[13] = "UAir1 does 1 more damage";
					text[14] = "UAir2 does 1 less damage";
					text[15] = "";
					text[16] = "Fixed a bug where sourspot UStrong has permanent timebreak after using Fakie UStrong once";
					text[17] = "";
					text[18] = "Changed DStrong angle from 30 to 40";
					text[19] = "Reduced DStrong knockback scaling from 1 to 0.8";
					nooflines = 20;
					textwidth = 700;
					break;
				case 12:
					text[0] = "Decreased NAir1,2 radius from 85 to 80";
					text[1] = "Decreased NAir3 radius from 95 to 90";
					text[2] = "";
					text[3] = "It is now not possible to drop through platforms during UAir";
					text[4] = "This allows for easier raindrops on platforms";
					text[5] = "";
					text[6] = "DStrong's knockback scaling has been increased from 0.8 to 0.9";
					text[7] = "";
					text[8] = "Fixed a few minor bugs with Beast Deity Hikaru";
					text[9] = "You now can SDI out of Water phase bubbles";
					text[10] = "Added Shrine of Light support for Beast Deity Hikaru's dialogue";
					text[11] = "";
					text[12] = "Added Raindrops to Hikaru's level 7 and above AI (Doesn't work consistently)";
					text[13] = "Hikaru has better recovery AI, even on custom stages";
					nooflines = 14;
					textwidth = 570;
					break;
				case 13:
					text[0] = "Slightly changed the sprites on FTilt";
					text[1] = "";
					text[2] = "UStrong sourspot has 3 frames less lifetime";
					text[3] = "UStrong sourspot is now slightly less wide";
					text[4] = "";
					text[5] = "DStrong is 2 frames faster";
					text[6] = "DStrong's angle is now 32, from 40";
					text[7] = "";
					text[8] = "DAir will reduce your horizontal speed slightly on hit";
					text[9] = "";
					text[10] = "DSpecial will give Hikaru invincibility till the end of the move if she is hit";
					text[11] = "DSpecial will now destroy projectiles if they hit Hikaru while she's invincible";
					text[12] = "";
					text[13] = "Time Breaks has slightly increased knockback boost, from 1.3x to 1.4x";
					text[14] = "";
					text[15] = "The vaporwave alt now has a slightly purple outline";
					text[16] = "The trans flag alt now spawns a trans flag during taunt and intro";
					nooflines = 17;
					textwidth = 570;
					break;
				case 14:
					text[0] = "NSpecial can be fired faster by tapping special again, or attack, before the charging animation";
					text[1] = "NSpecial 1-3 can be fired even with fakie by using the above input";
					text[2] = "NSpecial3 will not automatically fire anymore (you can use NSpec 6 because of this)";
					text[3] = "NSpecial 4-6 now has 6 bkb, from 5 before";
					text[4] = "FSpecial's pratlandtime has been reduced to 21 from 27";
					text[5] = "USpecial and DSpecial cancelled hyperjumps will now give 14 frames of invincibility * 1.5";
					text[6] = "USpecial cancelled hyperjumps will no longer put Hikaru in pratfall";
					text[7] = "DSpecial can now be B reversed out of Jab3 charge";
					text[8] = "Charged Jab3 will now always dash forward";
					text[9] = "Dattack can be cancelled into DSpec on hit by pressing the special button";
					text[10] = "FTilt Ground friction before the grab, 1 -> 0.2, Speed boost, 5 -> 4, Hitstun multiplier 0.6 -> 0.7";
					text[11] = "FTilt grabs faster (animation only)";
					text[12] = "DTilt kbs 0.1 -> 0.2, hitstun multiplier  1.3 -> 1.0";
					text[13] = "FAir no longer has a hurtbox on Hikaru's leg during the spike";
					text[14] = "All FAir hitbox widths increased by 5";
					text[15] = "FAir1 bkb has been increased to 5 from 4";
					text[16] = "FAir2 kbs has been increased to 1 from 0.5";
					text[17] = "FAir2 hitstun multiplier has been decreased to 1.0 from 1.1";
					text[18] = "BAir no longer has a hurtbox on Hikaru's leg";
					text[19] = "BAir sweetspot kbs has been increased to 0.9 from 0.7";
					text[20] = "BAir sourspot kbs has been increased to 0.6 from 0.4";
					text[21] = "FStrong no longer has a hurtbox on Hikaru's arm during the hit";
					text[22] = "";
					text[23] = "Awakening Ronald will no longer win against Hikaru, unless he becomes a furry";
					text[24] = "If Ronald becomes a furry, Hikaru will also win";
					nooflines = 25;
					textwidth = 720;
					break;
				case 15:
					text[0] = "Added more Ronald stuff";
					text[1] = "";
					text[2] = "Implemented Booplexing cancels";
					text[3] = "";
					text[4] = "DAir4 now has double base knockback if executed onstage";
					nooflines = 5;
					textwidth = 440;
					break;
				case 16:
					text[0] = "Added a different idle";
					text[1] = "";
					text[2] = "Triggering fakie will now change your outline colour to your skin alt colour";
					text[3] = "";
					text[4] = "Fixed a bug where you can cancel into any move from Dash Attack";
					text[5] = "";
					text[6] = "Final Deity Hikaru gets iasa_script()";
					text[7] = "";
					text[8] = "Hikaru title is always "+'"'+"Kitsune of Light, Hikaru"+'"'+" on Shrine of Light";
					text[9] = "";
					text[10] = "FAir2 knockback scaling reduced to 0.9 from 1.0";
					text[11] = "";
					text[12] = "Removed debug text on Time Break field";
					nooflines = 13;
					textwidth = 560;
					break;
				case 17:
					text[0] = "Improved FStrong animation";
					text[1] = "Improved UTilt animation";
					text[2] = "";
					text[3] = "Gameboy skin has no shading";
					text[4] = "Gameboy skin has green outline";
					text[5] = "";
					text[6] = "Acolyte skin has qr code taunt";
					text[7] = "";
					text[8] = '"'+"Muted"+'"'+" mode with non-copyrighted sounds";
					text[9] = "";
					text[10] = "DSpecial no longer prevents damage from opponents";
					text[11] = "DSpecial has 2 extra frames of endlag - that makes a total 15 frames endlag! (yall should stop asking to nerf)";
					text[12] = "";
					text[13] = "Reduced knockback scaling for sourspot ustrong from 0.9 to 0.8";
					text[14] = "";
					text[15] = "Increased air accel from 0.2 to 0.3";
					text[16] = "";
					text[17] = "Increased FStrong base hitpause by 2";
					text[18] = "";
					text[19] = "Clones now last 2 seconds less (Big nerf :/)";
					text[20] = "Clones' lifetime can be reset with nspec (together with the existing taunt)";
					nooflines = 21;
					textwidth = 830;
					break;
				case 18:
					text[0] = "Added some tutorials";
					text[1] = "Access them by going to the practice stage and following the instructions";
					text[2] = "";
					text[3] = "More tutorials will be added soon";
					nooflines = 4;
					textwidth = 560;
					break;
				case 19:
					text[0] = "Added more tutorials";
					text[1] = "";
					text[2] = "Changed Air Accel back to 0.2";
					text[3] = "";
					text[4] = "Bugfix for Fakie USpecial crashing the game for no reason";
					text[5] = "if (goingToCrash())";
					text[6] = "{ dont(); }";
					nooflines = 7;
					textwidth = 440;
					break;
				case 20:
					text[0] = "Booplexing now doesn't boost you upwards anymore";
					text[1] = "";
					text[2] = "Hitting the clones will deal hitpause, have hit effects, and play the hit sound effect";
					text[3] = "";
					text[4] = "New random sprites";
					nooflines = 5;
					textwidth = 630;
					break;
				case 21:
					text[0] = "Added slightly better AI";
					text[1] = "";
					text[2] = "Fixed UStrong sourspot visual effect bug";
					text[3] = "";
					text[4] = "Fixed CSS and Trans Flag alignment issues";
					nooflines = 5;
					textwidth = 350;
					break;
				case 22:
					text[0] = "Background music fades out during time break";
					text[1] = "";
					text[2] = "Zoroark transform only works when unmuted";
					text[3] = "";
					text[4] = "Added Kirby icon";
					text[5] = "";
					text[6] = "Added time break sound effect for muted Hikaru";
					text[7] = "";
					text[8] = "Made Final Deity Hikaru even stronger and is sometimes able to tie with Ronald Wins";
					text[9] = "";
					text[10] = "I didn't touch stats don't worry";
					nooflines = 11;
					textwidth = 630;
					break;
				case 23:
					text[0] = "Fixed opponent article bug with nspec1";
					text[1] = "Fixed some visual draw rectangle misalignment";
					text[2] = "Altered some animations";
					text[3] = "Fixed Hikaru's AI against Zetta";
					text[4] = "Increased FStong hitpause on all variants";
					text[5] = "Added Square time break for Acolyte skin";
					text[6] = "Added Irish flag for Sino skin";
					text[7] = "QR code actually works now";
					text[8] = "DSpecial timer shakes when attempting to use DSpecial on cooldown";
					text[9] = "";
					text[10] = "FAir2 angle nerfed from 30 to 40";
					nooflines = 11;
					textwidth = 510;
					break;
				case 24:
					text[0] = "Maybe fixed a bug where Hikaru instantly loses when opponent parries a projectile that hits a clone";
					text[1] = "Maybe fixed a bug where Hikaru gets infinite fakie when opponent hits a clone";
					text[2] = "New preview thumbnail image";
					text[3] = "";
					text[4] = "Hikaru no longer Time Breaks against an opponent in parry stun if they're below 125%";
					nooflines = 5;
					textwidth = 740;
					break;
				case 25:
					text[0] = "It's nerf time!!!!!";
					text[1] = "";
					text[2] = "The #F42069 #B4DA55 alt now has the Diamond stun effect";
					text[3] = "Parry animation now changes white";
					text[4] = "CSS Text now uses the current selected alt colour";
					text[5] = "Gameboy alt now recolours Hikaru's white fur";
					text[6] = '"'+"Improved"+'"'+" Trum codec cuz Restless said Muno will FINALLY give Hikaru an Otto codec *if* I change the Trum codec";
					text[7] = "[Note: Muno didn't, and he blocked me for asking]";
					text[8] = "";
					text[9] = "Hikaru no longer Time Breaks against an opponent if knockback is under 22";
					text[10] = "";
					text[11] = "All variants of FSpecial has its angle nerfed from 35 to 40";
					nooflines = 12;
					textwidth = 870;
					break;
				case 26:
					text[0] = "FStrong no longer slowly pulls the hit player in";
					text[1] = "Added mixels to crouch hurtbox because base cast has it";
					text[2] = "Fixed UStrong sprites";
					text[3] = "Fixed a bug where Hikaru freezes mid match in matches with more than 2 players";
					text[4] = "";
					text[5] = "Jab2 Angle changed from 70 to 80";
					text[6] = "FTilt Hitstun multiplier increased from 0.7 to 0.75";
					text[7] = "FTilt is half as slippery as before";
					text[8] = "Utilt is can be hit cancelled from window 3 and after";
					nooflines = 9;
					textwidth = 610;
					break;
				case 27:
					text[0] = "FSpecial startup animation fixed";
					text[1] = "U U UWA WA Caramelldansen taunt (shield + taunt)";
					text[2] = "";
					text[3] = "FSpecial sweetspot increased lifetime from 2 to 4";
					text[4] = "";
					text[5] = "Utilt is can no longer be hit cancelled from window 3 and after";
					text[6] = "FSpecial sourspot increased Base Hitpause from 5 to 8";
					text[7] = "FSpecial sourspot decreased Extra Hitpause from -5 to -8";
					text[8] = "FSpecial sweetspot now spawns 1 frame later";
					text[9] = "FSpecial hurtbox now matches Hikaru's sprites on all frames";
					text[10] = "FSpecial base knockback reduced from 8 to 7 on all variants";
					nooflines = 11;
					textwidth = 490;
					break;
				case 28:
					text[0] = "Caramelldansen taunt can be cancelled with taunt and shield too";
					text[1] = "Any taunt turns around clones to the same direction as Hikaru";
					text[2] = "Caramelldansen taunt has twice the number of frames";
					nooflines = 3;
					textwidth = 490;
					break;
			}
			break;
		case 8:
			switch (tutmenu)
			{
				case 0:
					text[0] = "Sino and Vaporwave alts are swapped";
					text[1] = "Bugfix for hitstun hyperjump";
					text[2] = "Added a Practice Menu which works on practice mode";
					text[3] = "Zoroark mode no longer works on the Zoroark alt";
					text[4] = "Final Deity can no longer be activated on muted Hikaru";
					text[5] = "CPUs will now dance when Carameldansen is playing";
					text[6] = "";
					text[7] = "Initial dash 7.6 -> 7";
					text[8] = "";
					text[9] = "Jab - Jab 1 and 2 angles are now 361";
					text[10] = "Jab 2 - Removed scaling";
					text[11] = "Jab 3 - KBS 0.75 -> 0.5";
					text[12] = "Jab 3 - KBS 0.75 -> 0.5";
					text[13] = "";
					text[14] = "Dash Attack - Hitstun multiplier 0.7 -> 0.9";
					text[15] = "Endlag 8 -> 10";
					text[16] = "";
					text[17] = "FTilt can be cancelled into DSpec after the punch";
					text[18] = "Ftilt - KBS 0 -> 0.15";
					text[19] = "Extra hitpause 11 -> 8";
					text[20] = "Extra hitpause 11 -> 8";
					text[21] = "This makes ftilt not ultra reliable as a combo tool at every percent but still very good at low percents,";
					text[22] = "and can connect into side b if the opponent doesn't airdodge on DI/Drift DI out";
					text[23] = "";
					text[24] = "[Continued in v9.1 due to lack of space]";
					nooflines = 25;
					textwidth = 790;
					break;
				case 1:
					text[0] = "Utilt - Adjusted hitbox timing to better match animation. Reduced side hitbox sizes";
					text[1] = "";
					text[2] = "FStrong hitpause no longer sends forward :(";
					text[3] = "";
					text[4] = "DStrong - Increased hitbox size";
					text[5] = "DStrong1 BKB 6 -> 7, KBS .8 -> .85";
					text[6] = "DStrong2 remains the same strength";
					text[7] = "";
					text[8] = "Void Shine and Quick Void can no longer be used";
					text[9] = "Fakie NSpecial is no longer transcendant";
					text[10] = "B Reverse NSpecial hsp multiplier 1.3 -> 1.15";
					text[11] = "";
					text[12] = "Reduced FSpecial distance";
					text[13] = "FSpecial sweetspot KBS 0.7 -> 0.9";
					text[14] = "FSpecial sweetspot is slightly smaller";
					text[15] = "Increased non Fakie FSpecial cooldown on hit 20 -> 40";
					text[16] = "Hitstun Multiplier - 1.2 -> 1";
					text[17] = "This makes the move more of a finisher as a combo tool but not because of the absurd hitstun, but it's own strength";
					text[18] = "";
					text[19] = "Nair - Reduced hitbox size in every direction";
					text[20] = "Endlag 4 -> 8";
					text[21] = "Landing lag 8 -> 6";
					text[22] = "";
					text[23] = "[Continued in v9.2 due to lack of space]";
					nooflines = 24;
					textwidth = 880;
					break
				case 2:
					text[0] = "Fair - Middle hitbox now sends outwards like the top hit, bottom hit spike slightly stronger to";
					text[1] = "compensate for being harder to hit";
					text[2] = "Endlag 9 -> 12";
					text[3] = "";
					text[4] = "BAir1 has less disjoint";
					text[5] = "BKB 6 -> 7";
					text[6] = "KBS 0.9 -> 0.75";
					text[7] = "Endlag 10 > 13";
					text[8] = "Changed SFX to be more clear that it is a strong move";
					text[9] = "";
					text[10] = "DAir bkb 3 -> 4";
					text[11] = "DAir no longer grabs grounded opponents";
					text[12] = "DAir forces flinch on the first few hits so they stay on the ground";
					text[13] = "";
					text[14] = "Uair - Reduced both hitbox sizes horizontally and vertically, repositioned to better match animation";
					text[15] = "Extended hurtbox on tail animation to reduce vertical disjoint";
					text[16] = "Reduced animation time to make the move finish earlier, controlling space for less time";
					text[17] = "Endlag 6 -> 9, Move is now 1 frame faster overall";
					text[18] = "";
					text[19] = "Added this Changelog in the menu";
					text[20] = "";
					text[21] = "Cleaned up overall code to run faster";
					nooflines = 22;
					textwidth = 750;
					break;
				case 3:
					text[0] = "Spiking FAir Hitstun Multiplier 1.1 -> 1.0";
					text[1] = "";
					text[2] = "Parrying will no longer give Fakie";
					text[3] = "";
					text[4] = "Fakie USpecial only locks onto opponents in hitstun";
					text[5] = "";
					text[6] = "Added a few more items to the training menu for balance";
					nooflines = 7;
					textwidth = 450;
					break;
				case 4:
					text[0] = "Removed anti time break code for opponents in parry stun";
					text[1] = "Since Fakie no longer activates on parry";
					text[2] = "";
					text[3] = "NSpecial now has an effect when you increase the charge level";
					text[4] = "Nspecial shoots 1 frame later if hit with charge hitbox";
					text[5] = "Because Rivals doesn't like executing hitboxes in consecutive frames";
					text[6] = "This means you can hit with the charge AND the projectile together";
					text[7] = "";
					text[8] = "FSpecial cooldown 40 -> 55 frames";
					text[9] = "";
					text[10] = "DSpecial clones lifetime 3 -> 2.5 secs";
					text[11] = "";
					text[12] = "Added 2 more time break shapes: Triangle and Spike";
					text[13] = "Available for Vaporwave and Esix";
					text[14] = "";
					text[15] = "Fixed the CSS alt names";
					text[16] = "";
					text[17] = "Added an option to remove the taunt menu";
					text[18] = "";
					text[19] = "Changed Hikaru's voice files";
					text[20] = "";
					text[21] = "Bossfight Rock pillars will no longer hit when descending";
					nooflines = 22;
					textwidth = 530;
					break;
				case 5:
					text[0] = "Added get_char_info for CSS draw";
					text[1] = "";
					text[2] = "Fixed missing sound effects for DSpecial cancel";
					text[3] = "";
					text[4] = "Added a Paw hit effect for some sweetspots";
					text[5] = "";
					text[6] = "Added 1 more tutorial for FTILT to DSPEC";
					nooflines = 7;
					textwidth = 370;
					break;
				case 6:
					text[0] = "Moved some stuff in the CSS";
					text[1] = "Fakie NSpecial is used by holding Special";
					text[2] = "Fakie FSpecial now deals Time Stop";
					text[3] = "Fakie USpecial now homes in when you point your joystick at the opponent";
					text[4] = "USpecial now has a teleport effect";
					text[5] = "Added Base Runes";
					text[6] = "Added a third circle for Time Break";
					text[7] = "Time Break now only activates on Galaxy";
					text[8] = "More Hitpause on boosted Jab 3";
					nooflines = 9;
					textwidth = 550;
					break;
				case 7:
					text[0] = "2 new runes";
					text[1] = "This is to prevent infinites in rune matches.";
					text[2] = "";
					text[3] = "You can change the direction you're facing in Fakie USpecial right before you transform";
					text[4] = "";
					text[5] = "Replaced Toriel alt with Asriel alt (Rainbow skin)";
					text[6] = "Added a mute bg option in the tutorial menu";
					text[7] = "Added 2 new tech tutorials";
					text[8] = "Added visual effects for Jab3, USpecial, and Air Dodge";
					text[9] = "";
					text[10] = "Jab 1 and 2: Added angle flipper 6";
					text[11] = "";
					text[12] = "Ftilt: Hitstun modifier .7 > .95";
					text[13] = "Increased size of ftilt punch hitbox (this only activates on hit.)";
					text[14] = "Increased size helps avoid interactions where the grab connects, but the punch does not.";
					text[15] = "";
					text[16] = "Utilt: Hitstun multiplier 1.1 > 1.0";
					text[17] = "KBS .6 > .4";
					text[18] = "";
					text[19] = "Fair: Increased knockback scaling of outward sending hit: .6 > .75";
					text[20] = "";
					text[21] = "Bair: Increased startup from 7 > 8 frames. Increased endlag by 2 frames ";
					text[22] = "(can no longer do two bairs in one fullhop)";
					text[23] = "";
					text[24] = "[Continued in v9.8 due to lack of space]";
					nooflines = 25;
					textwidth = 700;
					break;
				case 8:
					text[0] = "Fstrong: Increased BKB 6 > 7. Increased KBS .9 > 1.0";
					text[1] = "Increased Fakie BKB 8 > 9, Fakie KBS 1.0 > 1.1.";
					text[2] = "Reduced damage of fakie fstrong 22 > 15, normal fstrong 12 > 10";
					text[3] = "Changed angle from 35 > 40";
					text[4] = "";
					text[5] = "Dstrong: Increased BKB 7 > 8. Increased damage 12 > 14. Move also sucks. Slight buff.";
					text[6] = "Reduced fakie dstrong damage from 20 > 18, increased fakie BKB 9 > 10";
					text[7] = "Increased normal dstrong damage 9 > 12";
					text[8] = "";
					text[9] = "Ustrong: Sweetspot decreased KBS 1.2 > 1.1, hitstun multiplier 1.2 > 1.0";
					text[10] = "Sourspot decreased BKB 7 > 6, increased KBS .8 > 1.1";
					text[11] = "Increased Fakie BKB 9 > 9.5";
					text[12] = "Reduce damage of fakie upstrong sweetspot from 25 > 16";
					text[13] = "Fakie sourspot reduced from 17 > 12";
					text[14] = "Reduced damage of normal sweet upstrong 13 > 12";
					text[15] = "";
					text[16] = "Fspecial: Reduced fakie fspecial BKB 10 > 8";
					text[17] = "Reduced fakie hitstun multiplier 1.3 > 1.0";
					text[18] = "Increased fakie KBS .9 > 1.1";
					text[19] = "Holding down Taunt when landing the sweetspot will play the taunt sfx";
					text[20] = "";
					text[21] = "Uspecial: Fakie uspecial no longer requires you to hold down Special to home in";
					nooflines = 22;
					textwidth = 640;
					break;
				case 9:
					text[0] = "Added Suzuhime alt with ropy physics visual effect";
					text[1] = "Fixed some AI issues with Fight mode";
					nooflines = 2;
					textwidth = 400;
					break;
				case 10:
					text[0] = "Time break will now kill more consistently";
					text[1] = "Attacks that has hit the clones will now not be able to hit Hikaru";
					text[2] = "Both Rolls now use the same animation";
					text[3] = "Slightly changed some sprites";
					text[4] = "";
					text[5] = "DTilt Damage 9 -> 8";
					text[6] = "";
					text[7] = "NSpecial charge";
					text[8] = "Added a charging animation";
					text[9] = "";
					text[10] = "NSpecial 2";
					text[11] = "Base Knockback 10 -> 8";
					text[12] = "Knockback Scaling 0 -> 0.2";
					text[13] = "";
					text[14] = "NSpecial 3";
					text[15] = "Base Knockback 3 -> 6";
					text[16] = "Knockback Scaling 0.5 -> 0.6";
					text[17] = "Now causes the hit player to shiver";
					nooflines = 18;
					textwidth = 490;
					break;
				case 11:
					text[0] = "Fire and Light effects now will no longer be flipped";
					text[1] = "Replaced Lucario alt with Arcade alt";
					text[2] = "";
					text[3] = "Jab";
					text[4] = "Jab 1 can be cancelled 3 frames earlier";
					text[5] = "Jab 2 can be cancelled 1 frame earlier";
					text[6] = "";
					text[7] = "FAir";
					text[8] = "Changed the animation";
					text[9] = "Increased FAir 1 hitbox width to fit animation";
					text[10] = "";
					text[11] = "DSpecial";
					text[12] = "Fakie DSpec can now be jump cancelled";
					nooflines = 13;
					textwidth = 410;
					break;
				case 12:
					text[0] = "BAir";
					text[1] = "New animation";
					text[2] = "Sourspot is thiccer to fit the new animation";
					text[3] = "";
					text[4] = "NSpecial";
					text[5] = "Charged Void balls now have a special effect";
					text[6] = "Slightly changed the firing anim";
					text[7] = "";
					text[8] = "FAir";
					text[9] = "New animation";
					text[10] = "";
					text[11] = "Fakie Rework";
					text[12] = "When you get hit, it'll take a while before you can get fakie.";
					text[13] = "If you get hit before you get fakie, you will no longer receive fakie.";
					text[14] = "";
					text[15] = "Clones";
					text[16] = "Due to the rework, clones now last 5 seconds instead of 2.5";
					text[17] = "";
					text[18] = "General Bugs";
					text[19] = "Probably fixed the hit effect crashes";
					nooflines = 20;
					textwidth = 520;
					break;
				case 13:
					text[0] = "New Portrait";
					text[1] = "Get stickbugged lol";
					text[2] = "";
					text[3] = "Bugfix for FTilt not grabbing on the second frame";
					text[4] = "Bugfix for DAir not losing speed after hitting grounded opponents";
					text[5] = "";
					text[6] = "Removed hitpause on Fakie USpec";
					text[7] = "";
					text[8] = "NSpec 3 extra hitpause 26 -> 30 due to KB increase";
					nooflines = 9;
					textwidth = 490;
					break;
				case 14:
					text[0] = "Bugfix for NSpec Stick Buffer";
					text[1] = "Bugfix for Outline Colours";
					text[2] = "";
					text[3] = "Slightly toned down Gameboy alt colours";
					text[4] = "";
					text[5] = "Touched up on DAir animation";
					text[6] = "Gave BAir animation smears";
					text[7] = "";
					text[8] = "Added Shield in taunt menu to exit";
					nooflines = 9;
					textwidth = 320;
					break;
				case 15:
					text[0] = "New Jab";
					text[1] = "Touched up on NAir animation";
					text[2] = "Touched up on FTilt animation";
					text[3] = "Added some hurt sprites";
					text[4] = "";
					text[5] = "Added Folet";
					text[6] = "Added a Fakie consume effect";
					text[7] = "Fire and Light now have a disappear effect";
					text[8] = "";
					text[9] = "Bugfix for getting parried with Void Ball Charge";
					text[10] = "Bugfix for Void Ball Charge hitbox spawning";
					text[11] = "Bugfix for not resetting FStrong scaling after fakie";
					text[12] = "";
					text[13] = "Fakie FStrong Scaling 1.1 -> 1.2";
					text[14] = "";
					text[15] = "UTilt Startup reduced by 1 frame";
					text[16] = "";
					text[17] = "FTilt animation aligned with hitboxes";
					text[18] = "";
					text[19] = "USpec Prat land time 17 -> 13";
					text[20] = "(FSpec Prat land is still 21)";
					nooflines = 21;
					textwidth = 400;
					break;
				case 16:
					text[0] = "New colour selector alt!";
					text[1] = "Added 63 new alts.";
					text[2] = "Select them with binary";
					text[3] = "";
					text[4] = "Attack = 1";
					text[5] = "Special = 2";
					text[6] = "Strong = 4";
					text[7] = "Jump = 8";
					text[8] = "Shield = 16";
					text[9] = "Taunt = 32";
					text[10] = "";
					text[11] = "Hold down the buttons and see which alt you get";
					text[12] = "You can preview them in the Playtest stage on the CSS";
					text[13] = "";
					text[14] = "Slightly touched up DTilt and NSpecial animation";
					text[15] = "Added new hit effects";
					nooflines = 16;
					textwidth = 420;
					break;
				case 17:
					text[0] = "Slightly touched up animations";
					text[1] = "Touched up css draw";
					text[2] = "";
					text[3] = "FSpecial SS increased bkb by 0.5";
					text[4] = "";
					text[5] = "Crouch now moves the overhead HUD";
					nooflines = 6;
					textwidth = 280;
					break;
				case 18:
					text[0] = "Bugfix for UAir2 drift";
					text[1] = "FSpec1 hit effect changed to burst effect";
					nooflines = 2;
					textwidth = 350;
					break;
				case 19:
					text[0] = "Added support for small_sprites";
					text[1] = "Changed aerial NSpec cancel from airdodge to normal cancel";
					text[2] = "";
					text[3] = "Hikaru clones can no longer disable projectiles";
					text[4] = "Hikaru clones fakie transfer timer 100 frames -> 120 frames";
					text[5] = "Hikaru clone lifetime 5 secs -> 4 secs";
					text[6] = "";
					text[7] = "FTilt and BAir animations redone by Regina Reforged (Thanks!)";
					text[8] = "";
					text[9] = "Added Shrine of Light discord link";
					nooflines = 10;
					textwidth = 470;
					break;
				case 20:
					text[0] = "Reworked UStrong (New Sprites by Regina Reforged!)";
					text[1] = "Gave changed horizontal speed of DAttack for better DACUS with new UStrong";
					text[2] = "";
					text[3] = "UAir1 can now be hitfalled";
					text[4] = "This is so that the Raindrop tech can be executed more easily";
					text[5] = "";
					text[6] = "FTilt ground friction 0.5 -> 0.4";
					text[7] = "This is so that Wavedash FTilt can cover more distance";
					text[8] = "";
					text[9] = "Reworked NSpecial slightly (New Sprites by Regina Reforged!)";
					text[10] = "Startup 10 -> 15";
					text[11] = "NSpec1 Damage 2 -> 4";
					text[12] = "NSpec2 Damage 6 -> 8";
					text[13] = "NSpec3 Damage 9 -> 12";
					text[14] = "NSpec4 Extra Hitpause 0 -> 8";
					text[15] = "NSpec5 Extra Hitpause 0 -> 12";
					text[16] = "NSpec6 Extra Hitpause 0 -> 20";
					text[17] = "NSpec1-2 Chargetime 30 -> 20";
					text[18] = "NSpec2-3 Chargetime 50 -> 40";
					text[19] = "";
					text[20] = "Clone Lifetime 4 seconds -> 2 seconds";
					text[21] = "Clone Fakie transfer timer 120 frames -> 200 frames";
					text[22] = "Clone Fakie transfer sprite opacity 0.7 -> 0.4";
					text[23] = "";
					text[24] = "Added dust particles to some attacks";
					nooflines = 25;
					textwidth = 600;
					break;
				case 21:
					text[0] = "Removed Gattling";
					text[1] = "";
					text[2] = "UStrong endlag forces you to not drift";
					text[3] = "UStrong sourspot no longer has angle flipper 3";
					text[4] = "UStrong sourspot no longer has 0.01 drift multiplier";
					text[5] = "";
					text[6] = "Added Final Smash Buddy support";
					text[7] = "Added Final Smash to Taunt Menu";
					text[8] = "";
					text[9] = "Changed CSS to original CSS template";
					text[10] = "";
					text[11] = "Added Trans flag outline to Transcend alt";
					nooflines = 12;
					textwidth = 400;
					break;
				case 22:
					text[0] = "FAir Non-spike hitboxes are now techable";
					text[1] = "";
					text[2] = "Bugfixes:";
					text[3] = "";
					text[4] = "Fakie USpec no longer homes in on dead players";
					text[5] = "";
					text[6] = "FSpec can now be parried";
					text[7] = "";
					text[8] = "Hikaru clones no longer activates on 0 damage hitboxes";
					nooflines = 9;
					textwidth = 420;
					break;
			}
			break;
	}
	DrawTutBlockExt(nooflines, xpos, ypos, textwidth);
	DrawTutTextExt(nooflines, text, xpos, ypos);
}

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);
