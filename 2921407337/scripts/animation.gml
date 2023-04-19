// animation.gml

//########################################################
//print(SL_mode_active);
//print(image_index)

// Super Sonics Skin Handler
if (has_skin()) { //is there a skin equipped?
    sprite_index = skin_sprite(sprite_index); //get the skinned sprite
    basic_animations(); //correct the idle, walk, and dash animations
}

switch(SL_mode_active){
    case false: // SL Mode Not Active false
		set_skin(-1);
    break;
    
    case true: // SL Mode Active
		set_skin("sl");
    break;
}
/*
// Old Manual Skin Code
switch(SL_mode_active){
    case false: // SL Mode Not Active false

    break;
    
    case true: // SL Mode Active
        switch(state){
            case PS_CROUCH:
                sprite_index = sprite_get("sl_crouch");
            break;
            case PS_DASH_START:
                sprite_index = sprite_get("sl_dashstart");
            break;
            case PS_DASH_STOP:
                sprite_index = sprite_get("sl_dashstop");
            break;
            case PS_DASH_TURN:
                sprite_index = sprite_get("sl_dashturn");
            break;
            case PS_DASH:
                sprite_index = sprite_get("sl_dash");
                image_index = state_timer * (dash_anim_speed * 1.5);
            break;
            case PS_DOUBLE_JUMP:
                sprite_index = sprite_get("sl_djump");
            break;
            case PS_IDLE:
            case PS_SPAWN:
            case PS_RESPAWN:
            if(sl_idle_but_better_flag == true){ // This is better, trust me
            	sprite_index = sprite_get("sl_idle_but_better");
            }
            else{sprite_index = sprite_get("sl_idle");} // Not as good bust still good.
                 image_index = state_timer * (idle_anim_speed/2) ;
            break;
            case PS_JUMPSQUAT:
                sprite_index = sprite_get("sl_jumpstart");
            break;
            case PS_FIRST_JUMP:
            case PS_IDLE_AIR:
                sprite_index = sprite_get("sl_jump");
            break;
            case PS_LANDING_LAG:
            case PS_PRATLAND:
                sprite_index = sprite_get("sl_landinglag");
            break;
            case PS_LAND:
                sprite_index = sprite_get("sl_land");
            break;
            case PS_PARRY_START:
            case PS_PARRY:
                sprite_index = sprite_get("sl_parry");
            break;
            case PS_PRATFALL:
                sprite_index = sprite_get("sl_pratfall");
            break;
            case PS_TECH_GROUND:
            case PS_TECH_BACKWARD:
            case PS_TECH_FORWARD:
            case PS_ROLL_FORWARD: // Backup case, should not be accessbile normally.
            case PS_ROLL_BACKWARD: // Backup case, should not be accessbile normally.
                sprite_index = sprite_get("sl_tech");
            break;
            case PS_WALK_TURN:
                sprite_index = sprite_get("sl_walkturn");
            break;
            case PS_WALK:
                sprite_index = sprite_get("sl_walk");
                image_index = state_timer*walk_anim_speed;
            break;
            case PS_WALL_JUMP:
            case PS_WALL_TECH:
                sprite_index = sprite_get("sl_walljump");
            break;
            case PS_WAVELAND:
                sprite_index = sprite_get("sl_waveland");
            break;
            case PS_HITSTUN:
            case PS_HITSTUN_LAND:
            	if(sprite_index == sprite_get("hurt")){sprite_index = sprite_get("sl_hurt")};
            	if(sprite_index == sprite_get("bighurt")){sprite_index = sprite_get("sl_bighurt")};
            	if(sprite_index == sprite_get("bouncehurt")){sprite_index = sprite_get("sl_bouncehurt")};
            	if(sprite_index == sprite_get("uphurt")){sprite_index = sprite_get("sl_uphurt")};
            	if(sprite_index == sprite_get("hurtground")){sprite_index = sprite_get("sl_hurtground")}; // Iroh does not have hurt ground
            default:
            break;
        }
    break;
}
*/
// Intro Code
if(state == PS_SPAWN){
	sprite_index = sprite_get_skinned("intro");
	image_index = 0;
	// Parameters of the intro sequence
	var start_intro_movement_timer = 10; // Set this to calibrate where the animation should start
	var number_of_frames_in_strip = 15;
	var animation_speed = 7; // Inverse
	// Image Index Handler
	if(get_gameplay_time() >= start_intro_movement_timer && image_index != number_of_frames_in_strip){ // starts animation. 
	    image_index = clamp(floor((get_gameplay_time() - start_intro_movement_timer) / animation_speed),0,number_of_frames_in_strip);
	}
	
	// Sound Handler
	if(image_index == 4 && intro_sound_played_flag == false){
	    sound_play(sound_get("howl"));
	    intro_sound_played_flag = true;
	}
}
/*
// Idle but better, commented out cause I need to fix it after release.
if(state == PS_IDLE){
	if(sl_idle_but_better_flag == true && get_training_cpu_action() == CPU_FIGHT){ // Does not happen in training troll
		sprite_index = sprite_get("sl_idle_but_better");// This is better, trust me
	}
	else{sprite_index = sprite_get_skinned("idle");} // Not as good bust still good.
	     image_index = state_timer * (idle_anim_speed/2) ;
}
*/
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