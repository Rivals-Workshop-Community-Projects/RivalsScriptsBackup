// taunt menu
if (practice)
{
	var noOfPatches = 5;
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
			MenuNav(7, 1, 5);
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

// roll vfx
for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0) rollArray[i].rollAlpha--;

// hud
char_height += (state==PS_CROUCH&&down_down)||(state==PS_ATTACK_GROUND&&(attack==AT_DTILT||attack==AT_DTHROW))?-5:5;
char_height = clamp(char_height, charHeightCrouch, charHeightStand);

// hue
hue+=1;
hue%=255;

// transcend
transcounter = clamp((((get_player_color(player) == 8) && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

// afterimage
if (!hitpause)
{
    if (afterImageTimer > 0)
    {
        afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x+draw_x,y:y+draw_y,spr_dir:spr_dir,alpha:10,angle:spr_angle};
        afterImageTimer--;
    }
    for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;
}

if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_NSPECIAL && attack != 49))
{
    sound_stop(asSFX[0]);
    sound_stop(asSFX[1]);
    sound_stop(asSFX[2]);
}

if (state == PS_SPAWN && state_timer == 84) spawn_hit_fx(x,y-28,aura_effect);
if (state == PS_PARRY && state_timer == 1)
{
	var owo = spawn_hit_fx(x+spr_dir*4+hsp*2,y-54,shinestar_effect); owo.depth = depth-1;
}

//if (state == PS_WALL_JUMP || !free) uspecBan = false;
//if (uspecBan) move_cooldown[AT_USPECIAL] = 2;

if (killCard.timer>0) killCard.timer--;
if (instance_exists(hit_player_obj) && (hit_player_obj.state == PS_RESPAWN || hit_player_obj.state == PS_DEAD) && hit_player_obj.state_timer == 0)
{
    killCard.timer = 120;
    killCard.attackPlayer = self;
    killCard.deadPlayer = hit_player_obj;
}

var lastHasBone = hasBone;
hasBone = true;
if (instance_exists(boneObj) && boneObj.state != 2) hasBone = false;
else with (asset_get("pHitBox")) if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1) other.hasBone = false;

if (!lastHasBone && hasBone) sound_play(sound_get("falco_shine"));

if (hasBone)
{
	air_max_speed = air_max_speed_bone;
	leave_ground_max = leave_ground_max_bone;
	jump_change = jump_change_bone;
	air_accel = air_accel_bone;
	initial_dash_speed = initial_dash_speed_bone;
	dash_stop_percent = dash_stop_percent_bone;
}
else
{
	air_max_speed = air_max_speed_rush;
	leave_ground_max = leave_ground_max_rush;
	jump_change = jump_change_rush;
	air_accel = air_accel_rush;
	initial_dash_speed = initial_dash_speed_rush;
	dash_stop_percent = dash_stop_percent_rush;
}

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
	}
	return 0;
}