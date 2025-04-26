if(custom_clone)
	return;

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_EXTRA_2)
{
	if(window == 1 && window_timer == 1)
	{
		nctimer = 0;
		terminalTauntAnimStartDelayTimer = 0;
		nPlayerId = noone;
		tcoSelectedArt = noone;
		tcoVanillaChar = 0;
	}

	if(window > 1 && window < 7)
	{
		tauntIsOnWaitFrame = window == 4 && window_timer == 160
						|| window == 5 && window_timer == 125
						|| window == 5 && window_timer == 160
						|| window == 6 && window_timer == 60;

		
		//tco / toon link / miiverse compatability copy
		if(window == 4 && window_timer == 1)
		{
			var shortest_dist = 9999;
			var shortest_id = noone;
			with(oPlayer)
			{
				if (player == other.player)
					continue;

				var curr_dist = point_distance(x,y,other.x,other.y);
				if (curr_dist < shortest_dist)
				{
					shortest_dist = curr_dist;
					shortest_id = id;
				}
			}
			if(shortest_id == noone)
				paperPlayerId = id;
			else
				paperPlayerId = shortest_id;

			tcoSelectedArt = noone;
			tcoVanillaChar = 0;
			paperSprite = noone;
			paperSpriteBackground = sprite_get("compatability_tcoart_paper");
			paperIndex = 0;
			paperType = "tco";
			var possiblePaperTypes = ds_list_create();
			with(shortest_id)
			{
				if(variable_instance_exists(self, "tcoart")
				|| select == clamp(select, 2, 15)
				|| url == 1865940669 //Sandbert
				|| url == 1866016173) //Guadua
					ds_list_add(possiblePaperTypes, "tco");
				if(variable_instance_exists(self, "toonlink_photo"))
					ds_list_add(possiblePaperTypes, "toonlink");
				if(variable_instance_exists(self, "miiverse_post"))
					ds_list_add(possiblePaperTypes, "miiverse");
			}
			
			terminalImageSuccess = ds_list_size(possiblePaperTypes) > 0;
			
			if(!terminalImageSuccess)
			{
				paperType = "tco";
				tcoSelectedArt = tcoart;//spy tco as backup
			}
			else
			{
	            var randPaper = random_func(0, ds_list_size(possiblePaperTypes), true);
				paperType = possiblePaperTypes[|randPaper];

				if(paperType == "tco")
				{
					with(shortest_id)
					{
						if(variable_instance_exists(self, "tcoart"))
						{
							other.tcoVanillaChar = 0;
							other.tcoSelectedArt = tcoart;
							other.paperSprite = tcoart;
						}
						if(select == clamp(select, 2, 15))
							other.tcoVanillaChar = select - 1;
						if (url == 1865940669) //Sandbert
							other.tcoVanillaChar = 15;
						if (url == 1866016173) //Guadua
							other.tcoVanillaChar = 16;
					}
				}
				if(paperType == "toonlink")
				{
					with(shortest_id)
					{
						other.paperType = "toonlink";
						other.paperSpriteBackground = toonlink_photo;

						other.pictophotonum2 = 0;
						if("toonlink_photo2" in self){ //check for custom toon link drawing
							if(toonlink_photo2 > 12){
								other.paperSprite = toonlink_photo2;
								other.pictophotonum2 = 100;
							}else{
								other.paperSprite = noone;
								other.pictophotonum2 = toonlink_photo2;
							}
						}else{ //nothing found
							other.paperSprite = noone;other.pictophotonum2 = 0;
						}
					}
				}
				if(paperType == "miiverse")
				{
					with(shortest_id)
					{
						other.paperType = "miiverse";
						other.paperSprite = miiverse_post;
					}
				}
			}

			
			if(paperType == "toonlink")
			{
				if(paperSprite == noone)
					paperSprite = sprite_get("pictophotoTL");
				paperIndex = pictophotonum2;
			}
			else if(paperType == "miiverse")
			{
				post_num = random_func_2(x%200,sprite_get_number(paperSprite),true);
			}
			else if(paperType == "tco")
			{
				if(tcoVanillaChar == 0 && tcoSelectedArt != noone)
					paperSprite = tcoSelectedArt;
				else
				{
					paperSprite = sprite_get("compatability_tcoart_original");
					paperIndex = tcoVanillaChar;
				}
			}

			ds_list_destroy(possiblePaperTypes);
		}

		//spamton compatability copy (credits to: @mallow @reigamogus @Ruber @SAKK @BernardO)
		if(window == 5)
		{
			if(window_timer == 1)
			{
				draw_ad1 = false;
				draw_ad2 = false;
				draw_ad3 = false;
				for (var i = 0; i < array_length(ad_indexes); i++) {
					ad_indexes[i] = random_func(i, 100, true);
					ad_rarity[i] = random_func(i+4, 20, true);
				}
				ad_extra = []
				with oPlayer if ("spam_ad" in self) {
					array_push(other.ad_extra, spam_ad)
					// if(other.player == self.player)
					// {
						array_push(other.ad_extra, spam_ad)
						array_push(other.ad_extra, spam_ad)//boost custom ad likelihood
					// }
				}
				ad_opp_index = random_func(7, array_length(ad_extra), true)
			}

			if(window_timer == 2)
				draw_ad1 = true;
			// if(window_timer == 60)
			// 	draw_ad2 = true;
			if(window_timer == 135)//126)
				draw_ad2 = true;
			if(window_timer == 181)//161)
				draw_ad3 = true;
		}

		//cancel taunt
		if(!tauntIsOnWaitFrame && (taunt_pressed || attack_pressed || special_pressed || jump_pressed || shield_pressed))
		{
			window = 7;
			window_timer = 0;
		}
		
		if(window == 2 || (window == 3 && terminalOption == "NONE"))
		{
			if(down_down && window != 3)
			{
				terminalOption = "NONE";
				window = 3;
				window_timer = 0;
			}
				
			if(up_down || left_down || right_down)
			{
				if(up_down)
					terminalOption = "TEXT";
				if(left_down)
					terminalOption = "IMAGE";
				if(right_down)
					terminalOption = "ADVERT";

				//allow skipping initial normal typing before action when already typing, except for text which needs the typing
				if(terminalOption == "TEXT")
					window_timer = 0;
				else
					window_timer = window == 2 ? 0 : get_window_value(attack, 3, AG_WINDOW_LENGTH)-2;
				window = 3;
			}
		}
		
		if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
		{
			if(terminalOption == "NONE")
				window = 2;
			if(terminalOption == "IMAGE")
				window = 4;
			if(terminalOption == "ADVERT")
				window = 5;
			if(terminalOption == "TEXT")
				window = 6;
			window_timer = 0;
		}
		
		if(tauntIsOnWaitFrame)
		{
			window_timer -= 1;
			if(up_down || left_down || right_down || down_down)
				window_timer++;
		}

		if(window > 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
		{
			window = 2;
			window_timer = 0;
		}
	}

	if(((window == 3 && window_timer > 20) || window == 6))
	{
		//spy & agent N Compatability
		nctimer += 1
		if nctimer == 1
		{
			if nPlayerId == noone
			{
				var shortest_dist = 9999;
				var shortest_id = noone;
				
				with (asset_get("oPlayer"))
				{
					if (player != other.player)
					{
						var curr_dist = point_distance(x,y,other.x,other.y);
						if (curr_dist < shortest_dist)
						{
							shortest_dist = curr_dist;
							shortest_id = id;
						}
					}
				}
				nPlayerId = shortest_id	
			}	
			if(nPlayerId == noone)
				nPlayerId = id;
		}
	}
	else
		nctimer = 0;
	
	inTerminalTauntMenu = (window == 1 && window_timer > 32) || (window > 1 && window < 7) || (window == 7 && window_timer < 8);
	if((inTerminalTauntMenu || terminalTauntAnimTimer > 0) && !invis && invisAnimationAlpha == 1 && terminalTauntAnimStartDelayTimer++ > tauntAnimStartDelay && !custom_clone)
	{
		if(inTerminalTauntMenu)
		{
			terminalTauntAnimTimer++;
			terminalTauntAnimTimer = min(terminalTauntAnimTimer, tauntAnimDur);
		}
		else if(terminalTauntAnimTimer > 0)
		{
			terminalTauntAnimTimer--;
			terminalTauntAnimTimer = max(terminalTauntAnimTimer, 0);
		}
	}
	else
		terminalTauntAnimTimer = 0;
}

if(attack == AT_DATTACK)
{
	if(!hitpause && !free)
	{
		if(window == 2 && window_timer == 1)
			spawn_base_dust(x+32*spr_dir, y, "dash_start");
		if(((window == 2 && window_timer > 1) || window == 3) && window_timer % 4 == 0)
			spawn_base_dust(x-10*spr_dir, y, "dash");
	}
	
	if(window == 4 || (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1))
	{
		if(up_pressed || attack_pressed || special_pressed || jump_pressed || shield_pressed || taunt_pressed || (strong_down && !strong_down_last) )
		{
			window++;
			if(sprite_index == sprite_get("boxWalk"))
				window_timer = 4;
			else
				window_timer = 0;
			if(window == 5)
				sound_play(sound_get("cardboard-box-up"));
		}
	}

	if(window == 4)
		hurtboxID.sprite_index = sprite_get("box_box");
	
	if(window == 4 && !free)
	{
		var moveDir = 0;
		if(right_down)
			moveDir++;
		if(left_down)
			moveDir--;
		hsp = moveDir * 1.75;
		go_through = true;
	}
}

if(attack == AT_DAIR)
{
	// if(down_down)
	// 	fall_through = true;
	can_fast_fall = false;

	if(window == 1)
		dairHitPlayer = false;
	if(((!attack_down && !strong_down) || dairHitPlayer) && window == 3 && window_timer > 7)
	{
		window_timer = 0;
		window++;
	}
	if(has_hit && !dairHitPlayer)
	{
		dairHitPlayer = true;
		old_vsp = -8;
		old_hsp = clamp(-hit_player_obj.old_hsp*0.5, -5, 5);
	}
}

if(attack == AT_FTILT)
{
	if(window == 1 && window_timer == 1)
		backstabSuccess = noone;
		
	if(backstabSuccess == noone)
	{
	    with(oPlayer)
			spr_dir_last_bs = spr_dir;
	}
}


if (attack == AT_DSPECIAL)
{
	soft_armor = 6;
}

if (attack == AT_USTRONG)
{
	if(!invis)
	{
		if(window == 1 && window_timer == 4)
			ustrongChargeSfx = sound_play(sound_get("ustrongCharge"), false, noone, 1);
		if(window > get_attack_value(attack, AG_STRONG_CHARGE_WINDOW))
			sound_stop(ustrongChargeSfx);
	}
}
else
    sound_stop(ustrongChargeSfx);

if (attack == AT_USPECIAL)
{
	can_wall_jump = window > 4;
	can_fast_fall = false;
	if(down_down)
		fall_through = true;
		
    if (window == 1 && window_timer == 1)
    {
    	if(free)
		{
			vsp = min(vsp, 2);
			vsp = max(vsp, -4);
		}
        times_through = 0;
		descending = false;
    }
    if (window == 4 && window_timer == 1)
	{
		vsp = -8;
		spawn_base_dust(x, y, free ? "doublejump" : "jump");
	}
    if (window == 5)
    {
    	var total_timer = window_timer-1 + times_through * get_window_value(attack, window, AG_WINDOW_LENGTH);
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
            times_through++;
        	
        	
        if(vsp > 0)
        	descending = true;
        	
    	if(descending)
    	{
	        if (down_down)
	            vsp += 0.6;
	        if (up_down)
	            vsp -= 0.3;
	            
	        var fly_dir = point_direction(0,0,hsp,vsp);
	        var maxVsp = 6;
	        if (vsp > maxVsp)
	            vsp = lengthdir_y(maxVsp, fly_dir);
	        if (vsp < 0)
	            vsp = 3;
    	}
		else
		{
	        if (down_down)
	            vsp += 0.1;
		}
        
        
        if(total_timer > 10)
        {
        	// can_jump = true;
        	//can_attack = true;//TODO: allow this but only once?
	        if (!free || special_pressed || attack_pressed || shield_pressed)
	        {
	            window = 6;
	            window_timer = 0;
	        }
        }
        // if (special_pressed && times_through > 0){
        //     window = 6;
        //     window_timer = 0;
        // }
        // if (shield_pressed){
        //     window = 4;
        //     window_timer = 0;
        // }
    }
    // if (window > 6 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    //     window++;
    //     window_timer = 0;
    // }
    if(!free && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) * get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) * 1.5)
	{
		state = PS_IDLE;//PS_PRATLAND;
		state_timer = 0;
	}
}


if(attack == AT_FSPECIAL)
{
	if(window == 1 && window_timer == 1)
	{
		shotCounter = 0;
		didShootCrit = false;
		set_up_fspecial();
	}

	if(special_down && window > 2 &&
		(joy_pad_idle
		|| ((spr_dir == 1 && (joy_dir > 270+45 || joy_dir < 90-45))
		|| (spr_dir == -1 && (joy_dir < 270-45 && joy_dir > 90+45)))))
		continueShooting = true;

	if(continueShooting && window == 4 && window_timer > get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH)-1 && (shotCounter < 6 || (variable_instance_exists(self, "potential_unlocked") && potential_unlocked)))
	{
		set_up_fspecial();
		window = 2;
		window_timer = 0;
	}
	if(window == 2 && window_timer == get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH)-1)
	{
		var damageVfx = spawn_hit_fx(x+42*spr_dir, y-62, 14);//TODO: make custom muzzles
		damageVfx.draw_angle = random_func(0, 90, false) * spr_dir - 45 * spr_dir;
		// damageVfx.image_speed = 10;
	}
}
else
	shotCounter = 0;


#define set_up_fspecial()
{
	continueShooting = false;
	shotCounter++;

	if(crits > 0)
	{
		crits--;
		didShootCrit = true;
		
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletProjectileCrit"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("crit_hit"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);

		// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_01_crit"));
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_0"+string(random_func(0, 3, true)+1)+"_crit"));
	}
	else
	{
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletProjectile"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("hitsound"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);

		// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_01"));
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_0"+string(random_func(0, 3, true)+1)));
	}
	
	if(didShootCrit)
	{
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
	}
	else
	{
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
	}

	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
	if(shotCounter == 6 && (!variable_instance_exists(self, "potential_unlocked") || !potential_unlocked))
	{
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
	}
}

//https://github.com/SupersonicNK/roa-workshop-templates/blob/master/snippets/spawn_base_dust.md
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;