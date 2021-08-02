// taunt menu
if (practice)
{
	var noOfPatches = 6;
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
			MenuNav(3, 1, 6);
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
for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0) rollArray[i].rollAlpha--;

// transcend
transcounter = clamp((((get_player_color(player) == 6) && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// uspecial
if (!free || state == PS_WALL_JUMP) uspecBan = false;
if (uspecBan) move_cooldown[AT_USPECIAL] = 2;

// fspecial
move_cooldown[AT_FSPECIAL] = 2;
if (fspecActive)
{
	++fspecHoldTimer;
	move_cooldown[AT_NSPECIAL] = 2;
	move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_DSPECIAL] = 2;
	move_cooldown[AT_FTILT] = 2;
	move_cooldown[AT_DTILT] = 2;
	move_cooldown[AT_UTILT] = 2;
	move_cooldown[AT_JAB] = 2;
	move_cooldown[AT_DATTACK] = 2;
	move_cooldown[AT_TAUNT] = 2;
	move_cooldown[AT_FSTRONG] = 2;
	move_cooldown[AT_DSTRONG] = 2;
	move_cooldown[AT_USTRONG] = 2;
	move_cooldown[AT_UAIR] = 2;
	move_cooldown[AT_DAIR] = 2;
	move_cooldown[AT_FAIR] = 2;
	move_cooldown[AT_BAIR] = 2;
	move_cooldown[AT_NAIR] = 2;
	if (state == PS_ATTACK_GROUND ||
		state == PS_ATTACK_AIR ||
		state_cat == SC_HITSTUN ||
		state == PS_AIR_DODGE ||
		state == PS_WAVELAND ||
		state == PS_PRATFALL ||
		state == PS_PRATLAND ||
		state == PS_RESPAWN ||
		state == PS_DEAD ||
		state == PS_PARRY_START
	)
	{
		fspecActive = false;
	}
	else if ((!special_down || fspecHoldTimer > fspecHoldTime) && can_special && fspecHoldTimer > 10)
	{
        hurtboxID.sprite_index = asset_get("empty_sprite");
		visible = false;
		sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
		fspecActive = false;
		attack = AT_FSPECIAL;
		set_state(PS_ATTACK_GROUND);
		hsp = fspecDist-48*spr_dir;
		spawn_hit_fx(x, y-floor(char_height/2), 28);
		if (free && place_meeting(x+hsp,y,asset_get("par_block"))) for (var i = 0; i < 64; ++i) if (!place_meeting(x+hsp,y-i,asset_get("par_block")))
		{
		    y -= i;
		    break;
		}
        if (left_down ^^ right_down)
            spr_dir = -left_down + right_down;
	}
	else
	{
		fspecDist += fspecDir*fspecSpeed;
		fspecDist = clamp(fspecDist, -fspecMaxDist, fspecMaxDist);
	}
}
else
{
	if (can_special)
	{
		if (is_special_pressed(DIR_LEFT) && is_special_pressed(DIR_RIGHT))
		{
			attack = (nspecCharge > nspecChargeMax+10)?AT_NSPECIAL_2:AT_NSPECIAL;
			set_state(PS_ATTACK_GROUND);
		}
		else if (is_special_pressed(DIR_LEFT) ^^ is_special_pressed(DIR_RIGHT))
		{
			fspecActive = true;
			fspecDir = -is_special_pressed(DIR_LEFT) + is_special_pressed(DIR_RIGHT);
			fspecDist = 0;
			fspecHoldTimer = 0;
			sound_play(asset_get("sfx_forsburn_disappear"));
		}
	}
}

// snowflake
with (obj_article1) if (player_id == other && returning && player_id.move_cooldown[AT_DSPECIAL] < 2)
	player_id.move_cooldown[AT_DSPECIAL] = 2;
if (!visible)
{
	flake.hsp = 0;
	flake.vsp = 0;
}
else if (!flake.isOut)
{
	flake.hsp = (x-flake.x-(20+floor(char_height/3))*spr_dir)/3;
	flake.vsp = (y-flake.y-floor(char_height/3.5)-16)/3;
}
else if (attack != AT_DSPECIAL || !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
	flake.hsp /= 1.3;
	flake.vsp /= 1.3;
}
flake.x += flake.hsp;
flake.y += flake.vsp;
if ((move_cooldown[AT_DSPECIAL] == 0 || flake.isOut) && get_gameplay_time() % 4 == 0)
{
	var angle = random_func(0, 360, 0);
	var dist = random_func(1, 15, 0)-30;
	var p = spawn_hit_fx(flake.x+lengthdir_x(dist, angle), flake.y+lengthdir_y(dist, angle), particle);
	p.depth = depth+1;
}

// hue
hue+=3;
hue%=255;

if ("fs_using_final_smash" in self && fs_using_final_smash)
{
	if (aura == 0) aura = 300;
	else if (aura == 1) fs_using_final_smash = false;
}
if (aura > 0) aura--;

// topcustom
if (!free && place_meeting(x, y, asset_get("par_block")))
{
	topcustom = y;
}

//init_shader();

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
	}
	return 0;
}