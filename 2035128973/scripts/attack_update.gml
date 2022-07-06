if (get_synced_var(player))
{
	if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();
	
	switch (attack)
	{
		case AT_NSPECIAL:
			if (window == 1)
			{
				if (window_timer == 1)
				{
					killarticles = false;
					instance_create( x - spr_dir * 30, y - 36, "obj_article1" );
					clear_button_buffer( PC_SPECIAL_PRESSED );
				}
				if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed))
				{
					spr_dir *= -1;
					hsp *= -1.3;
				}
			}
			if (window == 2)
			{
			    can_jump = !was_parried;
				can_shield = free && !was_parried;
				if ((shield_pressed && !free) || was_parried)
				{
				    window = 4;
				    window_timer = 0;
					if (!was_parried) sound_play(asset_get("sfx_frog_fspecial_cancel"));
					clear_button_buffer(PC_SHIELD_PRESSED);
				}
			    else if (special_pressed)
				{
			        window = 3;
			        window_timer = 0;
					sound_play(sound_get("button_x"))
					if (charge != noone)
					{
						with (charge)
						{
							state = 9;
							state_timer = 0;
						}
						chargeSave = 0;
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, charge.size);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, charge.size);
						set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, floor(charge.size * 0.2));
						set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, floor(charge.size * 0.2));
					}
					clear_button_buffer( PC_SPECIAL_PRESSED );
			    }
			}
			break;
		case AT_USPECIAL:
			can_fast_fall = false;
			if (!hitpause) switch (window)
			{
				case 1:
					if (window_timer == 1)
					{
						fire_ang = 90;
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15 + floor(get_player_damage( player ) / 40));
						reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
						y -= 1;
					}
					if (!joy_pad_idle) fire_ang = joy_dir;
					break;
				case 2:
					if (!joy_pad_idle) fire_ang = joy_dir;
					set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (16 * cos(degtorad(fire_ang))) * spr_dir);
					set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-16 * sin(degtorad(fire_ang))));
					var tempAngle = fire_ang - 90;
					var halfHeight = char_height/2;
					if (tempAngle > 180) tempAngle-=360;
					spr_angle = lerp(spr_angle,tempAngle,0.5);
					draw_x = -lengthdir_y(halfHeight, spr_angle);
					draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
					if (window_timer > 1 && !free)
					{
						window = 3;
						window_timer = 0;
					}
					break;
				case 3:
					spr_angle = 0;
					break;
			}
			break;
		case AT_DSPECIAL:
			if (window == 1)
			{
				if (get_gameplay_time() % 10 == 1) set_player_damage( player, get_player_damage( player ) + 1 );
				if (window_timer == 0) vsp = 0;
			    if (special_down && ((right_down && spr_dir == -1) || (left_down && spr_dir == 1)))
				{
					spr_dir *= -1;
			        window = 1;
			        window_timer = 1;
			    }
			    super_armor = true;
				can_fast_fall = false;
				if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) set_state(PS_IDLE);
			}
			break;
		case AT_FSPECIAL:
			if (window == 1)
			{
				reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH);
				set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
				set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
			}
			if (window == 2 && has_hit_player && hit_player_obj)
			{
				Grab(80, -1, 3, 3);
				set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 26);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
				reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE);
			}
			break;
		case AT_JAB:
			if (window < 9 && has_hit_player && hit_player_obj) Grab(60, -1, 3, 3);
			can_strong = true;
			can_ustrong = true;
			can_special = true;
			break;
		case AT_DATTACK:
			if (has_hit_player) set_attack(AT_JAB);
			break;
		case AT_DAIR:
			if (window < 3 && has_hit_player && hit_player_obj) Grab(0, 20, 3, 3);
			break;
	}
}
else
{
	if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == 49) trigger_b_reverse();
	switch (attack)
	{
	    case AT_TAUNT:
	        if (practice&&object_index!=oTestPlayer)
	        {
	            if (state_timer == 1)
	            {
	                if (menuState == 0 && !shield_down)
	                    menuStateBuffer = 1;
	                else
	                {
	                    tutDone[tutPrevMenu] = 1;
	                    tutDoneAdv[tutPrevMenu] = 1;
	                }
	            }
	            hsp = 0;
	            vsp = 0;
	        }
	        if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer = 0;
	        break;
	
	    case AT_EXTRA_1:
	        can_jump = true;
	        if (state_timer == 1) {spawn_base_dust(x, y-floor(char_height/2), "anime", spr_dir); sound_play(sound_get("riolu"),0,noone,3);}
	        if (taunt_down && !jump_pressed)
			{
				if (window_timer == get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH)) window_timer = 0;
				suppress_stage_music(0.2, 0.5);
			}
	        else
			{
				if (hasBone) costumeIndex = random_func(0, array_length_1d(costumeList), 1);
				sound_stop(sound_get("riolu"));
				window = 2;
			}
	        break;
	
		case AT_JAB:
			if (window == 6 && window_timer > 4)
			{
				can_attack = true;
				if (is_attack_pressed(DIR_NONE))
				{
					window = 1;
					window_timer = 0;
				}
			}
			break;
	
		case AT_DSPECIAL:
			switch (window)
			{
				case 1:
					if (window_timer == 1)
					{
						sound_play(jump_sound);
						sound_play(asset_get("sfx_swipe_medium1"));
						afterImageTimer = 16;
					}
					else if (window_timer == 17)
					{
						sound_play(asset_get("sfx_swipe_heavy1"));
						afterImageTimer = 16;
					}
					break;
				case 2:
				case 3:
					can_wall_jump = true;
					if (!givenDjump)
					{
						givenDjump = true;
						djumps = 0;
					}
					if (free && state_timer > 40)
					{
						can_shield = true;
						if (jump_counter == 0) set_state(PS_IDLE_AIR);
						if (is_special_pressed(DIR_UP)) set_attack(AT_USPECIAL);
					}
					if (afterImageTimer == 0) afterImageTimer = 16;
					break;
				case 4:
					if (!hitpause)
					{
						if (window_timer == 0)
						{
							destroy_hitboxes();
							sound_play(asset_get("sfx_blow_heavy2"));
							shake_camera(5, 3);
							afterImageTimer = 0;
						}
						else if (window_timer == 10)
						{
							with (pHitBox) if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1) destroyed = true;
							if (boneObj != noone)
							{
								boneObj.newState = 3;
								boneObj = noone;
							}
							if (hasBone)
							{
								var boneArticle = instance_create(x+spr_dir*24, y-2, "obj_article3");
								boneArticle.spr_dir = spr_dir;
							}
						}
					}
					break;
			}
			break;
	
			case AT_USPECIAL:
			if (window == 1 && window_timer == 1 && free && vsp > -10) vsp = -10;
			if (window == 2 && window_timer == 1 && !hitpause)
			{
				var boneProj = create_hitbox(AT_USPECIAL, 1, x+get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y));
				var throw_speed = special_down?11:7;
				var throw_angle = 65;
				if (!joy_pad_idle)
				{
				    var angle_diff = 90 - joy_dir;
				    if (angle_diff < -180) angle_diff += 360;
				    if (angle_diff > 180) angle_diff -= 360;
				    var angle_change = 25*(dsin(angle_diff)*dsin(angle_diff));
				    throw_angle -= sign(angle_diff)*spr_dir*angle_change;
				}
				boneProj.spr_dir = spr_dir;
				boneProj.hsp = throw_speed*dcos(throw_angle)*spr_dir;
				boneProj.vsp = throw_speed*-dsin(throw_angle);
			}
			break;
			
			case AT_USPECIAL_2:
			can_fast_fall = false;
	
			if (!hitpause) switch (window)
			{
				case 1:
					can_fast_fall = false;
					hsp /= 1.1;
					vsp /= 1.1;
					if (window_timer == 1)
					{
						fire_ang = 90;
						y -= 1;
						reset_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH);
						reset_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE);
						clear_button_buffer(PC_SPECIAL_PRESSED);
					}
					else if (window_timer == get_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH)/2)
					{
						if (!(special_down||special_pressed) || hasBone /*|| uspecBan*/)
							set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
						else if (has_rune("B"))
							set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
					}
					if (window_timer < get_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH)/2)
						break;
				case 2:
					can_wall_jump = true;
					var fireDist = 60;
					if (hasBone)
					{
						set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
						fire_ang = 90;
					}
					if (get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) != 6)
					{
						if (instance_exists(boneObj) && boneObj.state != 2)
						{
							fire_ang = point_direction(x,y,boneObj.x,boneObj.y-8);
							fireDist = point_distance(x,y,boneObj.x,boneObj.y-8);
							if (window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH))
							{
								x = boneObj.x;
								y = boneObj.y-8;
							}
						}
						else with (asset_get("pHitBox")) if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1)
						{
							hsp = 0;
							vsp = 0;
							grav = 0;
							hitbox_timer = 0;
							with (other)
							{
								fire_ang = point_direction(x,y,other.x,other.y+8);
								fireDist = point_distance(x,y,other.x,other.y+8);
								if (window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH))
								{
									x = other.x;
									y = other.y+8;
								}
							}
						}
					}
					
					var tempAngle = fire_ang - 90;
					var halfHeight = char_height/2;
					if (tempAngle > 180) tempAngle-=360;
					spr_angle = lerp(spr_angle,tempAngle,0.3);
					draw_x = -lengthdir_y(halfHeight, spr_angle);
					draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
					
					if (window == 2 && window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH))
					{
						var speeed = 10;
						hsp = speeed * cos(degtorad(fire_ang));
						vsp = -speeed * sin(degtorad(fire_ang));
						sound_play(sound_get("se_lucario_special_H02"));
						if (get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) != 6) for (var i = 0; i < afterImageMax; ++i)
						{
							create_hitbox(AT_USPECIAL_2, 1, floor(x+draw_x-lengthdir_x(i*fireDist/afterImageMax,fire_ang)), floor(y+draw_y-lengthdir_y(i*fireDist/afterImageMax,fire_ang)))
	                        afterImage[i]={sprite_index:sprite_index,image_index:image_index,x:x+draw_x-lengthdir_x(i*fireDist/afterImageMax,fire_ang),y:y+draw_y-lengthdir_y(i*fireDist/afterImageMax,fire_ang),spr_dir:spr_dir,alpha:10*(1-i/64),angle:spr_angle};
						}
						else afterImageTimer = afterImageMax;
					}
					else
					{
						hsp = -2 * cos(degtorad(fire_ang));
						vsp = 2 * sin(degtorad(fire_ang));
					}
	
					LedgeSnap(24, hsp);
					break;
				case 3:
					spr_angle = lerp(spr_angle,0,0.3);
					var halfHeight = char_height/2;
					draw_x = -lengthdir_y(halfHeight, spr_angle);
					draw_y = lengthdir_x(halfHeight, spr_angle)-halfHeight;
					if (window_timer == 1)
					{
						afterImageTimer = 0;
						if (get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) != 6)
						{
							hsp/=4;
							vsp/=4;
						}
					}
					break;
				case 4:
					if (window_timer == 1)
					{
						spr_angle = 0;
						draw_x = 0;
						draw_y = 0;
						//uspecBan = true;
					}
					break;
			}
			break;
	
		case AT_FSPECIAL:
			if (window < 3)
			{
				can_fast_fall = false;
				hsp /= 1.2;
				vsp /= 1.2;
			}
			if (state_timer == 1)
			{
				reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE);
				reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
				sound_play(asset_get("sfx_absa_concentrate"),0,-4,1,1.2);
			}
			if (window == 1 && has_hit_player && instance_exists(hit_player_obj))
			{
				set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
				Grab(45, 0, 2, 2);
			}
			if (window == 5) sound_stop(asset_get("sfx_absa_concentrate"));
			break;
	
		case 49:
			can_move = false;
			can_fast_fall = false;
			hsp = 0;
			vsp = 0;
			switch (window)
			{
				case 1:
					if (window_timer == 2)
					{
						clear_button_buffer(PC_SPECIAL_PRESSED);
						asReverse = false;
						set_hitbox_value(49, 1, HG_WIDTH, asCharge*0.4+20);
						set_hitbox_value(49, 1, HG_HEIGHT, asCharge*0.4+20);
						asSFX[0] = sound_play(sound_get("ascStart"));
						asSFX[2] = sound_play(sound_get("vc_lucario_003"));
					}
					if (!asReverse && (spr_dir==1?left_down:right_down) && window_timer < 5)
					{
						hsp *= -1;
						spr_dir *= -1;
						asReverse = true;
					}
					break;
	
				case 2:
					if (state_timer == 120 && !hitpause) asSFX[1] = sound_play(sound_get("ascLoop"), 1);
					if (asCharge < asChargeMax*10) asCharge += 3;
					set_hitbox_value(49, 1, HG_WIDTH, asCharge*0.4+20);
					set_hitbox_value(49, 1, HG_HEIGHT, asCharge*0.4+20);
					if (asCharge >= asChargeMax*10)
					{
						window = 3;
						window_timer = 0;
					}
					break;
	
				case 3:
					sound_stop(asSFX[0]);
					sound_stop(asSFX[1]);
	
					if (asCharge > 0 && window_timer == 9)
					{
						asCharge -= 8;
						window_timer--;
						shake_camera(2, 2);
					}
					break;
	
				case 4:
					if (window_timer == 1) asCharge = 0;
					break;
			}
			break;
	
		case AT_NSPECIAL:
			switch (window)
			{
				case 1:
					if (window_timer == 1)
					{
						clear_button_buffer(PC_SPECIAL_PRESSED);
						asReverse = false;
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, asCharge*0.4+20);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, asCharge*0.4+20);
						asSFX[0] = sound_play(sound_get("ascStart"));
						asSFX[2] = sound_play(sound_get("vc_lucario_003"));
					}
					else if (window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) && asCharge == asChargeMax && !has_rune("L")) InitAuraSphere();
					if (!asReverse && (spr_dir==1?left_down:right_down) && window_timer < 5)
					{
						hsp *= -1;
						spr_dir *= -1;
						asReverse = true;
					}
					break;
	
				case 2:
					if (state_timer == 120 && !hitpause) asSFX[1] = sound_play(sound_get("ascLoop"), 1);
					if (asCharge < asChargeMax || has_rune("L"))
					{
						asCharge += has_rune("D")+1;
						if (asCharge == asChargeMax && !has_rune("L"))
						{
							var owo = spawn_hit_fx(x+2*spr_dir,y-40,shinestar_effect); owo.depth = -10;
							sound_play(asset_get("mfx_star"));
						}
					}
					set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, asCharge*0.4+20);
					set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, asCharge*0.4+20);
					can_jump = !was_parried;
					can_shield = free && !was_parried;
					move_cooldown[attack] = 10;
					if (special_pressed || jump_pressed || shield_pressed) sound_stop(asSFX[2]);
					if ((shield_pressed && !free) || was_parried)
					{
					    window = 5;
					    window_timer = 0;
						if (!was_parried) sound_play(asset_get("sfx_frog_fspecial_cancel"));
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
					if (special_pressed) InitAuraSphere();
					break;
	
				case 3:
					sound_stop(asSFX[0]);
					sound_stop(asSFX[1]);
					break;
	
				case 4:
					if (window_timer == 1) asCharge = 0;
					move_cooldown[attack] = 20;
					break;
			}
			break;
	
		case AT_FSPECIAL_2:
			if (window == 7) afterImageTimer = 0;
			else if (window < 7)
			{
				if (afterImageTimer == 0) afterImageTimer = 16;
				if (has_hit_player && instance_exists(hit_player_obj))
				{
					Grab(60, 0, 2, 2);
					vsp /= 1.2;
				}
			}
			break;
	
	    case AT_DTILT:
	        down_down = true;
	        move_cooldown[attack] = 1;
			break;
	
	    case AT_UAIR:
			if (state_timer == 1) sound_play(asset_get("sfx_charge_blade_ready"),0,-4,1,1.5);
			break;
	
	    case AT_USTRONG:
	        if (window > 1) hud_offset = 120;
			if (window == 3  && window_timer < 2 && has_hit_player && hit_player_obj.hitpause) Grab(0, -100, 0, 5);
			break;
	
		case AT_DSPECIAL_AIR:
			if (window <= 3 && has_hit_player)
			{
				//if (hit_player_obj.free) Grab(0, 28, 3, 2);
				hsp *= 0.9;
				if (y > room_height + 10)
				{
					y = room_height + 10;
					vsp = 0;
				}
			}
			break;
	}
}

#define LedgeSnap(_dist, _hsp)
{
    if (!hasMovedUp && free && place_meeting(x+_hsp,y,asset_get("par_block"))) for (var i = 0; i < _dist; ++i) if (!place_meeting(x+_hsp,y-(i+1),asset_get("par_block")))
    {
        y -= i;
        hasMovedUp = true;
        break;
    }
}

#define Grab(xpos, ypos, xsmooth, ysmooth)
{
    if (xsmooth != 0)
    {
        hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
        hit_player_obj.hsp = 0;
        //hit_player_obj.old_hsp = 0;
    }
    if (ysmooth != 0)
    {
        hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
        hit_player_obj.vsp = 0;
        //hit_player_obj.old_vsp = 0;
    }
}

#define InitAuraSphere()
{
	destroy_hitboxes();
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, asCharge*0.4+20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, asCharge*0.4+20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, floor(lerp(3, 15, asCharge/asChargeMax)));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(3, 10, asCharge/asChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.3, 0.9, asCharge/asChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(4, 15, asCharge/asChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.3, 1, asCharge/asChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, lerp(3, 10, asCharge/asChargeMax));
	set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, asCharge/asChargeMax>0.5?aurabig_effect:aura_effect);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, asCharge/asChargeMax>0.5?aurabig_effect:aura_effect);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_"+(asCharge/asChargeMax>0.5?"heavy":"medium")));
	set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, asCharge/asChargeMax>0.2?0:9);
	set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, lerp(-2, -6, min(asCharge/asChargeMax,1)));
	window = 3;
	window_timer = 0;
	sound_stop(asSFX[2]);
	clear_button_buffer(PC_SPECIAL_PRESSED);
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
{
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
        case "anime": dlen = 1; dfx = 22; dfg = 2656; dust_color = 1; break;
    }
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = dfa;
    return newdust;
} // Supersonic