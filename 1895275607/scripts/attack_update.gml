// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB)
{
	if (state_timer == 1)
		clear_button_buffer(PC_ATTACK_PRESSED);
}

if(attack == AT_DATTACK)
{
	if (runeD && window == 3 && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH) && attack_down && !has_hit_player)
	{
		window_timer = 0;
	}
	else if (window < 3)
	{
		if (window == 2 && reverseDir)
		{
			spr_dir *= -1;
			reverseDir = false;
		}
		if (strong_down || down_stick_down)
		{
			set_attack(AT_DSTRONG);
			hsp *= 1.2;
		}
		else if ((attack_down && up_down) || up_stick_down)
		{
			set_attack(AT_UTILT);
			hsp *= 1.4;
		}
	}
}

if(attack == AT_DAIR){
	fall_through = (down_down||down_stick_down);
	if (window == 1)
		dairID = noone;
	else if (window == 2)
	{
		if (free)
		{
			can_wall_jump = true;
			can_jump = runeA;
			if (has_hit_player)
			{
				if (dairID == noone) dairID = hit_player_obj;
				if (dairOffStage == 0) // let go of them offstage
				{
				    window = 3;
				    move_cooldown[attack] = 30;
				    dairID.invincible = true;
				    dairID.invince_time = 10;
				    dairID.vsp = -4;
				    can_fast_fall = true;
					with (dairID)
					{
						if (state != PS_RESPAWN && state != PS_DEAD && state != PS_IDLE_AIR)
							set_state(PS_IDLE_AIR);
					}
				}
				else if (dairID.state != PS_RESPAWN && dairID.state != PS_DEAD) // main loop (make sure you don't take more than 1 stock)
				{
					fall_through = true;
				    can_wall_jump = false;
				    ++dairDamageTimer;
				    var stage_x = get_stage_data( SD_X_POS );
				    var stage_y = get_stage_data(SD_Y_POS);
				    if (x < stage_x || x > room_width - stage_x || y > stage_y + 10)
					{
				        --dairOffStage;
						dairID.y = y + 30;
				        if (y > stage_y + (get_stage_data(SD_BOTTOM_BLASTZONE)/2))
						{
				            dairID.y = y - 10;
				        }
				    }
					else
					{
						if (!dairID.freemd)
							dairID.y = min(y + 30,stage_y);
				    }
				    dairID.x = x;
					with (dairID)
					{
						set_state(free?PS_PRATFALL:PS_HITSTUN_LAND);
					}
				}
			}
		}
		else // landing
		{
			dairID = noone;
			window = 3;
			move_cooldown[attack] = 30;
			if (has_hit_player)
			{
			    if(!hit_player_obj.clone)
				{
			        take_damage(hit_player_obj.player, player, round(dairDamageTimer / 2));
			    }
			    can_fast_fall = true;
			}
		}
	}
}

if(attack == AT_NSPECIAL_2 && window_timer == 1){
    puul.spr_dir = spr_dir;
    birdOut = true;
    puul.state = (runeN&&hit_player_obj!=-1?5:1);
	puul.state_timer = 0;
    puul.y = y;
}

if(attack == AT_USPECIAL_2){
	if (window == 1 && window_timer == 1)
	{
		puul.state = 3;
		puul.state_timer = 0;
	}
	else if (runeE && window == 2 && window_timer == 1 && special_down)
	{
		puul.state = 6;
		window_timer = 0;
		//puul.state_timer = 0;
	}
}

if(attack == AT_USPECIAL){
	if (window == 1)
	{
		if (window_timer == 1)
		{
			puul.state = 2;
			puul.state_timer = 0;
			puul.spr_dir = spr_dir;
		}
		if (!joy_pad_idle)
			puul.joy = joy_dir;
		if(puul.x > x)spr_dir = 1;
		else if(puul.x < x)spr_dir = -1;
		if (!special_down || window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH))
		{
			window = 2;
			window_timer = 0;
			if (free)
			{
				vsp = -4;
			}
		}
	}
	else if (window > 2 && special_pressed && move_cooldown[AT_NSPECIAL] == 0)
	{
		set_attack(AT_NSPECIAL);
		attack = AT_NSPECIAL;
	}
}

if(attack == AT_NSPECIAL){
    if(/*birdOut &&*/ window == 2 && window_timer == 1){
        var tempx = puul.x;
        var tempy = puul.y - 14;
        tempnum = -12 * spr_dir;
		with (oPlayer)
		{
			if (player == other.player || other.runeL)
			{
				if(point_distance(x, y - 34, tempx, tempy) < other.puul.radius){
				    anglol = point_direction(x, y - 34,  tempx, tempy);
				    hsp = lengthdir_x(12, anglol);
				    vsp = lengthdir_y(12, anglol);
				}
			}
		}
        spawn_hit_fx(tempx + tempnum, tempy, pullfieldfx);
        if(instance_exists(steelball) && steelball != noone){
            if(point_distance(steelball.x, steelball.y, tempx, tempy) < puul.radius){
                anglol = point_direction(steelball.x, steelball.y, tempx, tempy);
                htemp = lengthdir_x(16, anglol) * spr_dir;
                vtemp = lengthdir_y(16, anglol);
				if (runeF)
				{
					htemp *= 2;
					vtemp *= 2;
				}
                set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, htemp);
                set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, vtemp);
                ballbreaker = create_hitbox(AT_DSPECIAL, 2, steelball.x, steelball.y);
                instance_destroy(steelball);
                steelball = ballbreaker;
                //steelball.hsp = lengthdir_x(12, anglol);
                //steelball.vsp = lengthdir_y(12, anglol);
                //steelball.hitbox_timer = 0;
            }
        }
    }
    if (window == 3){
        iasa_script();
        can_wall_jump = true;
        move_cooldown[attack] = runeK?30:120;
    }
}

if(attack == AT_FSTRONG && window == 2)
{
	if (has_hit_player && hitpause)
	{
		if (hitstop == 0)
		{
			hit_player_obj.x = (x + spr_dir * 60);
			hit_player_obj.y = (y - 1);
		}
		else
		{
			if (hit_player_obj.x > (x + spr_dir * 60))
			{
				hit_player_obj.x -= (hit_player_obj.x - (x + spr_dir * 60))/5;
			}
			else if (hit_player_obj.x < (x + spr_dir * 60))
			{
				hit_player_obj.x += ((x + spr_dir * 60) - hit_player_obj.x)/5;
			}
			if (hit_player_obj.y > (y - 1))
			{
				hit_player_obj.y -= (hit_player_obj.y - (y - 1))/5;
			}
			else if (hit_player_obj.y < (y - 1))
			{
				hit_player_obj.y += ((y - 1) - hit_player_obj.y)/5;
			}
			hit_player_obj.hsp = 0;
			hit_player_obj.vsp = 0;
		}
	}
}

if(attack == AT_FSPECIAL)
{
	if (window == 3)
	{
		if (window_timer == 1)
		{
			if (has_hit_player)
			{
				reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
			}
			else
			{
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
			}
		}
		else if (window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH))
		{
			if (!has_hit_player)
			{
				window = 6;
				move_cooldown[AT_FSPECIAL] = 20;
			}
		}
	}
	if (hit_player_obj.state == PS_RESPAWN || hit_player_obj.state == PS_DEAD)
		has_hit_player = false;
	if (window < 5 && has_hit_player)
	{
		if (hit_player_obj.x > (x + spr_dir * 60))
		{
			hit_player_obj.x -= (hit_player_obj.x - (x + spr_dir * 60))/3;
		}
		else if (hit_player_obj.x < (x + spr_dir * 60))
		{
			hit_player_obj.x += ((x + spr_dir * 60) - hit_player_obj.x)/3;
		}
		if (hit_player_obj.y > y)
		{
			hit_player_obj.y -= (hit_player_obj.y - y)/3;
		}
		else if (hit_player_obj.y < y)
		{
			hit_player_obj.y += (y - hit_player_obj.y)/3;
		}
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = 0;
		with (hit_player_obj)
		{
			set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
		}
	}
	else if (free && window == 5 && window_timer < get_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME) && has_hit_player)
	{
		if (hit_player_obj.x > x)
		{
			hit_player_obj.x -= (hit_player_obj.x - x)/3;
		}
		else if (hit_player_obj.x < x)
		{
			hit_player_obj.x += (x - hit_player_obj.x)/3;
		}
		if (hit_player_obj.y > y)
		{
			hit_player_obj.y -= (hit_player_obj.y - y)/3;
		}
		else if (hit_player_obj.y < y)
		{
			hit_player_obj.y += (y - hit_player_obj.y)/3;
		}
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = 0;
		with (hit_player_obj)
		{
			set_state(free?PS_HITSTUN:PS_HITSTUN_LAND);
		}
	}
	if (window == 5 && window_timer == get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH))
	{
		spr_dir *= -1;
	}
}

if(attack == AT_FSPECIAL_2){
    if(/*birdOut &&*/ window == 2 && window_timer == 1){
        var tempx = puul.x;
        var tempy = puul.y - 14;
        tempnum = -12 * spr_dir;
		with (oPlayer)
		{
			if (player == other.player || other.runeL)
			{
				if(point_distance(x, y - 34, tempx, tempy) < other.puul.radius){
				    anglol = point_direction(tempx, tempy,  x, y - 34);
				    hsp = lengthdir_x(12, anglol);
				    vsp = lengthdir_y(12, anglol);
				}
			}
		}
        spawn_hit_fx(tempx + tempnum, tempy, pushfieldfx);
        if(instance_exists(steelball) && steelball != noone){
            if(point_distance(steelball.x, steelball.y, tempx, tempy) < puul.radius){
                anglol = point_direction(tempx, tempy,  steelball.x, steelball.y);
                htemp = lengthdir_x(16, anglol) * spr_dir;
                vtemp = lengthdir_y(16, anglol);
				if (runeF)
				{
					htemp *= 2;
					vtemp *= 2;
				}
                set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, htemp);
                set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, vtemp);
                ballbreaker = create_hitbox(AT_DSPECIAL, 2, steelball.x, steelball.y);
                instance_destroy(steelball);
                steelball = ballbreaker;
                //steelball.hsp = lengthdir_x(12, anglol);
                //steelball.vsp = lengthdir_y(12, anglol);
                //steelball.hitbox_timer = 0;
            }
        }
    }
    
    if (window == 3){
        iasa_script();
        can_wall_jump = true;
        move_cooldown[attack] = runeK?30:120;
    }
}
if(attack == AT_DSPECIAL){
    if(window == 1 && steelball != noone){
        steelballextra = steelball;
    }
    if(window == 2){
        if(window_timer == 1){
            canShoot -= 1;
            if(recharge1 > 0){
                //recharge2 = 1500;
                recharge2 = (runeG?5:12)*60;
            }
            else{
                //recharge1 = 1500;
                recharge1 = (runeG?5:12)*60;
            }
        }
        with (asset_get("pHitBox")){
            if (player == other.player && select == other.select && attack == AT_DSPECIAL){
                other.steelball = id;
                break;
            }
        }    
    }
    if(window == 3){
        
        move_cooldown[attack] = 2;
        can_special = true;
        /*
        else if(steelball != noone && steelball.free == true){
            steelballtimer = 0;
        }*/
    }
    
    
}
if(attack == AT_DSTRONG)
{
	if(window > 2 && window < 7)
	{
		spr_dir=left_down?-1:right_down?1:spr_dir;
		hsp = left_down||right_down?4*spr_dir:0;
		if (hitpause && has_hit_player)
		{
			if (hit_player_obj.x > x)
			{
				hit_player_obj.x -= (hit_player_obj.x - x)/3;
			}
			else if (hit_player_obj.x < x)
			{
				hit_player_obj.x += (x - hit_player_obj.x)/3;
			}
			if (hit_player_obj.y > (y - 10))
			{
				hit_player_obj.y -= (hit_player_obj.y - (y - 10))/3;
			}
			else if (hit_player_obj.y < (y - 10))
			{
				hit_player_obj.y += ((y - 10) - hit_player_obj.y)/3;
			}
		}
	}
}

if(attack == AT_USTRONG){
	if (window < 5)
	{
		soft_armor = 9;
		super_armor = runeH;
	}
	else
	{
		soft_armor = 0;
		super_armor = false;
	}
}

if(attack == AT_NAIR && has_hit && runeJ){
    can_attack = true;
    can_special = true;
    can_jump = true;
}

if (attack == AT_TAUNT)
{
	if (state_timer == 1 && birdOut)
	{
		puul.state = 7;
		puul.state_timer = 0;
	}
}