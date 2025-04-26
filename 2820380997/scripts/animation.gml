// Super Sonics Skin Handler
if (has_skin()) { //is there a skin equipped?
    sprite_index = skin_sprite(sprite_index); //get the skinned sprite
    basic_animations(); //correct the idle, walk, and dash animations
}

// --------------------------------------------------
// Crouch Idle
if(state == PS_CROUCH && state_timer > 10){
    sprite_index = sprite_get_skinned("crouch_idle");
    image_index = floor(image_number*state_timer/(image_number*10));
}

// Idle Flourish Code
if(state == PS_IDLE && !instance_exists(clone_object_ID)){
	//print(idle_2_current_timer)
	idle_2_current_timer++;
	if(idle_2_current_timer > idle_2_start_timer){
		sprite_index = sprite_get_skinned("idle_2");
		image_index = (idle_2_current_timer - idle_2_start_timer) / idle_2_game_frames_per_anim_frame;
		idle_2_current_timer++;
	}
	if(idle_2_current_timer > idle_2_total_length + idle_2_start_timer - 1){
		idle_2_current_timer = 0;
	}
}
else idle_2_current_timer = 0;

// Double Jump Backward Animation Logic
if(state == PS_DOUBLE_JUMP){
    if(state_timer == 2){hsp_at_start_of_double_jump = hsp}
    if(spr_dir * hsp_at_start_of_double_jump < 0){double_jump_backward_flag = true;}
        else double_jump_backward_flag = false;
    if(double_jump_backward_flag == true){sprite_index = (sprite_get_skinned("doublejump_backward"));}
}

// Intro Code
if(state == PS_SPAWN){
	sprite_index = sprite_get_skinned("intro");
	image_index = 0;
	// Parameters of the intro sequence
	var start_intro_movement_timer = 50; // Set this to calibrate where the animation should start
	var number_of_frames_in_strip = 8;
	var animation_speed = 8; // Inverse
	// Image Index Handler
	if(get_gameplay_time() >= start_intro_movement_timer && image_index != number_of_frames_in_strip){ // starts animation. 
	    image_index = clamp(floor((get_gameplay_time() - start_intro_movement_timer) / animation_speed),0,number_of_frames_in_strip);
	}
	/*
	// Sound Handler
	switch(get_player_color(player)){
		case 22:
			if(state_timer == 1){
				sound_play(sound_get("thunder_3"));
			}
			if(image_index == 9 && intro_sound_played_flag == false){ // play reload sound on image index 8S
			    sound_play(asset_get("sfx_syl_dspecial_howl"));
			    intro_sound_played_flag = true;
			}
			//
			break;
		default:
			break;
	}
	*/
}

//Respawn Code
if(state == PS_RESPAWN){
	sprite_index = sprite_get_skinned("plat_idle");
	image_index = get_gameplay_time() / 20;
}

// Code for Dspecial Draw Logic
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(window){
		case 3:
		case 4:
		case 5:
		sprite_index = sprite_get_skinned("dthrow"); // Foreground
			break;
		default:
		sprite_index = sprite_get_skinned("dthrow_behind"); // Full Sprite
			break;
	}
}

// Custom Landing Animations
if(state == PS_LANDING_LAG){

	switch(attack){
		case AT_NAIR:
			sprite_index = sprite_get_skinned("nair_land");
			var num_of_frames = 2; // This is fixed for each animation
		break;
		case AT_FAIR:
			sprite_index = sprite_get_skinned("fair_land");
			var num_of_frames = 2; // This is fixed for each animation
		break;
		case AT_DAIR:
			sprite_index = sprite_get_skinned("dair_land");
			var num_of_frames = 3; // This is fixed for each animation
		break;
		case AT_UAIR:
			sprite_index = sprite_get_skinned("uair_land");
			var num_of_frames = 3; // This is fixed for each animation
		break;
		case AT_BAIR:
			sprite_index = sprite_get_skinned("bair_land");
			var num_of_frames = 3; // This is fixed for each animation
		break;
		default:
		break;
	}
	
	var length_of_landing_lag = floor(get_attack_value(attack,AG_LANDING_LAG) * 1.5);
	var length_per_frame = length_of_landing_lag / num_of_frames;
	image_index = (state_timer / length_per_frame);
}

// Advance / Beckon Code sprite swap for dspecial held button
if(attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_GROUND)) // Beckon / Advance Code
{
	if(!instance_exists(clone_object_ID)){exit;}
	var clone_relative_x = clone_object_ID.x - x; // Pos is to the right, Neg is to the left
	var clone_relative_direction = sign(clone_relative_x);
	if(right_down && spr_dir == 1 && clone_relative_direction == 1) then sprite_index = sprite_get_skinned("extra_1_advance");
	if(left_down && spr_dir == 1 && clone_relative_direction == 1) then sprite_index = sprite_get_skinned("extra_1_beckon");
	if(right_down && spr_dir == -1 && clone_relative_direction == 1) then sprite_index = sprite_get_skinned("extra_1_beckon");
	if(left_down && spr_dir == -1 && clone_relative_direction == 1) then sprite_index = sprite_get_skinned("extra_1_advance");
	if(right_down && spr_dir == 1 && clone_relative_direction == -1) then sprite_index = sprite_get_skinned("extra_1_advance");
	if(left_down && spr_dir == 1 && clone_relative_direction == -1) then sprite_index = sprite_get_skinned("extra_1_beckon");
	if(right_down && spr_dir == -1 && clone_relative_direction == -1) then sprite_index = sprite_get_skinned("extra_1_beckon");
	if(left_down && spr_dir == -1 && clone_relative_direction == -1) then sprite_index = sprite_get_skinned("extra_1_advance");
}

//Clone Sprite Indexes Setter, needs to be here to use supersonic's function as that cannot run from article scripts.
// Initialized in init.gml, set here in animation, then the clone pulls these sprite indexs from the player using these indexes

if(clone_spawn_sprite == 0){
	// Set Sprites to Variables
	clone_spawn_sprite = sprite_get_skinned("clone_spawn");
	clone_idle_sprite = sprite_get_skinned("idle");
	clone_crouch_sprite = sprite_get_skinned("crouch");
	clone_crouch_idle_sprite = sprite_get_skinned("crouch_idle");
	//clone_idle_flourish_sprite = sprite_get_skinned("idle_2");
	clone_walk_sprite = sprite_get_skinned("walk");
	clone_walk_turn_sprite = sprite_get_skinned("walkturn");
	clone_dash_sprite = sprite_get_skinned("dash");
	clone_dash_start_sprite = sprite_get_skinned("dashstart");
	clone_dash_stop_sprite = sprite_get_skinned("dashstop");
	clone_dash_turn_sprite = sprite_get_skinned("dashturn");
	clone_jumpstart_sprite = sprite_get_skinned("jumpstart");
	clone_jump_sprite = sprite_get_skinned("jump");
	clone_doublejump_sprite = sprite_get_skinned("doublejump");
	
	clone_doublejump_backward_sprite = sprite_get_skinned("doublejump_backward");
	clone_land_sprite = sprite_get_skinned("land");
	clone_taunt_sprite = sprite_get_skinned("taunt");
	
	clone_hurt_sprite = sprite_get_skinned("hurt"); // This does not appear to work?
	clone_landing_lag_sprite = sprite_get_skinned("landinglag");
	clone_waveland_sprite = sprite_get_skinned("waveland");
	
	clone_dspecial_sprite = sprite_get_skinned("dspecial");
	//dspecial_hurt_sprite = sprite_get_skinned("dspecial_hurt"); // Enable for hurtbox editing
	clone_dspecial_up_sprite = sprite_get_skinned("dspecial_up");
	//dspecial_up_hurt_sprite = sprite_get_skinned("dspecial_up_hurt"); // Enable for hurtbox editing
	clone_dspecial_down_sprite = sprite_get_skinned("dspecial_down");
	//dspecial_down_hurt_sprite = sprite_get_skinned("dspecial_down"); // Enable for hurtbox editing
	clone_dthrow_partial_sprite = sprite_get_skinned("dthrow");
	clone_dthrow_full_sprite = sprite_get_skinned("dthrow_behind");
	clone_dthrow_team_sprite = sprite_get_skinned("clone_extra_3");
	clone_fspecial_sprite = sprite_get_skinned("fspecial");
	clone_fspecial_2_sprite = sprite_get_skinned("fspecial_2");
	clone_fspecial_air_sprite = sprite_get_skinned("fspecial_air");
	clone_uspecial_sprite = sprite_get_skinned("uspecial");
	clone_uspecial_2_sprite = sprite_get_skinned("uspecial_2");
	clone_nspecial_sprite = sprite_get_skinned("nspecial");
	clone_utilt_sprite = sprite_get_skinned("utilt"); // Used for clone assist attack
	
	clone_airdash_forward_sprite = sprite_get_skinned("clone_airdash_forward");
	clone_airdash_backward_sprite = sprite_get_skinned("clone_airdash_backward");
	clone_airdash_upward_sprite = sprite_get_skinned("uspecial_2");
	clone_airdash_downward_sprite = sprite_get_skinned("downhurt");
	
	clone_wisp_idle_sprite = sprite_get_skinned("wisp_idle");
	clone_wisp_travel_sprite = sprite_get_skinned("wisp_travel");
	
	clone_plat_clone_assist_sprite = sprite_get_skinned("plat_clone_assist");
	
}


//Super Sonics Skin Handler Code 
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
		var sproot_name = `${suffix? //if suffix
		        sprite+skinname: //suffix
		        skinname+sprite}`
		var sproot = sprite_get(sproot_name); //prefix
        if sproot == asset_get('net_disc_spr') { //no X allowed
            variable_instance_set(cache,sprite,spr);
            return spr;
        }
        if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
            sprite_change_offset(sproot_name,sprite_get_xoffset(spr),sprite_get_yoffset(spr));
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
    	var sproot_name = `${suffix? //if suffix
		        sprname+skinname: //suffix
		        skinname+sprname}`
		var sproot = sprite_get(sproot_name); //prefix
        if sproot == asset_get('net_disc_spr') { //no X allowed
            variable_instance_set(cache,str,spr_index);
            return spr;
        }
        if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
            sprite_change_offset(sproot_name,sprite_get_xoffset(spr_index),sprite_get_yoffset(spr_index));
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