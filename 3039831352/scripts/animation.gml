//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

//lord X idle
if (sprite_index == sprite_get("idle") && is_fake_x)
{
	sprite_index = sprite_get("lordX_idle");
	image_index = state_timer * fake_x_idle_speed;
}

switch (state)
{
	case PS_IDLE_AIR:
		if (tails_grabbed_sonic)
		{
			sprite_index = sprite_get("tails_hang");
			image_index = state_timer * tails_grab_anim_speed;
		}
		break;
	case PS_WALK:
		if (hugging_wall)
		{
			sprite_index = sprite_get("walk_push");
			image_index = state_timer * walk_anim_speed;
		}
		break;
	case PS_DASH:
		var max_dash = boost_mode || is_super ? 11 : 9;
		if (dash_speed == max_dash)
		{
			sprite_index = sprite_get("dash_max");
			image_index = state_timer * dash_anim_speed;
		}
		break;
	case PS_FIRST_JUMP:
		if (runeC_spinjump)
		{
			sprite_index = sprite_get("runeC");
			image_index = state_timer * 0.5;
		}
		break;
	case PS_DOUBLE_JUMP:
		if (runeC_spinjump)
		{
			sprite_index = sprite_get("jump");
			image_index = lerp(0, image_number-0.0001, (vsp + djump_speed) / (djump_speed + max_fall));
		}
		break;
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD: case PS_TECH_FORWARD: case PS_TECH_BACKWARD:
		sprite_index = sprite_get("roll");

		//roll bounces sonic up a bit
		if (state_timer >= 3)
		{
			if (state_timer < 9) draw_y = ease_cubeOut(0, -12, state_timer-2, 7);
			else if (state_timer < 17) draw_y = ease_cubeIn(-12, 0, state_timer-9, 8);
		}

		//landing lol
		if (state_timer == 17) spawn_base_dust(x, y, "land");
		break;
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jump");
			image_index = 3;
		}
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_FSTRONG:
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.2 + strong_charge/300;
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
				break;
			case AT_DSTRONG:
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.4;
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
				break;
			case AT_NSPECIAL:
				draw_y = -32;
				draw_x = 0;
				spr_angle = 0;

				//when sonic is fast enough he stretches out in the ball form
				if (window == 7 && point_distance(x, y, x+hsp, y+vsp) > 12) image_index += 2;

				if (window == 7 || window == 8)
				{
					if (point_distance(0, 0, hsp, vsp) > 0)
					{
						spr_angle = homing_values[1] - 180 * (spr_dir == -1);
					}
					else if (!free)
					{
						spr_angle = 270 * spr_dir;
						draw_y = -16;
						draw_x = 0 * spr_dir;
					}
					else if (place_meeting(x + hsp, y + vsp - 16, asset_get("par_block")))
					{
						spr_angle = 180 * (spr_dir == -1);
						draw_x = 16;
					}
				}
				break;
			case AT_TAUNT_2: //tricks set code
				image_index += (image_number / 5) * (cur_trick);
				break;
			case 2: //intro
				switch (window)
				{
					case 1: //start
						draw_x = -56 * spr_dir;

						intro_plane_x = x - (280 - ease_backIn(0, 10, window_timer, window_end-1, 5)) * spr_dir;
						intro_plane_y = y - 240 - ease_backIn(0, 15, window_timer, window_end-1, 10);
						intro_plane_img = ease_linear(0, 5, window_timer, window_end-1);
						break;
					case 2: //falling to ground
						draw_x = ease_linear(-56, -32, window_timer, window_end-1) * spr_dir;
						draw_y = ease_quadIn(-130, 0, window_timer, window_end-1);
						break;
					case 4: //pose
						draw_x = ease_quadOut(-32, 0, window_timer, window_end-1) * spr_dir;
						break;
					case 7: //small jump to idle at the end
						if (window_timer < window_end/2) draw_y = ease_cubeOut(0, -8, window_timer, window_end/2);
						else draw_y = ease_cubeIn(-8, 0, window_timer-window_end/2, window_end/2-1);
						break;
				}

				if (window > 1)
				{
					intro_plane_img = (state_timer % 8 < 4) + 6;
					var accel = (state_timer - get_window_value(attack, window, AG_WINDOW_LENGTH))/2;

					intro_plane_x += 6 * spr_dir;
					intro_plane_y -= 11 + accel;
				}
				break;
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
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

	if (bubbled) hurt_img = 1; 	//ranno bubble forces the player into hurt_img 1 too
	if (state == PS_WRAPPED) hurt_img = 4; 	//maypul wrapped state

	//sonic battle knockback
	if (hurt_img == 0 && !hitpause)
	{
		draw_y = -32;
		sprite_index = sprite_get("hurt_kbspin");

		if (state_timer == 0)
		{
			spr_angle = 0; //reset rotation
			hurt_rot_angle = 0;
		}
        else if (state_timer % hurt_rot_time == 0)
	    {
	    	hurt_rot_angle += hurt_rot_degrees * spr_dir;
	    	if (abs(hurt_rot_angle) >= 360) hurt_rot_angle = 0;
	    }
		spr_angle = hurt_rot_angle; 
	}
}

//super sonic sprites
if ("_ssnksprites" in self)
{
	set_skin(uses_super_sprites ? "s" : -1);

	sprite_index = skin_sprite(sprite_index);
	skin_animations();

	if (uses_super_sprites != used_super_sprites)
	{
		set_ui_element(UI_HUD_ICON, sprite_get_skinned("hud_sonic_norm"));
		set_ui_element(UI_HUDHURT_ICON, sprite_get_skinned("hud_sonic_hurt"));

		skin_update_sprites();
		used_super_sprites = uses_super_sprites;
	}
}

//afterimage trail
if (boost_mode || is_super)
{
    cur_aftimg ++;
    if (cur_aftimg >= aftimg_refresh_rate)
    {
        cur_aftimg = 0;

        afterimage.spr = sprite_index;
        afterimage.img = image_index;
        afterimage.xpos = x + draw_x;
        afterimage.ypos = y + draw_y;
        afterimage.dir = spr_dir;
        afterimage.rot = spr_angle;

		//afterimage exceptions
		if ("mamizou_trans" in self && mamizou_trans)
		{
			afterimage.spr = mamizou_transform_spr;
			afterimage.dir = 1;
		}
    }
}
else cur_aftimg = aftimg_refresh_rate;

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
#define skin_update_sprites
{
	set_ui_element(UI_OFFSCREEN, sprite_get_skinned("hud_sonic_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get_skinned("charselect"));
	//win portraits
	switch (alt_cur)
	{
		case 5: //chaos
			set_ui_element(UI_WIN_PORTRAIT, sprite_get_skinned("portrait_ex1"));
			set_ui_element(UI_WIN_SIDEBAR, sprite_get_skinned("result_small_ex1"));
			break;
		case 14: //early access
			set_ui_element(UI_WIN_PORTRAIT, sprite_get_skinned("portrait_ex2"));
			set_ui_element(UI_WIN_SIDEBAR, sprite_get_skinned("result_small_ex2"));
			break;
		case 15: //milestone
			set_ui_element(UI_WIN_PORTRAIT, sprite_get_skinned("portrait_ex4"));
			set_ui_element(UI_WIN_SIDEBAR, sprite_get_skinned("result_small_ex4"));
			break;
		default:
			set_ui_element(UI_WIN_PORTRAIT, sprite_get_skinned("portrait"));
			set_ui_element(UI_WIN_SIDEBAR, sprite_get_skinned("result_small"));

			if (alt_cur == 20 && uses_super_sprites)
			{
				set_ui_element(UI_WIN_PORTRAIT, sprite_get("s_portrait_ex3"));
				set_ui_element(UI_WIN_SIDEBAR, sprite_get("s_result_small_ex3"));
			}
		case 16: //seasonal
			if (get_match_setting(SET_SEASON) == 3) //lord X
			{
				set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex3"));
				set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex3"));
			}
			break;
	}
	set_hitbox_value(0, 2, HG_PROJECTILE_SPRITE, sprite_get_skinned("proj_runeF"));

	if (get_stage_data(SD_ID) == "2237190890")
	{
		pkmn_stadium_front_img = sprite_get(uses_super_sprites ? "pokemon_front_super" : "pokemon_front");
		pkmn_stadium_back_img = sprite_get(uses_super_sprites ? "pokemon_back_super" : "pokemon_back");
		with (obj_stage_main)
		{
			back_changed = true;
			front_changed = true;
		}
	}
}
#define sprite_get_skinned
{
	var sprite = argument[0];
	var skin = argument_count > 1 ? argument[1] : _ssnksprites.skin_active;

	///Gets a skinned sprite based on its name.
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj if (_ssnksprites.skin_active != -1 || argument_count > 1)  {
		
		var skindata = argument_count > 1 ? -1 : _ssnksprites.skins_n[_ssnksprites.skin_active];
		if is_string(skin) {
			if skin in _ssnksprites.skins skindata = variable_instance_get(_ssnksprites.skins, skin);
			else print(`Skin ${skin} not found.`);
		} else if is_number(skin) {
			if skin < array_length(_ssnksprites.skins_n) skindata = _ssnksprites.skins_n[skin];
			else print(`Skin ${skin} not found.`);
		}
		if !is_array(skindata) return sprite_get(sprite);
		var skinname = skindata[0];
		var suffix = skindata[1];
		var name_raw = skindata[2];
		var cache = variable_instance_get(_ssnksprites.cache,name_raw, -1);
		var spr;
		if sprite in cache return variable_instance_get(cache,sprite);
		spr = sprite_get(sprite);
		
		if string(spr) in _ssnksprites.names {
			var sproot = sprite_get(`${suffix? //if suffix
										sprite+skinname: //suffix
										skinname+sprite}`); //prefix
			if sproot == asset_get('net_disc_spr') { //no X allowed
				variable_instance_set(cache,sprite,spr);
				return spr;
			}
			if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
				sprite_change_offset(sproot,sprite_get_xoffset(spr),sprite_get_yoffset(spr));
			}
			variable_instance_set(cache,sprite,sproot); //put sprite in cache
			return sproot;
		} else {
			variable_instance_set(cache,sprite,spr);
			return spr;
		}
	}
	return sprite_get(sprite);
}
#define set_skin(skin)
{
	///Sets the active skin. You can supply a name or an index.
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj {
		if (is_string(argument[0])) {
			//_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
			var sskin = -1;
			if argument[0] in _ssnksprites.skins {
				_ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
			}
			else print(`Skin ${skin} not found.`);
		} else if (is_number(argument[0])) {
			
			if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
			else _ssnksprites.skin_active = skin;
		}
	}
}
#define skin_sprite
{
    var spr_index = argument[0];
    var skin = argument_count > 1 ? argument[1] : _ssnksprites.skin_active;

    ///Gets a skinned sprite by its unskinned sprite index.
    var str = `${spr_index}`;
    var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
    with obj if (_ssnksprites.skin_active != -1 || argument_count > 1)  {
        var skindata = argument_count > 1 ? -1 : _ssnksprites.skins_n[_ssnksprites.skin_active];
        if is_string(skin) {
            if skin in _ssnksprites.skins skindata = variable_instance_get(_ssnksprites.skins, skin);
            else print(`Skin ${skin} not found.`);
        } else if is_number(skin) {
            if skin < array_length(_ssnksprites.skins_n) && skin >= 0 skindata = _ssnksprites.skins_n[skin];
            else print(`Skin #${skin} out of bounds.`);
        }
        if !is_array(skindata) return(spr_index);
        var skinname = skindata[0];
        var suffix = skindata[1];
        var name_raw = skindata[2];
        var cache = variable_instance_get(_ssnksprites.cache,name_raw, -1);
        if (str in cache) return variable_instance_get(cache,str);
        if (str in _ssnksprites.names) {
            var sprname = variable_instance_get(_ssnksprites.names,str);
            //var sproot = sprite_get(`${variable_instance_get(_ssnksprites.names,str)+_ssnksprites.skins[_ssnksprites.skin_active]}`);
            var sproot = sprite_get(`${suffix? //if suffix
                                        sprname+skinname: //suffix
                                        skinname+sprname}`); //prefix
            if sproot == asset_get('net_disc_spr') { //no X allowed
                variable_instance_set(cache,str,spr_index);
                return spr;
            }
            if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
                sprite_change_offset(sproot,sprite_get_xoffset(spr_index),sprite_get_yoffset(spr_index));
            }
            variable_instance_set(cache,str,sproot); //put sprite in cache
            return sproot;
        } else {
            variable_instance_set(cache,str,spr_index);
            return spr_index;
        }
    }
    return spr_index;
}
#define skin_animations()
{
    /// Run this after changing the sprite_index.
    // Corrects certain animations to be how they normally would be.
    switch (state){
        case PS_IDLE:
        case PS_RESPAWN:
        case PS_SPAWN:
            image_index = state_timer*idle_anim_speed;
        break;
        case PS_WALK:
            image_index = state_timer*walk_anim_speed;
        break;
        case PS_DASH:
            image_index = state_timer*dash_anim_speed;
        break;
		case PS_FIRST_JUMP:
			if (runeC_spinjump) image_index = state_timer * 0.5;
			break;
    }
}