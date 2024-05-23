//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD: case PS_TECH_FORWARD: case PS_TECH_BACKWARD:
		sprite_index = sprite_get("roll");
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_FSTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.25 + (strong_charge/500); //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;

					if (strong_charge % 15 == 0 && strong_charge < 30 || image_index < strong_charge/80 + 2)
					{
						sound_play(asset_get("sfx_swipe_heavy2"), false, 0, 1, 1 + strong_charge/60);
					}
				}
				break;
			case AT_NSPECIAL:
				if (image_index > 2 && nspec_turned) image_index += 10;
				break;
			case AT_TAUNT: //far taunt
				if (window < 3) image_index += 4 * taunt_pose;
				break;
			case 2: //intro
				if (window == 1)
				{
					draw_x = lerp(-350, -100, window_timer/(window_end-1)) * spr_dir;
					draw_y = lerp(-200, 0, window_timer/(window_end-1));

					intro_land_start = state_timer;
				}
				else
				{
					var time = 30; //how long it takes her to stop
					if (state_timer - intro_land_start <= time) draw_x = ease_cubeOut(-100, 0, state_timer - intro_land_start, time) * spr_dir;
				}
				break;
		}
		break;
	case PS_PRATLAND:
		sprite_index = sprite_get("pratland");
		
		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math);
		else image_index = lerp(0, image_number, state_timer/prat_land_time);
		break;
	case PS_CROUCH:
		if (right_down || left_down) sprite_index = sprite_get("crawl");
		if (crawl_time > 0) image_index = fake_img;
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1;
		}
	}

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}

if (is_attacking) switch (attack)
{
    case AT_JAB:
        spawn_base_dust(x, y + 4, "dash_start", spr_dir, 0, 5);
        if (was_free && !free) spawn_base_dust(x + hsp * 4, y, "land", spr_dir);
        break;
    case AT_UTILT:
        spawn_base_dust(x, y, "jump", spr_dir, 0, 2, window_end-1);
        break;
    case AT_FTILT:
        spawn_base_dust(x, y, "dash_start", spr_dir, 0, 1, window_end-1);
        break;
    case AT_DTILT:
        spawn_base_dust(x, y, "dash", spr_dir, 0, 1, window_end-1);
        break;
    case AT_DATTACK:
        spawn_base_dust(x - 32 * spr_dir, y - 24, "djump", 0, spr_dir ? 270 : 90, 2, 1);
        if (!free) spawn_base_dust(x + 16 * spr_dir + hsp * 2, y, "dash", -spr_dir, 0, 3, has_hit ? 7 : 11);
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "land", 0, 0, 3, 1);
        break;
    case AT_FSTRONG:
        if (smash_charging) if (strong_charge % 15 == 0 && strong_charge < 30 || image_index < strong_charge/80 + 2) spawn_base_dust(x, y, "land", 0, 0, 2);
        spawn_base_dust(x, y, "dash", 0, 0, 3);
        spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir, 0, 3, 6);
        spawn_base_dust(x, y, "dash_start", 0, 0, 4, window_end-1);
        break;
    case AT_DSTRONG:
        spawn_base_dust(x - 16 * spr_dir, y, "dash_start", 0, 0, 4, 3);
        spawn_base_dust(x + 16 * spr_dir, y, "dash_start", -spr_dir, 0, 4, 3);
        break;
    case AT_NSPECIAL:
        if ((window == 1 && window_timer > window_end/2 || window == 2) && state_timer % 8 == 0)
        {
            spawn_base_dust(x, y + vsp * 2, free ? "djump_small" : "land");
        }

        if (free) spawn_base_dust(x - 32 * spr_dir, y - 24, "djump", 0, spr_dir ? 270 : 90, 3, 1);
        else if (window >= 3 && window <= 5 && state_timer % 3 == 0 && abs(hsp) > 5) spawn_base_dust(x, y, "dash_start");
        break;
    case AT_FSPECIAL:
        if (!free) spawn_base_dust(x - 16 * spr_dir, y, "dash", 0, 0, 3, 0);
        break;
    case AT_USPECIAL:
        if (!free)
        {
            spawn_base_dust(x, y, "jump", 0, 0, 3, 0);
            spawn_base_dust(x - 24 * spr_dir, y, "dash_start", 0, 0, 3, 0);
            spawn_base_dust(x + 24 * spr_dir, y, "dash_start", -spr_dir, 0, 3, 0);
        }
        else spawn_base_dust(x, y, "djump", 0, 0, 3, 0);
        break;
    case AT_TAUNT:
        spawn_base_dust(x + 4 * spr_dir, y, "walk", 0, 0, 1, 7);
        break;
    case 2: //intro
        if (point_distance(x, 0, x + draw_x, 0) > 5 && draw_y == 0 && state_timer % 5 == 0) //slide
        {
            spawn_base_dust(x + draw_x + 48 * spr_dir, y, "dash", -spr_dir, 0);
        }
        spawn_base_dust(x + draw_x + 16 * spr_dir, y, "land", 0, 0, 2);
        break;
}


//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;
    var win = argument_count > 5 ? argument[5] : -10;
    var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
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
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}