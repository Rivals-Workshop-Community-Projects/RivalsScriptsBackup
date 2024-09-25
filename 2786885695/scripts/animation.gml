//animation

////////////////////////////////////////////////////////////// SETUP STUFF //////////////////////////////////////////////////////////////

//HURTBOX LOGIC
switch (state)
{
	case PS_DASH: case PS_DASH_START: case PS_DASH_TURN: case PS_DASH_STOP:
		hurtboxID.sprite_index = sprite_get("hurtbox_dash");
		break;
	case PS_CROUCH:
		hurtboxID.sprite_index = crouchbox_spr;
		break;
	case PS_RESPAWN: case PS_DEAD:
		hurtboxID.sprite_index = asset_get("empty_sprite");
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		if (attack != AT_NSPECIAL && attack != AT_USPECIAL)
		{
			if (get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0 && free) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
			else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}
		break;
	default:
		if (hurtboxID.dodging) hurtboxID.sprite_index = asset_get("empty_sprite");
		else hurtboxID.sprite_index = hurtbox_spr;
		break;
}

// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;


////////////////////////////////////////////////////////// STATE SHENANIGANS //////////////////////////////////////////////////////////

switch (state)
{
	case PS_IDLE: //wait animation hurtbox because she is shifted to the side too much
		if (sprite_index == wait_sprite)
		{
			wait_timer ++;
			if (image_index >= 1 && image_index <= 10) hurtboxID.sprite_index = sprite_get("hurtbox_wait");
		}
		else wait_timer = 0;
		break;
	case PS_DASH_START: //play dash start sound
		sound_stop(asset_get("sfx_dash_start"));
		if (state_timer == 1) sound_play(dash_sound);
		break;
	case PS_PRATLAND: //plays the parry stun animation right - thanks Frtoud!
		if (extended_parry_lag) image_index = lerp(0, 2, state_timer/clamp((4/45.0) * parry_distance + (160.0/3.0), 60, 100));
		break;
	case PS_LANDING_LAG: //unique landing lag animation for fspec
		if (attack == AT_FSPECIAL)
		{
			sprite_index = sprite_get("tech");
			image_index = lerp(0, 3, state_timer/landing_lag_time);
		}
		break;
	case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_TECH_BACKWARD: case PS_TECH_FORWARD: //unite roll animations
		sprite_index = sprite_get("roll");
	case PS_TECH_GROUND:
		if (hurtboxID.dodging) invincible = true;
		break;
	case PS_AIR_DODGE: //prevents keqing from using the airdodge's first sprite when doing a wavedash
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
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
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR: //attack stuff
		switch (attack)
		{
			case AT_USTRONG: //make the nametag go higher
				if (window == 4 || window == 5 && window_timer <= 12) hud_offset = lerp(hud_offset, 110, 0.5);
			case AT_FSTRONG: case AT_DSTRONG: //strong charging but with physics (also applies to ustrong)
				if (window == 3)
				{
					if (strong_charge > 8) image_index = 5;
					else image_index = 3+strong_charge/4;
				}
				break;
			case AT_DATTACK: //here too
				if (window == 3 || window == 4 && window_timer < 4) hud_offset = lerp(hud_offset, 80, 0.1);
				break;
			case AT_NSPECIAL: //nspec aiming sprites
				if (image_index == 3)
				{
					hurtboxID.sprite_index = sprite_get("hurtbox_nspec");

					if (!free) sprite_index = sprite_get("nspecial_rot");
					else sprite_index = sprite_get("nspecial_rot_air");

					if (spr_dir) image_index = ceil((marker_angle-22.5)/45);
					else image_index = ceil((marker_angle-180-22.5)/45)*spr_dir;
				}
				if (window >= 3)
				{
					if (!free) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
					else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
				}
				break;
			case AT_USPECIAL:
				if (window == 3)
				{
					sprite_index = empty;
					hurtboxID.sprite_index = sprite_get("hurtbox_uspec");
				}
				else
				{
					sprite_index = free ? sprite_get("uspecial_air") : sprite_get("uspecial");
					hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE);
				}
				break;
			/////////////////////////////////////////////////////////////////////////////
			//will probably move this to attack update imo
			case 2: //intro hud offset
				if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1);
				break;
		}
		break;
	// gliding
	case PS_IDLE_AIR:
		if (wind_glider_toggle)
		{
			sprite_index = sprite_get("pratfall");
			image_index = state_timer*pratfall_anim_speed;
		}
		break;
}

//olympia stun
if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
{
	sprite_index = sprite_get("hurt_crystal");
	small_sprites = 1;
}
else small_sprites = 0;

if (runeE_special_dash) sprite_index = asset_get("empty_sprite");


//dust effects
if (!hitpause && is_attacking) switch (attack)
{
    case AT_JAB:
        switch (window)
        {
            case 8:
                if (window_timer == 1) spawn_base_dust(x, y, "dash_start", spr_dir);
                if (window_timer == 6) spawn_base_dust(x + 32 * spr_dir, y, "dash", -spr_dir);
                break;
            case 10:
                if (window_timer == window_end-1) spawn_base_dust(x, y, "jump", spr_dir);
                break;
            case 14:
                if (window_timer == 1) spawn_base_dust(x, y, "land", spr_dir);
                break;
        }
        break;
    case AT_FTILT:
        if (window_timer == 0) switch (window)
        {
            case 1:
                spawn_base_dust(x, y, "dash", spr_dir);
                break;
            case 2:
                spawn_base_dust(x + 16 * spr_dir, y, "walk", -spr_dir);
                break;
        }
        break;
    case AT_FSTRONG:
        if (window_timer == 1) switch (window)
        {
            case 4:
                spawn_base_dust(x + 48 * spr_dir, y, "dash_start", -spr_dir);
                break;
            case 5:
                spawn_base_dust(x - 32 * spr_dir, y, "dash_start", spr_dir);
                break;
        }
        break;
    case AT_DAIR:
        if ((window == 2 || window == 1) && !free)
        {
            spawn_base_dust(x, y, "land");
            spawn_base_dust(x + 16 * spr_dir, y, "dash_start", -spr_dir);
            spawn_base_dust(x + 16 * -spr_dir, y, "dash_start", spr_dir);
        }
        break;
    case AT_USPECIAL:
        if (window == 2 && window_timer == window_end-1 && uspec_count == 0)
        {
            spawn_base_dust(x, y, free?"doublejump":"jump");
        }
        break;
    case AT_FSPECIAL:
        if (window == 1 && window_timer == 0)
        {
            spawn_base_dust(x, y, free?"doublejump":"dash_start", spr_dir, free?-30*spr_dir:0);
        }
        break;
    case AT_DSPECIAL:
        if (!free && window == 3 && window_timer == 0)
        {
            spawn_base_dust(x, y, "dash_start", -spr_dir);
        }
        break;
    case 49: //final smash
        if (window_timer == 0)
        {
            if (window == 3) spawn_base_dust(x, y, "jump");
            if (window == 5) spawn_base_dust(x, y, "land");
        }
        break;
}

//written by supersonic, angle variable added by bar-kun
#define spawn_base_dust
{
    /// spawn_base_dust(x, y, name, dir = 0)
    /// spawn_base_dust(x, y, name, ?dir, ?angle)
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
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = angle; //sets the angle of the dust sprite
    return newdust;
}