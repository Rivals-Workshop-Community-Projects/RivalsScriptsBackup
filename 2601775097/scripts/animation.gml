//animation

////////////////////////////////////////////////////////////// SETUP STUFF //////////////////////////////////////////////////////////////

// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

//theikos state specific animations
if (theikos_type > 0)
{
	if (sprite_index == sprite_get("idle"))
	{
		sprite_index = sprite_get("theikos_idle");
		image_index = state_timer * idle_anim_speed;
	}
	if (sprite_index == sprite_get("dash"))
	{
		sprite_index = sprite_get("theikos_dash");
		image_index = state_timer * dash_anim_speed;
	}
}

////////////////////////////////////////////////////////// ANIMATE //////////////////////////////////////////////////////////

//halloween costume
if ((sprite_index == sprite_get("theikos_idle") || sprite_index == sprite_get("idle")) && bibical)
{
	sprite_index = sprite_get("bibical_idle");
	image_index = state_timer * idle_anim_speed;
}

if (state == PS_IDLE && state_timer == 0)
{
	if (sprite_index == wait_sprite) waiting = true;
	else waiting = false;
}
else if (state != PS_IDLE) waiting = false;

//genesis wait animation "stops responding"
if (alt_cur == 19)
{
	if (waiting)
	{
		sprite_index = sprite_get("idle");
		image_index = 0;
		if (genesis_window_timer < genesis_window_timer_max) genesis_window_timer ++;

		genesis_load_tracker = state_timer;
	}
	else
	{
		if (genesis_window_timer < genesis_window_timer_max*2 && genesis_window_timer > 0) genesis_window_timer ++;
		if (genesis_window_timer >= genesis_window_timer_max*2) genesis_window_timer = 0;
	}
}

switch (state) {
	// ATTACK ANIMATIONS
	case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
		switch (attack)
		{
			case AT_DSTRONG: case AT_DSTRONG_2:
				if (smash_charging)
				{
					image_index = 2 + (strong_charge / 3) % 4;
	                //image_index = 2: starting frame
	                //(strong_charge/3): animation speed
	                //% 4: amount of frames
				}
	            break;
			case AT_USTRONG_2:
				if (smash_charging) image_index = 1 + (strong_charge / 3) % 2;
	            break;
			case AT_DSPECIAL_2: //ember fist
				if (image_index >= 4) image_index = image_index + ember_alter_anim_start;
				if (window == window_last) image_index = 8;
				break;
			case AT_NSPECIAL_2: //accel blitz
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				break;
			case 49: //lord's punishment
				hurtboxID.sprite_index = hurtbox_spr;
	
				//sword animation
	            switch (window)
	            {
	                default:
	                    od_sword_image = 0;
	                    break;
	                case 12: case 13:
	                    od_sword_image = image_index-19;
	                    break;
	                case 14: case 15: case 16: case 17:
						if (od_sword_image < 13)
						{
							sword_timer = state_timer-202;
							od_sword_image += 0.4;
							od_sword_pos[0] = [x-24*spr_dir, y-112];
							od_sword_pos[1] = [ease_cubeInOut(x-24*spr_dir, x-80*spr_dir, sword_timer, 17), ease_cubeInOut(y-112, y-256, sword_timer, 17)];
						}
						if (od_sword_image >= 13) od_sword_image = image_index-13;
	
						if (state_timer >= 240 && state_timer < 255)
						{
							sword_timer = state_timer-240;
							od_sword_pos[0] = [ease_cubeOut(x-24*spr_dir, x+8*spr_dir, sword_timer, 10), ease_cubeOut(y-112, y-88, sword_timer, 15)];
							od_sword_pos[1] = [ease_cubeOut(x-80*spr_dir, x+80*spr_dir, sword_timer, 10), ease_cubeOut(y-256, y-244, sword_timer, 15)];
						}
	
						if (window == 17)
						{
							if (window_timer == 0) od_slash_alpha = 1;
							od_sword_pos[0] = [x-64*spr_dir, y-48];
							od_sword_pos[1] = [x-264*spr_dir, y-96];
						}
	                    break;
	                case 18: case 19:
						sword_timer = state_timer-272;
	                    od_sword_image += 0.2;
						od_sword_pos[0] = [ease_cubeInOut(x-64*spr_dir, x-264*spr_dir, sword_timer, 17), ease_cubeInOut(y-48, y-96, sword_timer, 25)];
	                    break;
	            }
				break;
		}
		spr_angle = 0;
		draw_y = 0;
		break;
	// POINTLESS SHORTCUTS
	case PS_PRATLAND:
		if (extended_parry_lag) image_index = lerp(0, 2, state_timer/clamp((4/45.0) * parry_distance + (160.0/3.0), 60, 100));
		break;
	case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_TECH_BACKWARD: case PS_TECH_FORWARD:
		sprite_index = sprite_get("roll");
		break;
	case PS_TECH_GROUND:
		sprite_index = sprite_get("crouch");
		image_index = floor(lerp(1, 5, state_timer/18));	
		break;
	case PS_HITSTUN: case PS_TUMBLE:
		image_index = hurt_img;
		
		if (state == PS_TUMBLE) hurt_img = 5;
		
		if (hurt_img == 5) 
		{
			//spiphurt spinning cuz i don't wanna make a long strip
			//thanks Muno and Frtoud
			sprite_index = sprite_get("hurt_tumble"); //tf is a spinhurt
		
			rotate_time ++;
			if (rotate_time == 0)
			{
				spr_angle = 0;
				cur_sprite_rot = 0;
				should_rotate = false;
			}
			else if (rotate_time % 10 == 0) should_rotate = true;
			else should_rotate = false;
			if (should_rotate)
			{
				cur_sprite_rot += 90*spr_dir;
				if (abs(cur_sprite_rot) >= 360) cur_sprite_rot = 0;
			}
		
			spr_angle = cur_sprite_rot; 
			draw_y = -40;
		}
		else
		{
			spr_angle = 0;
			draw_y = 0;
		}
		break;
	case PS_HITSTUN_LAND:
		image_index = 5;
		break;
	case PS_FLASHED:
		sprite_index = sprite_get("hurt");
		image_index = 1;
		break;
	case PS_BURIED:
		sprite_index = sprite_get("hurt");
		image_index = 2;
		break;
	default:
		spr_angle = 0;
		draw_y = 0;
		break;
}

//crystalize is seperate because of the damage thing
if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
{
	sprite_index = sprite_get("hurt");
	image_index = 1;
}


if (!hitpause) //dust effects
{
    if (is_attacking)
    {
        switch (attack)
        {
            case AT_UTILT:
                if (window == 3 && window_timer == 0) spawn_base_dust(x, y+10, "jump");
                break;
            case AT_FTILT:
                if (window == 3 && window_timer == 0) spawn_base_dust(x+(48*spr_dir), y, "dash_start", -1*spr_dir);
                break;
            case AT_FSTRONG:
                if (window == 3 && window_timer == 1) spawn_base_dust(x-(16*spr_dir), y, "dash_start");
                break;
            case AT_UTHROW: //force leap
                if (window == 4 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, angle_saved-90);
                break;
            case AT_EXTRA_2: //light hookshot
                if (window == 5 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, -80*spr_dir);
                break;
            case AT_EXTRA_1: //chasm burster
                if (window_timer == 0)
                {
                    switch (window)
                    {
                        case 1:
                            if (free) spawn_base_dust(x, y, "djump");
                            break;
                        case 4:
                            spawn_base_dust(x-(16*spr_dir), y, "dash_start");
                            break;
                    }
                }
                break;
            case AT_FSTRONG_2:
                if ((window == 3 && window_timer == 0 || window == 7 && window_timer == 4) && !free) spawn_base_dust(x, y, "dash_start");
                break;
        }
    }

    //rune A airdash dust
    if (rune_A_active && state == PS_AIRDASH && state_timer == 1) spawn_base_dust(x-32*spr_dir, y-28, "djump", 0, -85*spr_dir);
}
#define spawn_base_dust
{
    /// spawn_base_dust(x, y, name, dir = 0, angle = 0)
    ///spawn_base_dust(x, y, name, ?dir, ?angle)

    //This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;

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
    }
    var newdust = spawn_dust_fx(floor(x),floor(y),asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = angle; //sets the angle of the dust sprite
    return newdust;
}