switch (attack)
{
	case AT_NSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
}

switch (attack)
{
	case AT_TAUNT:
        if (practice&&object_index!=oTestPlayer)
        {
            if (state_timer == 1 && menuState == 0) menuStateBuffer = 1;
            hsp = 0;
            vsp = 0;
        }
        if (window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) && (attack_invince || taunt_down)) window_timer--;
        break;

	case AT_JAB:
        if (window == 4)
        {
            jabLoop = 2;
            jabHeld = true;
        }
		if (window == 5)
		{
            if (!attack_down&&!attack_pressed) jabHeld = false;;
            if (window_timer == get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH)-1)
            {
                if (!jabHeld)
                    jabLoop--;
                if (jabLoop > 0)
                {
			        attack_end();
                    window_timer = 0;
                }
            }
            if (window_timer % 9 == 2)
            {
                sound_play(asset_get("sfx_swipe_weak2"));
            }
		}
		break;

    case AT_FSTRONG:
        if (state_timer == 6) StrongReturn();
        if (window == 2 || window == 3) draw_indicator = false;
        if (window == 2 && window_timer == 1) spawn_base_dust(x-10*spr_dir, y, "dash_start", spr_dir);
        if ((window == 2 || window == 3) && window_timer % 2 == 0 && !hitpause)
        {
            for (var i = 0; i < 2; ++i)
            {
                var effect = slash1;
                switch (random_func(i, 4, 1))
                {
                    default:
                    case 0:
                        effect = slash1;
                        break;
                    case 1:
                        effect = slash2;
                        break;
                    case 2:
                        effect = slash3;
                        break;
                    case 3:
                        effect = slash4;
                        break;
                }
                var owo = spawn_hit_fx(x+50*spr_dir, y - 36, effect); owo.depth = -10;
            }
        }
        break;

    case AT_DSTRONG:
        if (state_timer == 6) StrongReturn();
        break;

    case AT_USTRONG:
        if (state_timer == 6) StrongReturn();
        if (window == 3 && window_timer == 6) hsp = 10*spr_dir;
        break;

    case AT_DTILT:
        if (window == 2 && window_timer == 1)
            spawn_base_dust(x+60*spr_dir, y, "dash", -spr_dir);
        break

    case AT_DATTACK:
        if (window == 3 && window_timer == 4)
            spawn_base_dust(x+30*spr_dir, y, "dash", -spr_dir);
        if (was_parried) hsp = 0;
        break

    case AT_DAIR:
        can_jump = state_timer >= 30;
        can_shield = state_timer >= 30 && free;
        if (state_timer >= 30 && is_special_pressed(DIR_UP))
            set_attack(AT_USPECIAL);
        if (window == 4 && window_timer == 1)
            spawn_base_dust(x+6*spr_dir, y, "dair", spr_dir);
        if (state_timer <= 20 && (down_down||down_stick_down))
            fall_through = true;
        break

    case AT_FAIR:
        if (was_parried) window = 12;
        else if (window < 8 && has_hit_player && hitpause) Grab(40, 0, 2, 2);
        if (down_down) vsp += 0.2;
        hsp = min(3, hsp);
        can_fast_fall = false;
        break;

    case AT_UAIR:
        hud_offset = 54;
        if (window == 1) vsp /= 1.5;
        StallCooldown();
        break;

    case AT_NSPECIAL:
        if (state_timer == 1)
        {
            nspecHeld = 0;
            if (guitar.state != 0 && guitar.state != 7)
                guitar.newState = 5;
            else
            {
                var owo = spawn_hit_fx(x, y-32, nspec); owo.depth = -10;
                guitar.newState = 7;
                guitar.noHit = true;
                sound_play(sound_get("guitar"));
            }
        }
        if (guitar.state == 7 && !hitpause)
        {
            if (window == 2 && window_timer == 1) create_hitbox(AT_NSPECIAL, 2, x, y-32);
            if (nspecHeld > 20)
            {
                guitar.newState = 1;
                tutDoneAdv[5] = true;
            }
        }
        tutDone[3] = true;
        if (special_down) nspecHeld++;
        break;

    case AT_FSPECIAL:
        DivideSpeed(1.2);
        if (window == 1 && window_timer == 1) guitar.newState = 2;
        if (free && window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)-1) vsp = -6;
        StallCooldown();
        break;

    case AT_DSPECIAL:
        tutDone[2] = true;
        switch (window)
        {
            case 1:
                DivideSpeed(1.2);
                if (window_timer == 4 && guitar.state == 0) guitar.newState = 6;
                break;
            case 2:
				var angle = point_direction(x, y,  guitar.x, guitar.y);
                var spe = guitar.state==7?5:40;
				hsp = lengthdir_x(spe, angle);
				vsp = lengthdir_y(spe, angle);
                if (point_distance(x, y,  guitar.x, guitar.y) < 50)
                {
                    guitar.newState = 7;
                    guitar.noHit = true;
                }
                else if (window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH))
                {
                    DivideSpeed(8);
                    set_state(PS_PRATFALL);
                }
                break;
            case 3:
                can_shield = true;
                if (shield_pressed && has_airdodge) tutDoneAdv[3] = true;
                DivideSpeed(1.5);
                fall_through = down_down;
                if (!hitpause && window_timer == 24) {var owo = spawn_hit_fx(x, y, dspec); owo.depth = -10;}
                break;
            case 4:
                fall_through = down_down;
                if (window_timer >= 8 && is_special_pressed(DIR_UP))
                    set_attack(AT_USPECIAL);
                break;
            case 5:
                guitar.newState = 0;
                if (window_timer == 1)
                {
                    spawn_base_dust(x+6*spr_dir, y, "dair", spr_dir);
                    sound_play(asset_get("sfx_blow_heavy2"));
                }
        }
        break;

    case AT_USPECIAL:
        switch (window)
        {
            case 1:
                DivideSpeed(2);
                reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
                can_shield = true;
                if (shield_pressed && has_airdodge)
                {
                    guitar.newState = 3;
                    tutDoneAdv[0] = true;
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                }
                free = true;
                break;
            case 2:
                if (window_timer == 1)
                {
                    if (special_down || guitar.state == 0 || guitar.state == 7)
                    {
                        guitar.newState = 3;
                        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
                    }
                    else
                        tutDone[1] = true;
                }
                can_shield = true;
                if (shield_pressed && has_airdodge) tutDoneAdv[0] = true;
                free = true;
                break;
            case 3:
                if (window_timer == 1)
                {
				    var angle = point_direction(guitar.x, guitar.y,  x, y);
				    hsp = lengthdir_x(11, angle);
				    vsp = lengthdir_y(11, angle);
                    guitar.newState = 7;
                    guitar.noHit = true;
                }
                break;
        }
        break;
}

#define StrongReturn()
{
    guitar.newState = 7;
    guitar.noHit = (guitar.state == 0);
    tutDone[0] = true;
    tutDoneAdv[2] = (guitar.state == 2);
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
        case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
        case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
        case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
        case "doublejump": 
        case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
        case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
        case "land": dlen = 24; dfx = 0; dfg = 2620; break;
        case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
        case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
        case "dair":dlen = 10; dfx = 7; dfg = 2626; break;
    }
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
    return newdust;
} // Supersonic

#define Grab(xpos, ypos, xsmooth, ysmooth)
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

#define DivideSpeed(_amount)
{
    hsp /= _amount;
    vsp /= _amount;
}

#define StallCooldown()
{
    move_cooldown[AT_FSPECIAL] = attack==AT_FSPECIAL?40:15;
    move_cooldown[AT_UAIR] = 15;
}