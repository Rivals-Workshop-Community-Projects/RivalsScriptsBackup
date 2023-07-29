// taunt menu
if (practice)
{
	var noOfPatches = 32;
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
			MenuNav(7, 0, MainMenuNext());
			break;
		case 2: // Basic Tut Menu
			Invince();
			MenuNav(3, 1, 5);
			break;
		case 3: // Adv Tut Menu
			Invince();
			MenuNav(4, 1, 6);
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
		case 8: // Lore
			Invince();
			MenuNav(0, 1, -1);
			break;
	}
}

// despawn on hit
if (!canDespawn && state_cat != SC_HITSTUN && state != PS_TUMBLE) canDespawn = true;

// transcend
transcounter = clamp(((get_player_color(player) == 7 && (state==PS_SPAWN||((attack == AT_TAUNT || attack == AT_TAUNT_2) && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// meow
if (meowID != noone && (attack != AT_TAUNT_2 || state != PS_ATTACK_GROUND))
{
	sound_stop(meowID);
	meowID = noone;
}

// fspec
if (!free) grabDjump = true;
if (upThrow > 0) upThrow--;

// uspec
if (uspecHit > 0) uspecHit--;

// dspec
if (free && state != PS_WALL_JUMP && state_cat != SC_HITSTUN && move_cooldown[AT_DSPECIAL] != 0) move_cooldown[AT_DSPECIAL] = 2;
else move_cooldown[AT_DSPECIAL] = 0;

// intro
if (state == PS_SPAWN)
{
	if (state_timer == 50) sound_play(sound_get("fspec"));
	if (state_timer == 68)
	{
		aura = ("temp_level" in self && temp_level == 1) || aura || auraMeter >= 67;
		gpu_set_alphatestfunc(aura);
		if (aura)
		{
			sound_play(asset_get("sfx_absa_uair"));
			shake_camera(8, 6);
	        spawn_hit_fx(x, y-42, 157);
		}
	}
	else if (state_timer < 68 && auraMeter != -1) auraMeter = taunt_down?auraMeter+1:-1;
	else if (state_timer == 1) auraMeter = 0;
}
else if (state == PS_LANDING_LAG && aura) set_state(PS_IDLE);

// afterimage
if (afterImageTimer > 0)
{
    if (afterImageTimer % 2 == 0) afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

// hue
++hue;
hue%=255;
init_shader();

#define MenuNav(_maxv, _prevState, _nextState)
{
	
	if (shield_pressed && !shield_counter) || (special_down && !special_counter)
	{
		menuStateBuffer = _prevState;
		sound_play(sfxCancel, 0, 0, 2);
		if (_prevState == 0)
		{
			window = 3;
			window_timer = 0;
		}
	}
	else if (attack_down && !attack_counter && _nextState > 0)
	{
		sound_play(sfxAccept, 0, 0, 2);
		menuStateBuffer = _nextState;
	}
	else if (taunt_pressed && menuStateBuffer == menuState)
	{
		sound_play(sfxCancel, 0, 0, 2);
		menuStateBuffer = 0;
		window = 3;
		window_timer = 0;
	}
	else if (up_down && _maxv > 1)
	{
		++holdTimer;
		if (holdTimer % 6 == 1 && (holdTimer > 30 || holdTimer == 1))
		{
			sound_play(sfxSelect, 0, 0, 2);
			tutMenu = max(tutMenu-1,0);
		}
	}
	else if (down_down && _maxv > 1)
	{
		++holdTimer;
		if (holdTimer % 6 == 1 && (holdTimer > 30 || holdTimer == 1))
		{
			sound_play(sfxSelect, 0, 0, 2);
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
		case 5:
			if (attack_down && !attack_counter)
			{
				instance_create(x, y-30, "obj_article1");
				sound_play(asset_get("mfx_star"));
			}
			break;
		case 6:
			if (attack_down && !attack_counter)
			{
				set_attack(49);
				menuStateBuffer = 0;
			}
			break;
	}
	return 0;
}