//animation.gml

if (has_skin()) { //is there a skin equipped?
    sprite_index = skin_sprite(sprite_index); //get the skinned sprite
    basic_animations(); //correct the idle, walk, and dash animations
}


//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		djump_used = false;
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
		
	case PS_DOUBLE_JUMP: //Fixes some weird jank with her ponytail, setting Idle_air to the last frame
		djump_used = true;
		break;
	case PS_IDLE_AIR: //Fixes some weird jank with her ponytail, setting Idle_air to the last frame
		if (djump_used == true) image_index = 7;
		if (state_timer > 4) djump_used = false;
		break;
		
	case PS_IDLE: //Makes sure djump_used is set to false along with airdodge and attack air/ground
		djump_used = false;
		break;	
		
	case PS_LAND: //Makes sure djump_used is set to false along with airdodge and attack air/ground
		djump_used = false;
		break;		
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		djump_used = false;
		switch (attack)
		{
			case AT_JAB:
				break;
			case AT_DSTRONG:
				if (window == 6 && smash_charging) 
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.2; //sets the speed the strong charge animation goes	
					
					image_index = anim_first + min(strong_charge * anim_speed, anim_length - 1);
				}
				break;
			case AT_FSTRONG:
			//looping strong charge animation
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.2; //sets the speed the strong charge animation goes
	
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
				break;
			case AT_USTRONG:
			    // Get the strong charge window and check if charging
			    if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) {
			        var loop_start = 7; // Start of the looping frames
			        var loop_length = 5; // Number of frames in the loop (7-11 inclusive)
			        var initial_start = 3; // Starting frame (3-6)
			        var initial_length = 4; // Number of initial frames (3-6 inclusive)
			        var anim_speed = 0.2; // Animation speed factor
			
			        // Determine current strong charge animation state
			        if (strong_charge < initial_length / anim_speed) {
			            // Play the initial frames (3-6)
			            image_index = initial_start + floor(strong_charge * anim_speed);
			        } else {
			            // Loop through the frames (7-11)
			            var loop_time = strong_charge - (initial_length / anim_speed);
			            image_index = loop_start + (floor(loop_time * anim_speed) % loop_length);
			        }
			    }
			    break;
			case AT_DSTRONG:
			    if (window == 2 && smash_charging) {
			        // Loop through image index 5-13 for charge version 1
			        var loop_start = 5; // Start of the loop
			        var loop_length = 8; // Number of frames in the loop (5-13 inclusive)
			        var anim_speed = 0.2; // Speed for animation loop
			
			        image_index = loop_start + (floor(strong_charge * anim_speed) % loop_length);
			    } 
			    else if (window == 6 && smash_charging) {
			        // Play through image index 14-15, then loop 16-23 for charge version 2
			        var initial_start = 13; // Start of the initial frames
			        var initial_length = 2; // Number of initial frames (14-15 inclusive)
			        var loop_start = 15; // Start of the loop
			        var loop_length = 8; // Number of frames in the loop (16-23 inclusive)
			        var anim_speed = 0.2; // Speed for animation loop
			
			        // Determine current strong charge animation state
			        if (strong_charge < initial_length / anim_speed) {
			            // Play the initial frames (14-15)
			            image_index = initial_start + floor(strong_charge * anim_speed);
			        } else {
			            // Loop through the frames (16-23)
			            var loop_time = strong_charge - (initial_length / anim_speed);
			            image_index = loop_start + (floor(loop_time * anim_speed) % loop_length);
			        }
			    }
			    break;			    
		}
		//looping strong charge animation
		/*
			if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
			{
				var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
				var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
				var anim_speed = 0.3; //sets the speed the strong charge animation goes

				image_index = anim_first + (strong_charge * anim_speed) % anim_length;
			}
		*/
		break;
	case PS_WALL_JUMP: //easy clinging
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging) cling_timer = state_timer;
			
			//sets image to the proper index
			if (clinging && image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
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
	case PS_FLASHED: case PS_FROZEN:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	if (is_super) {
	    sprite_index = sprite_get("3_hurt");
	} else if (is_guardian) {
	    sprite_index = sprite_get("2_hurt");
	} else if (is_sparking) {
	    sprite_index = sprite_get("1_hurt");
	} else {
	    sprite_index = sprite_get("hurt");
	}
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			if (is_super) {
			    sprite_index = sprite_get("3_hurt_tumble");
			} else if (is_guardian) {
			    sprite_index = sprite_get("2_hurt_tumble");
			} else if (is_sparking) {
			    sprite_index = sprite_get("1_hurt_tumble");
			} else {
			    sprite_index = sprite_get("hurt_tumble");
			}
			image_index = state_timer * 0.1;
		}
	}

	//crystalized compatibility
	//if the character doesn't use small sprites, uncomment this crystalized section (also make sure you have a hurt_crystalized sprite in your folder)
	if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)
	{
		hurt_img = 1;
		
		if (crystal_stun_resize)
		{
			sprite_index = sprite_get("hurt_crystalized"); //this has to be using small sprites
			small_sprites = 1;
		}
	}
	else
	{
		if (crystal_stun_resize) small_sprites = 0;
	}

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}
//COPY START
#define sprite_get_skinned
/// sprite_get_skinned(sprite, skin = _ssnksprites.skin_active)
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

#define skin_sprite
/// skin_sprite(spr_index, skin = _ssnksprites.skin_active)
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

#define basic_animations()
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
}

#define set_skin(skin)
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

#define get_skin()
///Gets the active skin. -1 when no skin is active.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active;
}
return _ssnksprites.skin_active;

#define has_skin()
///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;

//COPY END