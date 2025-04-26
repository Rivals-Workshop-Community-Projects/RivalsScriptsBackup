// taunt menu
if (practice)
{
	var noOfPatches = 11;
	tutAlpha = clamp(tutAlpha+(tutOn?0.1:-0.1), 0, 1);
	if (menuStateBuffer != menuState)
	{
		tutOn = false;
		if (tutAlpha == 0)
		{
			if (menuStateBuffer != 0 && attack != AT_EXTRA_1 && state != PS_ATTACK_GROUND && !free) set_attack(AT_EXTRA_1);
			if ((attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) || menuStateBuffer == 0)
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
char_height += (state==PS_CROUCH&&down_down)?-5:5;
char_height = clamp(char_height, charHeightCrouch, charHeightStand);

// roll vfx
for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0) rollArray[i].rollAlpha--;

// transcend
transcounter = clamp((((get_player_color(player) == 8) && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// sfx
if (holidayID != noone && (attack != AT_TAUNT_2 || state != PS_ATTACK_GROUND))
{
	sound_stop(holidayID);
	holidayID = noone;
}
if (graveID != noone && (attack != AT_DSPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)))
{
	sound_stop(graveID);
	graveID = noone;
}

// fspec
if (fspecMeter.charge < fspecMeter.chargeMax)
{
	if ((attack != AT_FSPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) && get_gameplay_time()%5==0) fspecMeter.charge++;
	fspecMeter.opacity = min(fspecMeter.opacity+0.1,1);
}
else fspecMeter.opacity = max(fspecMeter.opacity-0.1,0);

// uspecial
if (!free || state == PS_WALL_JUMP) dspecBan = false;
if (dspecSpawnBan > 0) dspecSpawnBan--;
if (!free) grabDjump = true;
if (dspecBan && move_cooldown[AT_DSPECIAL] < 2) move_cooldown[AT_DSPECIAL] = 2;
if (state == PS_PRATFALL) can_fast_fall = true;

// hitbox_init for physicals too
with (asset_get("pHitBox")) if (player_id == other && "hasHitCrystal" not in self)
{
	if (attack == AT_UAIR && hbox_num < 4 && other.hasHitUAir) hasHitCrystal = true;
	else hasHitCrystal = false;
}

// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
	var obj = afterimage_array[i];
	if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

// aura
if (state == PS_SPAWN && (canAura || ("temp_level" in self && temp_level == 1)))
{
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

// frostbite
var hasRuneA = has_rune("A");
with (oPlayer) if (player != other.player && noelleFrostbiteID == other)
{
	if (state == PS_RESPAWN)
	{
		noelleFrostbite = 0;
		noelleFrostbiteID = noone;
		noelleFrostgrave = 0;
	}
	else if (noelleFrostgrave > 0 && !hitpause)
	{
		noelleFrostgrave--;
		if (state != PS_HITSTUN || noelleFrostgrave <= 0 || noelleEarlyPop)
		{
			noelleFrostgrave = 0;
			var icebreaksfx = noone;
			with (other)
			{
				CrystalBreak(other.x, other.y, other.hsp, other.vsp);
				icebreaksfx = sound_get("icebreak");
			}
			hurtboxID.sprite_index = hurtbox_spr;
			sound_play(asset_get("sfx_ice_shatter_big"));
			sound_play(icebreaksfx);
			if (!noelleEarlyPop)
			{
				set_state(PS_IDLE_AIR);
				vsp = -6;
			}
			noelleEarlyPop = false;
		}
		else
		{
			var crystalhbox = noone;
			with (other) crystalhbox = sprite_get("crystal_hurt");
			hurtboxID.sprite_index = crystalhbox;

			if (noelleFrostgrave % 2 == 0)
			{
				if (noelleFrostgrave % 8 == 0) with (other)
				{
					var angle = random_func(0, 360, 0);
					var dist = random_func(1, 30, 0)-60;
					var p = spawn_hit_fx(other.x+lengthdir_x(dist, angle), other.y+lengthdir_y(dist, angle)-60, sparklefx);
					p.depth = other.depth-1;
				}
				hsp = noelleFrostgraveSpeed.hsp;
				vsp = noelleFrostgraveSpeed.vsp;
				--state_timer;
			}
			noelleFrostgraveSpeed = {hsp:hsp*0.75, vsp:vsp*0.75};
		}
	}
	if (hasRuneA && get_gameplay_time() % 60 == 0 && noelleFrostbite > 0) take_damage(player, other.player, noelleFrostbite);
}

// hue
hue+=1;
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
	case 2: return tutMenu + 2;
	case 3: return 7;
	}
	return 0;
}

#define CrystalBreak(_x, _y, _hsp, _vsp)
{
	for (var i = 1; i <= 7; ++i)
	{
		var icebreak = instance_create(round(_x), round(_y), "obj_article3");
		icebreak.sprite_index = sprite_get("crystalBreak");
		icebreak.image_index = i-1;
		icebreak.dieTime = random_func_2(2+5*i, 4, 0)+8;
		icebreak.hsp = random_func_2(3+5*i, 6, 0)-3+_hsp*0.5;
		icebreak.vsp = random_func_2(4+5*i, 6, 0)-3+_vsp*0.5;
	}
}