//B - Reversals
switch (attack)
{
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	case AT_JAB:
	case 49:
	    trigger_b_reverse();
		break;
}

if (!hitstop) {

if (attack != AT_DTILT || o_copyplayer != noone) reset_hitbox_value(AT_DTILT, 1, HG_TECHABLE);
if (attack != AT_DSPECIAL_AIR && attack != AT_DSPECIAL_2) dspecsize = 0;

switch (attack)
{
	case AT_NSPECIAL:
	{
		var chargetime = 20;
		var chargetime2 = 40;
	    if (godmode)
		{
	        as_charge = 2;
	        if (window == 8 && special_down) window = 1;
	    }
		if (runeJ && !as_charge) as_charge = 1;
		if (runeB)
		{
			chargetime = 10;
			chargetime2 = 20;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, chargetime2 - 1);
		}
		else
		{
			reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME);
		}
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					as_reverse = false;
					clear_button_buffer(PC_SPECIAL_PRESSED);
					reset_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX);
				}
				if (!as_reverse && (spr_dir==1?left_down:right_down))
				{
					hsp *= -1.15;
					spr_dir = -spr_dir;
					as_reverse = true;
					if (hsp != 0) techdone[4] = true;
				}
				if (window_timer >= get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) || (aura && !special_down))
				{
					techdone[5] = !special_down && aura;
				    if (aura && window_timer >= get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH))
					{
						buffcolour = true;
						set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, theirAnim);
						set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, theirAnim);
						if (transProj)
						{
							set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, theirAnimSpeed);
							set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, transform_effect);
							set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
							set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_owl4"));
							set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_owl4"));
						}
				        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, curse_effect);
				        set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -100);
						set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
				        aura = in_field;
				        window = 7;
						window_timer = 0;
				    }
				    else
					{
						reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE);
						reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK);
						reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED);
						reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT);		
						reset_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y);
				        reset_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT);
				        reset_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET);
						reset_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT);
						reset_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX);
						reset_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX);
						window = as_charge + 2;
						window_timer = as_frame;
						create_hitbox(AT_NSPECIAL, window + 2, x, y);
				    }
				}
				break;
			case 2:
			case 3:
				if (window_timer >= (window==2?chargetime:chargetime2))
				{
				    ++as_charge;
				    ++window;
				    window_timer = 0;
					as_frame = 0;
					spawn_hit_fx(x + 45 * spr_dir,y-31,charge_effect);
				}
			case 4:
				as_charging = true;
				as_frame = window_timer;
				fall_through = down_down;
				//if (state_timer % 20 == 0) spawn_hit_fx(x + 45 * spr_dir,y-31,charge_effect);
                if (state_timer % 16 == 0 && !free) spawn_base_dust(x, y, "nspec", spr_dir);
				if (down_down && !freemd && !free)
				{
					free = true;
					techdone[6] = true;
				}
				if (special_pressed || attack_pressed || left_stick_pressed || right_stick_pressed || as_fire)
				{
					if (has_hit_player && !as_fire) // shoot 1 frame later if hit with asc because Dan
						as_fire = true;
					else
					{
						as_fire = false;
						as_charging = false;
						as_charge = 0;
						as_frame = 0;
						window += 3;
						window_timer = 0;
						destroy_hitboxes();
						if (spr_dir==1?left_stick_down:right_stick_down) spr_dir = -spr_dir;
						clear_button_buffer( PC_ATTACK_PRESSED );
						clear_button_buffer( PC_SPECIAL_PRESSED );
						clear_button_buffer( PC_LEFT_STICK_PRESSED );
						clear_button_buffer( PC_RIGHT_STICK_PRESSED );
					}
				}
				else if (!free && (left_pressed || right_pressed))
				{
					as_charging = false;
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
					set_state((spr_dir==1?right_pressed:left_pressed)?PS_ROLL_FORWARD:PS_ROLL_BACKWARD);
				}
				else if (shield_pressed)
				{
					as_charging = false;
					window = 8;
					window_timer = 0;
					clear_button_buffer( PC_SHIELD_PRESSED );
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
				}
				else if (jump_pressed || (tap_jump_pressed && can_tap_jump()))
				{
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
				    if (free)
					{
						as_charging = false;
				        set_state(PS_IDLE_AIR);
				    }
				    else if (has_hit_player)
					{
						as_charging = false;
				        set_state(PS_IDLE);
						techdone[3] = true;
				    }
					else
					{
						as_charging = false;
						window = 8;
						window_timer = 0;
					}
				}
				break;
			case 5:
			case 6:
			case 7:
				//curationArtTeam();
				if (window_timer == 1)
				{
					if (aura && transProj)
					{
						spawn_hit_fx(x + 48 * spr_dir,y,transform_effect);
					}
					else
					{
						var owo = spawn_hit_fx(x+38*spr_dir,y-30,blast_effect); owo.depth = -10;
					}
				}
				else if (window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH))
				{
					switch (window)
					{
					case 6:
						set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 5);
						break;
					case 7:
						set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 6);
						break;
					default:
						break;
					}
					window = 8;
					window_timer = 0;
				}
				break;
			case 8:
				if (window_timer == get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH))
					reset_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH);
				break;
		}
	}
	break;
	
	case AT_FSPECIAL:
	{
	    can_fast_fall = false;
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					spawn_base_dust(x-0*spr_dir, y, "nspec", spr_dir);
					FSpecSweetspot = false;
					if (aura)
					{
						buffcolour = true;
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
					}
					else
						reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX);
					if (runeM || aura)
						set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
					else
						reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE);
			    }
				break;
			case 3:
				if (!(window_timer%2)) spawn_hit_fx(x, y - 24, 3);
				if (window_timer == 1) minmin();
				if (window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH))
				{
				    if (aura)
				    {
				        set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, curse_effect);
				        set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -100);
				        set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 18);
						set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8.5);
						set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.1);
				    }
				    else
				    {
				        reset_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT);
				        reset_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET);
				        reset_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE);
						reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE);
						reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
						reset_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
				    }
					spawn_hit_fx(x + spr_dir * 30, y - 24, 148);
				}
			    draw_indicator = false;
				has_hit = false;
				break;
			case 4:
			    if (window_timer == 1) reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED);
				if (has_hit)
				{
					has_hit = false;
					set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
					move_cooldown[AT_FSPECIAL] = (aura?0:fspeccool);
					FSpecSweetspot = aura;
					aura = in_field;
				}
				break;
			case 5:
				if (aura) aura = in_field;
				if (!free) set_state((get_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE) == 7)?PS_PRATLAND:PS_LAND);
				break;
		}
		can_wall_jump = (window >= 3);
	    if (up_pressed)
	        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -18);
	    else if (down_pressed)
	        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -6);
	}
	break;
	
	case AT_USPECIAL:
	{
		can_fast_fall = false;
		if (floatjumptime) floatjumptime = ((window == 1 || window == 2)?floatjumptime+1:0);
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					spawn_base_dust(x, y-32, "smoke", spr_dir);
					reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
					//through_stage = false;
					origfree = free;
					if (aura)
					{
						buffcolour = true;
						set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
					}
					else
						reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX);
				}
				break;
			case 2:
			{
				draw_indicator = false;
				fall_through = special_down;
				//spawn_hit_fx(x-80*sin(window_timer/get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)*pi*spr_dir),y-30+(80*sin(window_timer/get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)*pi)),trail_effect);
				spawn_hit_fx(x,y-30,trail_effect);
				if (window_timer == 1)
				{
					var ttack = b_infamous?AT_DTHROW:AT_DSPECIAL;
					var ttacknum = b_infamous?1:2;
				    create_hitbox(ttack, ttacknum, x, y - 32);
					org_x = x;
					org_y = y;
				}
				else if (!fall_through && !free && origfree)
				{
					window = 3;
					window_timer = 0;
					hsp = 0;
					vsp = 1;
					if (runeH) set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
				}
				var distancetravell = (runeE?17:15);
				if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH))
				{
					if (free
						&& aura
						&& (counterid.state_cat == SC_HITSTUN || uspec_timer > 0)
						&& canTele(org_x, org_y, tele_x, tele_y, distancetravell, 60)
						&& get_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS) != 0)
					{
				        x = get_instance_x(counterid);
				        y = get_instance_y(counterid) - 45;
				        var spr_temp = spr_dir;
				        spr_dir = 1;
				        create_hitbox(AT_USPECIAL, 1, x, y);
				        spr_dir = spr_temp;
						hsp = 0;
						vsp = 0;
				    }
				}
				else
				{
				    if (window_timer == 2)
					{
				        if (!joy_pad_idle)
						{
				            tele_x = lengthdir_x(distancetravell, joy_dir);
				            tele_y = lengthdir_y(distancetravell, joy_dir);
				        }
				        else
						{
				            tele_x = 0;
				            tele_y = -distancetravell;
				        }
						//if (up_down || joy_pad_idle || beast_deity) through_stage = true;
						//teleeffect(distancetravell);
				    }
				    hsp = tele_x;
				    vsp = tele_y;
				}
			}
			break;
			case 3:
			{
				can_wall_jump = true;
			    hsp = hsp * 0.8;
			    vsp = vsp * 0.8;
				invincible = aura;
				//if (through_stage && window_timer == 1)
				//{
				//	var stage_x = get_stage_data( SD_X_POS );
				//	var stage_y = get_stage_data( SD_Y_POS );
				//	if (stage_y == 0) stage_y = topcustom;
				//	if ((x > stage_x && x < room_width - stage_x) && y > stage_y) y = stage_y;
				//}
				if (aura && window_timer == 6)
				{
					//if (!through_stage) set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
					if (!free) move_cooldown[AT_USPECIAL] = 50;
					else
					{
						aura = in_field;
						buffcolour = false;
						if (special_down && !has_hit_player)
						{
							window = 1;
							window_timer = 0;
							techdone[2] = true;
						}
						else
						{
							transformtime = 20;
							transformeffect = true;
								var tempdir = spr_dir;
							spr_dir = left_down?-1:right_down?1:spr_dir;
								techdone[1] = tempdir!=spr_dir;
							set_attack(AT_EXTRA_1);
							CorrectHurtboxes();
						}
					}
				}
			}
			break;
		}
	}
	break;
	
	case AT_DSPECIAL_2:
	case AT_DSPECIAL_AIR:
	{
		can_fast_fall = false;
		can_wall_jump = true;
		switch (window)
		{
			case 1:
				if (attack == AT_DSPECIAL_AIR && ffcounter < 4)
				{
					x = ffx;
					y = ffy;
					ffcounter = 0;
				}
				if (window_timer == 1)
				{
					if (runeC) reset_window_value(attack, 2, AG_WINDOW_LENGTH);
					dspeccancel = aura;
					as_reverse = false;
				}
				if (!as_reverse && (spr_dir==1?left_down:right_down))
				{
					hsp *= -1;
					spr_dir = -spr_dir;
					as_reverse = true;
				}
				if (runeC)
				{
					if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) && special_down && dspecsize < 100)
						window_timer = get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1;
					dspecsize = (window_timer == 1)?0:dspecsize+6;
					set_window_value(attack, 2, AG_WINDOW_LENGTH, 10 - get_window_value(attack, 1, AG_WINDOW_LENGTH) + floor(dspecsize/6*1.2));
				}
				break;
			case 2:
			{
				super_armor = true;
				if (runeC) 
				{
					dspecsize = (dspecsize > 0)?dspecsize*0.9:0;
					if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))
						dspecsize = 0;
				}
			    if (window_timer == 1)
				{
					if (!free && !beast_deity)
					{
						killarticles = false;
						instance_create(floor(x), floor(y), "obj_article1");
					}
					move_cooldown[AT_DSPECIAL_2] = 100;
					move_cooldown[AT_DSPECIAL_AIR] = 100;
					djumpTimer = djumpNumOfAfterImages;
					if (!free) spawn_base_dust(x-20*spr_dir, y, "dash_start", spr_dir);
				}
				with (oPlayer)
				{
					if (id != other.id && point_distance( x, y, other.x, other.y ) < other.char_height && other.runeO)
					{
						if (!other.aura)
						{
							other.transformplease = 1;
							other.counterid = self;
						}
						with (other)
						{
							if (runeL)
							{
								killarticles2 = false;
								instance_create(other.x, other.y - 34, "obj_article2");
							}
						}
					}
				}
				if (dspeccancel)
				{
					can_strong = true;
					can_ustrong = true;
					can_attack = true;
					can_special = true;
					can_jump = true;
					dspeccancelled = true;
					dspecsound = true;
				}
			}
			break;
			case 3:
			{
				super_armor = false;
				if (window_timer == 1 && free)
				{
					hsp = 5*spr_dir;
					vsp = 2;
				}
				dspeccancelled = false;
			}
			break;
		}
	}
	break;
	
	case AT_DSPECIAL:
	{
	    can_fast_fall = false;
		switch (window)
		{
			case 1:
				if (godmode
					&& hit_player_obj
					&& get_attack_value( AT_EXTRA_1, AG_NUM_WINDOWS ) != 0)
				{
				    window = 3;
				}
				else
				{
				    floatjumptime = 0;
				    if (window_timer == 1)
					{
				        vsp = 0;
						if (aura)
						{
							buffcolour = true;
							sound_play(asset_get("sfx_forsburn_combust"));
						}
				    }
				    else if (window_timer == (free?5:4)) //frame 5 startup grounded, 6 aerial
					{
				        can_jump = false;
				        super_armor = true;
				        vsp /= 2;
				    }
				}
				break;
			case 2:
			{
			    super_armor = (window_timer <= 10);
			    if (window_timer == 35)
				{
			        window = 6;
			        window_timer = 0;
			    }
			}
			break;
			case 3:
				if (window_timer == 1 && !aura)
					create_hitbox(AT_DSPECIAL, 2, x, y - 32);
				break;
			case 4:
			{
			    draw_indicator = false;
			    if ((godmode || aura) && hit_player_obj)
				{
			        if (!joy_pad_idle)
					{
			            hsp += 2 * lengthdir_x(1, joy_dir);
			            vsp += 2 * lengthdir_y(1, joy_dir);
			        }
					else
					{
			            hsp = 0;
			            vsp = 0;
			        }
			        var fly_dir = point_direction(0,0,hsp,vsp);
			        var fly_dist = point_distance(0,0,hsp,vsp);
			        var max_speed = 10;
			        if (fly_dist > max_speed)
					{
			            hsp = lengthdir_x(max_speed, fly_dir);
			            vsp = lengthdir_y(max_speed, fly_dir);
			        }
			        fall_through = true;
			    }
				if (window_timer == 3)
				{
				    if (aura && hit_player_obj)
					{
				        var temp_x = get_instance_x(hit_player_obj) - x;
				        var temp_y = get_instance_y(hit_player_obj) - y;
				        var spr_temp = spr_dir;
				        spr_dir = 1;
				        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, temp_x);
				        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, temp_y - 25);
				        create_hitbox(AT_DSPECIAL, 1, temp_x, temp_y);
				        spr_dir = spr_temp;
				        hsp = 0;
				        vsp = 0;
				        aura = in_field;
						transformtime = 45;
						transformeffect = true;
				        set_attack(AT_TAUNT_2);
						set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
						CorrectHurtboxes();
						zawarudotime = zawarudomaxtime;
						sound_play(sound_get("time"));
				    }
				    else
				        aura = true;
				}
			}
			break;
			case 5:
			{
			    super_armor = true;
			    hsp = 0;
			    vsp = 0;
			}
			break;
			case 6:
			{
				move_cooldown[AT_DSPECIAL] = (free?30:15);
				if (!free && window_timer == 3 && !beast_deity)
				{
					killarticles = false;
					instance_create(x, y, "obj_article1");
					sound_play(asset_get("sfx_forsburn_split"));
					if (special_down || attack_down)
					{
						set_attack(AT_USPECIAL);
						CorrectHurtboxes();
						window = 2;
						window_timer = 1;
					}
				}
			}
			break;
	    }
	}
	break;
	
	case AT_DTILT:
	if (o_copyplayer == noone)
	{
		if (window == 3 && window_timer == 10) set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
		if (stupidbossbool && has_hit_player && hit_player_obj) // ai stuff?
		{
			if (window == 2 && window_timer == 2)
			{
				hit_player_obj.hsp = 1 * spr_dir;
				hit_player_obj.vsp = -8;
			}
		}
	}
	break;
	
	case AT_JAB:
	if (o_copyplayer == noone)
	{
		switch (window)
		{
			case 1:
				if (window_timer == 1)
				{
					jabby = false;
					reset_window_value(AT_JAB, 8, AG_WINDOW_SFX);
					reset_hitbox_value(AT_JAB, 3, HG_HIT_SFX);
					reset_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE);
					spawn_base_dust(x-20*spr_dir, y, "dash", spr_dir);
				}
				break;
			case 4:
				if (window_timer == 1)
				{
					hsp = 20*spr_dir;
					clear_button_buffer( PC_ATTACK_PRESSED );
					reset_window_value(AT_JAB, 9, AG_WINDOW_HSPEED);
					spawn_base_dust(x+20*spr_dir, y, "dash_start", spr_dir);
				}
				break;
			case 7:
				if (strong_charge == 15)
				{
					jabby = true;
					sound_play(asset_get("sfx_zetter_shine"));
					var owo = spawn_hit_fx(x+2*spr_dir,y-32,shinestar_effect); owo.depth = -10;
				}
				if (!has_hit_player)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					attack_down = false;
				}
				else if (down_down || shield_down)
				{
					clear_button_buffer( PC_ATTACK_PRESSED );
					attack_down = false;
					set_attack(AT_DSPECIAL_2);
					CorrectHurtboxes();
					window = 0;
					window_timer = 0;
					techdone[13] = true;
				}
				break;
			case 8:
				if (window_timer == 1)
				{
					if (jabby)
					{
						minmin();
						techdone[12] = true;
						strong_charge += 170;
						set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
						set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
						set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 30);
						if (has_hit_player)
						{
							sound_play(sound_get("voiceup"));
							set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED, 50);
						}
						spawn_base_dust(x-20*spr_dir, y, "dash_start", spr_dir);
					}
					else
						spawn_base_dust(x-20*spr_dir, y, "dash", spr_dir);
				}
				break;
		}
	}
	break;
	
	case AT_FTILT:
	if (o_copyplayer == noone)
	{
		switch (window)
		{
			case 2:
				if (has_hit_player) grab(40, -1, 4, 4);
				else if (window_timer == get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH))
				{
					window = 6;
					window_timer = 0;
				}
				break;
			case 3:
				if (window_timer == get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH) && has_hit_player)
				{
					minmin();
					grab(40, -1, 1, 1);
					hit_player_obj.spr_dir = -spr_dir;
					//var owo = spawn_hit_fx(x + 50 * spr_dir,y-31,swipe_effect);
					//owo.spr_dir = spr_dir;
					//owo.depth = -10;
				}
				break;
			case 5:
				if (special_pressed && down_down && !move_cooldown[AT_DSPECIAL_2])
				{
					set_attack(AT_DSPECIAL_2);
					CorrectHurtboxes();
					techdone[15] = true;
				}
				break;
		}
	}
	break;
	
	case AT_UAIR:
	if (o_copyplayer == noone)
	{
		fall_through = false;
		switch (window)
		{
			case 2:
				if (has_hit_player)
				{
					if (window_timer < 2)
					{
						move_cooldown[AT_UAIR] = 40;
					}
					else
					{
						vsp = 0;
					}
					grab(0, 0, 6, 0);
				}
				break;
			case 3:
				if (has_hit_player)
					move_cooldown[AT_UAIR] = 0;
				break;
		}
	}
	break;
	
	case AT_FAIR:
	if (o_copyplayer == noone)
	{
		switch (window)
		{
			case 2:
				if (window_timer == 10)
					minmin();
				should_make_shockwave = false;
				can_fast_fall = true;
				break;
		}
	}
	break;
	
	case AT_BAIR:
	if (window == 1 && window_timer == 6)
		minmin();
	break;

	case AT_DAIR:
	if (o_copyplayer == noone)
	{
		can_fast_fall = (window == 4);
		if (window == 2 && window_timer == 1) vsp /= (sign(vsp)==1?2:3);
		else if (window <= 3 && has_hit_player)
		{
			floatjumptime = 0;
			hsp *= 0.97;
			if (hit_player_obj.free)
			{
				grab(0, 28, 3, 2);
				if (y > room_height + 10)
				{
					y = room_height + 10;
					vsp = 0;
				}
			}
		}
	}
	break;
	
	case AT_DATTACK:
	if (o_copyplayer == noone)
	{
		if (has_hit_player && !was_parried)
		{
			if (((special_pressed && down_down) || stupidbossbool) && !move_cooldown[AT_DSPECIAL_2] && !hitpause)
			{
				set_attack(AT_DSPECIAL_2);
				CorrectHurtboxes();
				techdone[14] = true;
			}
		}
	}
	break;
	
	case AT_DTHROW:
	if (o_copyplayer == noone)
	{
		if (window_timer == get_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH))
		{
			instance_create(x, y, "obj_article3");
			spr_dir = infamous_dir;
		}
	}
	break;
	
	case AT_NTHROW:
	if (o_copyplayer == noone)
	{
		draw_indicator = false;
		if (attack_pressed || special_pressed || jump_pressed || !joy_pad_idle || strong_down || (state_timer > 10 && taunt_pressed) || (state_timer > 10 && shield_pressed))
		{
			spr_dir = infamous_dir;
			sound_stop(sound_get("meme"));
			window_timer = get_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH);
		}
		else if (window_timer == get_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH)) window_timer = 0;
		with (oPlayer)
		{
			if ("temp_level" in self && !free)
			{
				if (state != PS_WALK_TURN) set_state(PS_WALK_TURN);
			}
		}
	}
	break;
	
	case AT_TAUNT:
	{
	    if (window_timer == 1)
		{
	        godmode_key = up_down && !down_down;
			if (b_infamous || (attack_down && get_gameplay_time() > 120))
			{
				infamous_dir = spr_dir;
				spr_dir = 1;
				set_attack(AT_DTHROW);
			}
			else if (!aura && !muted && !practicemode && shield_down && get_gameplay_time() > 120)
			{
				infamous_dir = spr_dir;
				spr_dir = 1;
				set_attack(AT_NTHROW);
				sound_play(sound_get("meme"), true);
			}
		}
	    if (window_timer == 43 && taunt_down) window_timer = 34;
	    if (window_timer == 52 && down_down && !up_down && godmode_key && !muted) godmode = !godmode;
	    if (aura && !godmode && !beast_deity)
		{
			if (counterid != noone && counterid.url == "1928599994") // godkarma
			{
				transformeffect = true;
			    set_attack(AT_EXTRA_2);
			}
			else
			{
				transformtime = 90;
				transformeffect = true;
				set_attack(AT_TAUNT_2);
			}
	    }
	}
	break;

	case AT_FSTRONG:
	if (o_copyplayer == noone)
	{
		switch (window)
		{
		case 1:
			if (window_timer == 14)
			{
			    if (aura || runeN)
			    {
					buffcolour = true;
					sound_play(muted?asset_get("sfx_burnconsume"):sound_get("voiceup"));
			        set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fire_effect);
			        set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -100);
			        set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
			        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			        set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
					set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
					set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 25);
					set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 36);
					set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -28);
					set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 91);
					set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 38);
					if (!runeN) aura = in_field;
			    }
			    else
			    {
					buffcolour = false;
			        reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT);
			        reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET);
			        reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK);
			        reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
			        reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
					reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);
					reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE);
					reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X);
					reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y);
					reset_hitbox_value(AT_FSTRONG, 1, HG_WIDTH);
					reset_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT);
			    }
			}
			break;
		case 2:
			if (window_timer == 1 && !buffcolour)
				minmin();
			else if (window_timer == 2 && buffcolour)
				spawn_hit_fx( x + (spr_dir * 50), y - 26, 148 );
			break;
		}
	}
	break;
	
	case AT_USTRONG:
	if (o_copyplayer == noone)
	{
	    if (window >= 3)
	        draw_indicator = false;
	    if (window == 2)
	    {
			if (window_timer == 1)
			{
				spawn_base_dust(x, y, "jump", spr_dir);
				spawn_hit_fx( x + 1, y - 96, 137 );
				if (buffcolour)
				{
					spawn_hit_fx( x + 22, y - 96, 137 );
					spawn_hit_fx( x - 21, y - 96, 137 );
				}
				else
					minmin();
			}
		}
	    else if (window == 3)
	    {
			if (window_timer == 4)
			{
				vsp = -7;
				sound_play(jump_sound);
			}
		}
	    else if (window == 1 && window_timer == 10)
	    {
	        if (aura || runeN)
	        {
				buffcolour = true;
				sound_play(muted?asset_get("sfx_burnconsume"):sound_get("voiceup"));
				set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
	            set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fire_effect);
	            set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -100);
				set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 48);
				set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 24);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9.5);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 19);
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);
	            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fire_effect);
	            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -100);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 14);
				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
				if (!runeN) aura = in_field;
	        }
	        else
	        {
				buffcolour = false;
				reset_hitbox_value(AT_USTRONG, 1, HG_LIFETIME);
	            reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT);
	            reset_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET);
				reset_hitbox_value(AT_USTRONG, 1, HG_WIDTH);
				reset_hitbox_value(AT_USTRONG, 1, HG_HEIGHT);
				reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
				reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
				reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE);
	            reset_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT);
	            reset_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET);
				reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
	        }
	    }
	}
	break;
	
	case AT_DSTRONG:
	if (o_copyplayer == noone)
	{
	    if (window == 3)
	    {
			if (window_timer == 1 && !buffcolour)
				minmin();
			else if (window_timer == 4 && buffcolour)
			{
				spawn_hit_fx( x + 70, y - 26, 3 );
				spawn_hit_fx( x - 70, y - 26, 3 );
			}
			if (window_timer == 3)
			{
				spawn_base_dust(x+50*spr_dir, y, "nspec", -spr_dir);
				spawn_base_dust(x-50*spr_dir, y, "nspec", spr_dir);
			}
		}
	    else if (window == 2 && window_timer == 8)
	    {
	        if (aura || runeN)
	        {
				buffcolour = true;
				sound_play(muted?asset_get("sfx_burnconsume"):sound_get("voiceup"));
	            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fire_effect);
	            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -100);
	            set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
	            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 18);
	            set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 18);
				set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
				set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 140);
				if (!runeN) aura = in_field;
	        }
	        else
	        {
				buffcolour = false;
	            reset_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT);
	            reset_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET);
	            reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
	            reset_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX);
				reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE);
	            reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
				reset_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER);
	            reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_DSTRONG, 1, HG_WIDTH);
	        }
	    }
	}
	break;
	
	case AT_EXTRA_1:
	if (o_copyplayer == noone)
	{
		if (!hitpause && window == get_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW) && window_timer == get_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME))
		{
			old_hsp = 0;
			old_vsp = 0;
			hitpause = true;
			hitstop = 20;
			hitstop_full = 20;
			sound_play(get_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX));
		}
	    hsp = 0;
	    vsp = 0;
	    var num_windowss = get_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS);
		if (window == num_windowss && window_timer >= get_window_value( AT_EXTRA_1, num_windowss, AG_WINDOW_LENGTH ))
		{
			transformtime = 0;
			transformeffect = true;
			set_state(PS_IDLE);
		}
	}
	break;
	
	case AT_TAUNT_2:
	{
		if (counterid && instance_exists(counterid) && !beast_deity && timebreak)
		{
			dir = (hit_player_obj.x >= floor(room_width/2)) ? -1 : 1;
			x += ((hit_player_obj.x + dir * 80) - x)/6;
			y += ((hit_player_obj.y)-y)/6;
			hsp = 0;
			vsp = 0;
			spr_dir = -dir;
			var num_windowss = get_attack_value( AT_TAUNT_2, AG_NUM_WINDOWS );
			if (window == num_windowss && window_timer >= get_window_value( AT_TAUNT_2, num_windowss, AG_WINDOW_LENGTH ))
			{
				y = counterid.y;
				transformtime = 0;
				transformeffect = true;
				set_state(PS_IDLE);
			}
		}
		else
		{
			hsp = 0;
			vsp = 0;
			var num_windowss = get_attack_value( AT_TAUNT_2, AG_NUM_WINDOWS );
			if (window == num_windowss && window_timer >= get_window_value( AT_TAUNT_2, num_windowss, AG_WINDOW_LENGTH ))
			{
				transformtime = 0;
				transformeffect = true;
				set_state(PS_IDLE);
			}
		}
	}
	break;

	case AT_EXTRA_2:
	if (o_copyplayer == noone && counterid != noone)
	{
		draw_indicator = false;
		switch (window)
		{
			case 1:
				counterid.y -= window_timer * 2;
				break;
			case 2:
				transformeffect = true;
				with (counterid)
				{
					set_state(PS_HITSTUN);
				}
				break;
		}
	}
	break;

	case 49:
		draw_indicator = false;
		switch (window)
		{
			case 1:
				if (window_timer == 2 && !hitpause)
				{
					sound_play(sound_get("sfx_taunt"));
					sound_stop(sound_get("meme"));
				}
				break;
			case 2:
				if (window_timer == 1 && !hitpause)
				{
					var owo = spawn_hit_fx(x-14*spr_dir,y-36,shinestar_effect); owo.depth = -10;
				}
				break;
			case 4:
				if (window_timer < 62 && window_timer % 2 == 1)
					create_hitbox(49, 2, x, y);
				break;
		}
		break;
}


// Ditto
if (o_copyplayer && o_copyplayer != noone && instance_exists(o_copyplayer))
{
	if (o_copyplayer.select == clamp(o_copyplayer.select, 2, 15)) // base cast
	{
		switch (o_copyplayer.select)
		{
		case 2: // Zetter
			switch (attack)
			{
			case AT_DATTACK:
				can_ustrong = has_hit_player;
				break;
			case AT_FTILT:
				if (has_hit_player && window < 3)
				{
					grab(50, -1, 8, 8);
				}
				break;
			case AT_FSTRONG:
				if (has_hit_player && hit_player_obj)
				{
					if (window < 5)
					{
						grab(110, -1, 3, 3);
					}
				}
				break;
			case AT_DSTRONG:
				if (has_hit_player && hit_player_obj)
				{
					if (window < 5)
					{
						grab(50, -1, 8, 8);
					}
				}
				break;
			default:
				break;
			}
			break;
		case 3: // Orca
				if (attack == AT_FAIR && window == 2 && window_timer < 14)
				{
					if (spr_dir == 1)
					{
						if (left_down)
							hsp -= 0.6;
						else if (!right_down)
							hsp -= 0.3;
					}
					else if (spr_dir == -1)
					{
						if (right_down)
							hsp += 0.6;
						else if (!left_down)
							hsp += 0.3;
					}
					vsp /= 3;
					super_armor = true;
				}
				break;
			break;
		case 4: // Nerf Wrastor
			set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
			set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
			set_attack_value(AT_FSTRONG, AG_CATEGORY, 1);
			if (attack == AT_DSTRONG && window == 3)
			{
				hsp = 0;
				vsp += 1;
				if (has_hit_player || !free)
				{
					window_timer = 0;
					window = 4;
				}
				else if (window_timer == 15)
					window_timer = 0;
			}
			if (free)
			{
				if (true)
				{
					if (up_strong_pressed)
					{
						set_attack(AT_USTRONG);
						attack = AT_USTRONG;
					}
					else if (down_strong_pressed)
					{
						set_attack(AT_DSTRONG);
						attack = AT_DSTRONG;
					}
					else if (left_strong_pressed || right_strong_pressed)
					{
						set_attack(AT_FSTRONG);
						attack = AT_FSTRONG;
					}
				}
				if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG)
				{
					can_fast_fall = false;
					if (strong_charge > 4 && window == 1)
					{
						hsp = 0;
						vsp = 0;
					}
				}
			}
			else if (window == 1 && window_timer == 1)
			{
				if (attack == AT_USTRONG)
				{
					set_attack(AT_UTILT);
					attack = AT_UTILT;
				}
				else if (attack == AT_DSTRONG)
				{
					set_attack(AT_DTILT);
					attack = AT_DTILT;
				}
				else if (attack == AT_FSTRONG)
				{
					set_attack(AT_FTILT);
					attack = AT_FTILT;
				}
			}
			break;
		case 5: // Buggo
			break;
		case 6: // Forsb
			break;
		case 7: // UwU Furret
			if (attack == AT_DAIR)
			{
				set_attack(AT_NAIR);
				attack = AT_NAIR;
			}
			if (attack == AT_DATTACK && window == 2)
			{
				if (window == 2)
				{
					hsp = 10 * spr_dir;
					if (has_hit_player)
					{
						window = 3;
						window_timer = 0;
					}
				}
				else if (window == 3)
				{
					hsp = 20 * spr_dir;
				}
			}
			break;
		case 8: // Absa
			if (attack == AT_JAB && attack_down && window == 3 && window_timer == 10)
			{
				window = 2;
				window_timer = 0;
			}
			break;
		case 9: // Polar bear
			if (attack == AT_DATTACK)
			{
				if (window == 2)
				{
					hsp = spr_dir * 10;
					can_ustrong = true;
					can_jump = true;
				}
			}
			else if (attack == AT_FAIR)
			{
				soft_armor = 12;
			}
			else if (attack == AT_UAIR)
			{
				if (window == 2 && has_hit_player)
				{
					var tempwindowlength = 8;
					if (has_hit_player && hit_player_obj)
					{
						grab(10, -70, 8, 8);
					}
				}
				if (window == 3 && has_hit_player && hit_player_obj)
				{
					hit_player_obj.vsp = 17;
					hit_player_obj.hsp = 9 * spr_dir;
				}
			}
			else if (attack == AT_TAUNT && window == 2 && (attack_down || special_down || taunt_down || shield_down || jump_down))
			{
				window = 3;
				window_timer = 0;
			}
			break;
		case 10: // Ori and Shawn
			break;
		case 11: // RanNO
			if (attack == AT_JAB && window == 11)
			{
				if (attack_down)
				{
					if (window_timer == 36)
						window_timer = 0;
				}
				else
				{
					window = 12;
					window_timer = 0;
				}
			}
			else if (attack == AT_UTILT && window == 1)
			{
				hsp = 5 * -spr_dir;
			}
			break;
		case 12: // Plasma Stun
			break;
		case 13: // Wolfie
			if (attack == AT_JAB && (window == 7 || window == 8 || window == 9))
			{
				if (window_timer == 18 && window == 9)
				{
					if (attack_down)
					{
						window = 7;
						window_timer = 0;
					}
					else
					{
						window = 11;
						window_timer = 0;
					}
				}
			}
			if (attack == AT_DAIR)
			{
				set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 100);
				if (!free && window == 3)
				{
					window = 4;
				}
			}
			break;
		case 14: // Stupid snek
			break;
		case 15: // Ew shovel knight
			if (attack == AT_DSTRONG && window == 2 && window_timer > 10)
			{
				hsp = 0;
				vsp = 0;
				can_fast_fall = false;
			}
			else if (attack == AT_DAIR && window == 2)
			{
				if (has_hit_player)
				{
					has_hit_player = false;
					vsp = -15;
					can_fast_fall = false;
				}
				else if (!free)
				{
					window = 3;
					window_timer = 0;
				}
			}
			break;
		default:
			break;
		}
	}
}

}

#define grab(xpos, ypos, xsmooth, ysmooth)
{
	if (xsmooth != 0)
	{
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.hsp = 0;
		hit_player_obj.old_hsp = 0;
	}
	if (ysmooth != 0)
	{
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.vsp = 0;
		hit_player_obj.old_vsp = 0;
	}
}

#define minmin()
{
	if (!muted && !hitpause)
	{
		sfxname = "voice";
		sfxname += string(random_func(0, 6, true)+1);
		sound_play(sound_get(sfxname));
	}
}

#define canTele(org_x, org_y, tele_x, tele_y, distancetravell, limit)
{
	with (oPlayer)
	{
		if (player != other.player
			&& point_distance(x,y,org_x,org_y)<=17*distancetravell
			&& normalizeAngle(point_direction(org_x, org_y, x, y) - point_direction(0, 0, tele_x, tele_y)) <= limit)
		{
			other.counterid = self;
			return true;
		}
	}
	return false;
}

#define normalizeAngle(uwu)
{
	var owo = abs(uwu);
	while (owo > 360)
	{
		owo -= 360;
	}
	if (owo > 180)
		owo = 360-owo;
	return owo;
}

#define teleeffect(distancetravell)
{
	var checkx = x;
	var checky = y-floor(char_height/2);
	for (var i = 0; i < 16 && collision_circle(checkx, checky, distancetravell, asset_get("par_block"), false, true) == noone; ++i)
	{
		checkx += tele_x;
		checky += tele_y;
	}
	checkx -= tele_x;
	checky -= tele_y;
	spawn_hit_fx(checkx,checky,tele_effect);
}

#define curationArtTeam()
{
	for (var i = 0; i < 10; ++i)
	{
		var particle = create_hitbox( AT_EXTRA_3,
						4,
						floor(x + 50*spr_dir),
						floor(y - random_func(0, 40, true) - 5));
		particle.hsp = (random_func(1+i, 5, true) - 5)*spr_dir;
		particle.vsp = -random_func(2+i, 6, true) - 3;
	}
}

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}

#define spawn_base_dust
{
    ///spawn_base_dust(x, y, name, ?dir)
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    
    switch (name) {
        default: 
        case "nspec":dlen = 10; dfx = 12; dfg = 2626; break;
        case "smoke":dlen = 32; dfx = 13; dfg = 2626; break;
        case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
        case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
        case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
        case "doublejump": 
        case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
        case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
        case "land": dlen = 24; dfx = 0; dfg = 2620; break;
        case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
        case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    }
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
    return newdust;
} // Supersonic