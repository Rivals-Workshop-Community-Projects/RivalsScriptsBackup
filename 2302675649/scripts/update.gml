// taunt menu
if (practice)
{
	var noOfPatches = 26;
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
			MenuNav(4, 0, MainMenuNext());
			break;
		case 2: // Basic Tut Menu
			Invince();
			MenuNav(4, 1, 5);
			break;
		case 3: // Adv Tut Menu
			Invince();
			MenuNav(8, 1, 6);
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
	}
}

// hud
char_height += (state==PS_CROUCH&&down_down)||(state==PS_ATTACK_GROUND&&attack==AT_DTILT)?-5:5;
char_height = clamp(char_height, charHeightCrouch, charHeightStand);

// roll vfx
for (var i = 0; i < 6; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0) rollArray[i].rollAlpha--;

// jump strong timer
if (jsTimer > 0) jsTimer--;
if (state_timer == 0 && (state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP)) jsTimer = jsMax;

// jump vfx
if (jsTimer > 0) jsArray[jsTimer-1]={jsSprite:sprite_index,jsImage:image_index,jsX:x,jsY:y,jsDir:spr_dir,jsAlpha:10};
for (var i = 0; i < 10; ++i) if (jsArray[i] != -1 && jsArray[i].jsAlpha > 0) jsArray[i].jsAlpha--;

// uspec vfx
for (var i = 0; i < 10; ++i) if (uspecArray[i] != -1 && uspecArray[i].uspecAlpha > 0 && !hitpause) uspecArray[i].uspecAlpha--;

// slice vfx
if (vfxSlice.sliceTimer > 0) vfxSlice.sliceTimer--;

// slice vfx
if (dspecImage != -1 && dspecImage.alpha > 0) dspecImage.alpha--;

if (thonkObj != -1 && thonkObj.alpha > 0) thonkObj.alpha--;

// airdodge effect
if (state == PS_AIR_DODGE && state_timer == 0)
{
	airdodgeStart.x = x;
	airdodgeStart.y = y;
}

// portal flash
if (teleFlash > 0) teleFlash--;

// portal vfx
with (oPlayer)
{
	if ("afterImageLonin" in self && afterImageLonin != -1 && afterImageLonin.lonin == other.player)
	{
		afterImageLonin.alpha--;
		if (afterImageLonin.alpha <= 0) afterImageLonin = -1;
	}
	if ("shakeObj" in self && shakeObj != -1 && shakeObj.lonin == other.player && shakeObj.timer > 0)
	{
		if (shakeObj.timer % 5 == 0) x += shakeObj.timer%2==0?-6:6;
		shakeObj.timer--;
	}
	if ("outlineState" in self && outlineState != 0 && state_cat != SC_HITSTUN) outlineState = 0;
}

// transcend
transcounter = clamp((((get_player_color(player) == 1 || get_player_color(player) == 20) && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// hue
hue+=3;
hue%=255;

// sounds
switch (state)
{
	case PS_SPAWN:
		if (state_timer == 68)
		{
			sound_play(sound_get("button"));
			aura = ("temp_level" in self && temp_level == 1) || aura || auraMeter == 67 || get_match_setting(SET_TURBO);
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
		break;
	case PS_DASH_START:
	case PS_DASH_TURN:
		if (state_timer == 4) PlayRandomStep();
		break;
	case PS_DASH:
		if (state_timer % 12 == 8) PlayRandomStep();
		break;
	case PS_WALK:
		if (state_timer % 22 == 14) PlayRandomStep();
		break;
	default:
		break;
}

// runes
if (has_rune("A") && jsTimer == 0) jsTimer = 10;

init_shader();

#define PlayRandomStep()
{
	if (!hitpause)
	{
		sfxname = "step";
		sfxname += string(random_func(0, 4, true)+1);
		sound_play(sound_get(sfxname));
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
		sound_play(sound_get("select2"), 0, 0, 2);
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
			sound_play(sound_get("select"), 0, 0, 2);
			tutMenu = max(tutMenu-1,0);
		}
	}
	else if (down_down && _maxv > 1)
	{
		++holdTimer;
		if (holdTimer % 6 == 1 && (holdTimer > 30 || holdTimer == 1))
		{
			sound_play(sound_get("select"), 0, 0, 2);
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
	}
	return 0;
}