// taunt menu
if (practice)
{
	var noOfPatches = 8;
	tutAlpha = clamp(tutAlpha+(tutOn?0.1:-0.1), 0, 1);
	if (menuStateBuffer != menuState)
	{
		tutOn = false;
		if (tutAlpha == 0)
		{
			if (menuStateBuffer != 0 && attack != AT_TAUNT && state != PS_ATTACK_GROUND && !free) set_attack(AT_TAUNT);
			if ((attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) || menuStateBuffer == 0)
			{
				menuState = menuStateBuffer;
				tutPrevMenu = tutMenu;
				tutMenu = menuState==4?noOfPatches-1:0;
				tutOn = true;
				if (menuState == 5) tutDone[tutPrevMenu] = 0;
				else if (menuState == 6) tutDoneAdv[tutPrevMenu] = 0;
			}
		}
	}
	switch (menuState)
	{
		default:
			break;
		case 1: // main menu
			Invince();
			MenuNav(5, 0, MainMenuNext());
			break;
		case 2: // Basic Tut Menu
			Invince();
			MenuNav(4, 1, 5);
			break;
		case 3: // Adv Tut Menu
			Invince();
			MenuNav(6, 1, 6);
			break;
		case 4: // Change Notes
			Invince();
			MenuNav(noOfPatches, 1, -1);
			break;
		case 5: // Basic Tut
			if (tutDone[tutPrevMenu])
			{
				if (menuStateBuffer == menuState) sound_play(asset_get("mfx_player_found"));
				menuStateBuffer = 2;
			}
			break;
		case 6: // Adv Tut
			if (tutDoneAdv[tutPrevMenu])
			{
				if (menuStateBuffer == menuState) sound_play(asset_get("mfx_player_found"));
				menuStateBuffer = 3;
			}
			break;
		case 7: // Discord Link
			Invince();
			MenuNav(0, 1, -1);
			break;
		case 8: // Lore
			Invince();
			MenuNav(0, 1, -1);
			break;
	}
}

// transcend
transcounter = clamp(((get_player_color(player) == 6 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// intro
if (state == PS_SPAWN && state_timer == 18) sound_play(asset_get("sfx_forsburn_cape_swipe"));

// bury code
with (oPlayer)
{
	if (player != other.player)
	{
		if (maybeBury > 0)
		{
			if (free) maybeBury--;
			else
			{
				burieddd = other.buryFrames;
				maybeBury = 0;
			}
		}
		if (burieddd > 0)
		{
			--burieddd;
			if (burieddd <= 0 || free)
			{
				burieddd = 0;
				visible = true;
				if (free)
					vsp = -10;
			}
			else
			{
				x += (floor(burieddd/4)%2==0?1:-1);
				old_hsp = 0;
				hsp = 0;
				old_vsp = 0;
				vsp = 0;
				set_state(PS_HITSTUN_LAND);
				visible = false;
				if (burieddd%2 == 0)
				{
					with (other)
					{
						var particle = create_hitbox( AT_DSPECIAL,
										3,
										floor(other.x + random_func(0, 100, true) - 50),
										floor(other.y));
						particle.hsp = random_func(1, 4, 1) - 2;
						particle.vsp = -random_func(2, 2, 1) - 3;
						
					}
				}
			}
		}
	}
}

#define MenuNav(_maxv, _prevState, _nextState)
{
	
	if (shield_pressed && !shield_counter) || (special_down && !special_counter)
	{
		menuStateBuffer = _prevState;
		sound_play(asset_get("mfx_back"));
		if (_prevState == 0)
		{
			window = 3;
			window_timer = 0;
		}
	}
	else if (attack_down && !attack_counter && _nextState > 0)
	{
		sound_play(asset_get("mfx_confirm"), 0, 0, 2);
		menuStateBuffer = _nextState;
	}
	else if (taunt_pressed && menuStateBuffer == menuState)
	{
		sound_play(asset_get("mfx_back"), 0, 0, 2);
		menuStateBuffer = 0;
		window = 3;
		window_timer = 0;
	}
	else if (up_down && _maxv > 1)
	{
		++holdTimer;
		if (holdTimer % 6 == 1 && (holdTimer > 30 || holdTimer == 1))
		{
			sound_play(asset_get("mfx_option"), 0, 0, 2);
			tutMenu = max(tutMenu-1,0);
		}
	}
	else if (down_down && _maxv > 1)
	{
		++holdTimer;
		if (holdTimer % 6 == 1 && (holdTimer > 30 || holdTimer == 1))
		{
			sound_play(asset_get("mfx_option"), 0, 0, 2);
			tutMenu = min(tutMenu+1,_maxv-1);
		}
	}
	else
	{
		holdTimer = 0;
	}
}

#define Invince()
{
	attack_invince = true;
	invince_time = 1;
}

#define MainMenuNext()
{
	switch (tutMenu)
	{
		case 0:
		case 1:
		case 2:
			return tutMenu + 2;
		case 3:
			return 7;
		case 4:
			return 8;
	}
	return 0;
}