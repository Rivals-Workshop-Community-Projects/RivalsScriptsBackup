//update

if runesUpdated {
	if runeC {
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	} else {
		reset_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
	}
	if runeO {
		puul.radius = room_width;
	} else {
		puul.radius = 200;
	}
}
if (runeI)
	max_djumps = (birdOut?1:3);
if (runeM)
{
	canShoot = 2;
	recharge1 = 0;
	recharge2 = 0;
}

prevState = state;
prevDjumps = djumps;

dspecshivertimer = (canShoot==0&&down_down&&special_pressed&&(state_cat==SC_GROUND_NEUTRAL||state_cat==SC_AIR_NEUTRAL)?15:dspecshivertimer-1);
dspecshiver = (dspecshivertimer<=0?0:dspecshiver+(floor(get_gameplay_time()/3)%2==0?2:-2));
if (canShoot == 0)
	move_cooldown[AT_DSPECIAL] = 2;

if(djumps == 0 && jump_pressed){
    move_cooldown[AT_DAIR] = 15;
}
if (!free || puulnocooldown)
{
	var cooldownnum = (runeK?0:15);
    if(move_cooldown[AT_NSPECIAL] > cooldownnum){
        
        move_cooldown[AT_NSPECIAL] = cooldownnum;
    }
    if(move_cooldown[AT_FSPECIAL_2] > cooldownnum){
        
        move_cooldown[AT_FSPECIAL_2] = cooldownnum;
    }
}

//if(!birdOut){
//    puul.x = x;
//    puul.y = y;
//}
if(recharge1 > 0){
    --recharge1;
    if(recharge1 == 1){
        ++canShoot;
    }
}
if(recharge2 > 0){
    --recharge2;
    if(recharge2 == 1){
        ++canShoot;
    }
}

if (!runeC)
{
	if(instance_exists(steelball) && steelball != noone && steelball.hsp == 0){
		spawn_hit_fx( steelball.x, steelball.y, 13 );
	    instance_destroy(steelball);
	    steelball = noone;
		sound_play(asset_get("sfx_land_heavy"));
	}
	if(instance_exists(steelballextra) && steelballextra != noone && steelballextra.hsp == 0){
		spawn_hit_fx( steelballextra.x, steelballextra.y, 13 );
	    instance_destroy(steelballextra);
	    steelballextra = noone;
		sound_play(asset_get("sfx_land_heavy"));
	}
}

//if(ball != noone && steelball.free == false){
//    instance_destroy(steelball);
//    steelball = noone;
//}

if (get_gameplay_time() % 3 == 0)
{
	with (ballbreaker)
	{
		spawn_hit_fx( x, y, (random_func(1,2,true)==0?136:13) );
	}
}

//kirby ability
if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("dspecial_kirby");
    var hurt_spr = sprite_get("dspecial_kirby_hurt");
    var ability_usesfx = sound_get("cannon");
    var ability_proj = sprite_get("steelball2");
	var myicon = sprite_get("steelballhud");
    with enemykirby {
		kirby_ball_left = 2;
	    newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurt_spr);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_usesfx);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 14);
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		//set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_TYPE, 2);
		//set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_FRAME, 1);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 300);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 13);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    }
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && window == 3 && window_timer == get_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH)-1) {
			--kirby_ball_left;
			if (kirby_ball_left <= 0)
			{
				resetcolours = 1
				current_ability = 0;
				spawn_hit_fx( x, y-36, taunt_star );
			}
        }
    }
}

with (oPlayer) // bury code
{
	if (player != other.player)
	{
		if (buriedd > 0)
		{
			--buriedd;
			if (buriedd <= 0 || free)
			{
				buriedd = 0;
				visible = true;
				if (free)
					vsp = -10;
			}
			else
			{
				x += (floor(buriedd/4)%2==0?1:-1);
				old_hsp = 0;
				hsp = 0;
				old_vsp = 0;
				vsp = 0;
				set_state(PS_HITSTUN_LAND);
				visible = false;
				if (buriedd%2 == 0)
				{
					with (other)
					{
						var particle = create_hitbox( AT_FSPECIAL,
										3,
										floor(other.x + random_func(0, 100, true) - 50),
										floor(other.y));
						particle.hsp = random_func(1, 4, true) - 2;
						particle.vsp = -random_func(2, 2, true) - 3;
						
					}
				}
			}
		}
	}
}

if (!practicemode && get_training_cpu_action() != CPU_FIGHT)
{
	practicemode = true;
	tuton = true;
}

// menu
if (practicemode)
{
	tutalpha = clamp(tutalpha+(tuton?0.1:-0.1), 0, 1);
	if (tutalpha == 0)
	{
		tutstate = tutstatebuffer;
		tuton = true;
	}
	switch (tutstate)
	{
		case 0:
			if (taunt_pressed)
			{
				tuton = false;
				tutstatebuffer = 1;
			}
			break;
		case 1:
			hitstop = 1;
			hitpause = true;
			old_hsp = 0;
			old_vsp = 0;
			hsp = 0;
			vsp = 0;
			can_fast_fall = false;
			set_state(PS_IDLE_AIR);
			djumps = max_djumps;
			has_airdodge = false;
			aura = false;
			invincible = true;
			invince_time = 1;
			if (special_pressed || attack_pressed)
			{
				clear_button_buffer(PC_SPECIAL_PRESSED);
				clear_button_buffer(PC_ATTACK_PRESSED);
				sound_play(asset_get("mfx_confirm"));
				tuton = false;
				tutstatebuffer = 0;
			}
			else if (left_down)
			{
				holdtimer += 1;
				if (holdtimer % 3 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					switch (tutmenu)
					{
					case 0:
						careeningui = !careeningui;
						break;
					case 1:
						careeningmin = max(-90,careeningmin-1);
						break;
					case 2:
						careeningmax = max(careeningmin,careeningmax-1);
						break;
					case 3:
						runeM = !runeM;
						break;
					case 4:
						puulnocooldown = !puulnocooldown;
						break;
					case 5:
						buryframes = max(0,buryframes-1);
						break;
					case 6:
						burycooldown = max(0,burycooldown-1);
						break;
					}
				}
			}
			else if (right_down)
			{
				holdtimer += 1;
				if (holdtimer % 3 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					switch (tutmenu)
					{
					case 0:
						careeningui = !careeningui;
						break;
					case 1:
						careeningmin = min(careeningmax,careeningmin+1);
						break;
					case 2:
						careeningmax = min(90,careeningmax+1);
						break;
					case 3:
						runeM = !runeM;
						break;
					case 4:
						puulnocooldown = !puulnocooldown;
						break;
					case 5:
						++buryframes;
						break;
					case 6:
						++burycooldown;
						break;
					}
				}
			}
			else if (up_down)
			{
				holdtimer += 1;
				if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					tutmenu = max(tutmenu-1,0);
				}
			}
			else if (down_down)
			{
				holdtimer += 1;
				if (holdtimer % 6 == 1 && (holdtimer > 30 || holdtimer == 1))
				{
					sound_play(asset_get("mfx_option"));
					tutmenu = min(tutmenu+1,noofitems-1);
				}
			}
			else
			{
				holdtimer = 0;
			}
			break;
	}
}