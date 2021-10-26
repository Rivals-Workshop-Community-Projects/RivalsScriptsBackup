/*
        Supersonic's Advanced Skin Handler
        v1
        Check here for more info:
        https://github.com/SupersonicNK/roa-workshop-templates/tree/master/advanced-skin-handler
*/

init_variables(); //this is required. don't touch it.
//===========SPRITE DEFINITION===========

//===============Movement================
//
//  To add a sprite (or multiple), use the add_sprites() function. You can add as many
//  sprite names as you like, as strings separated by commas as shown below. Anything not added to the system will not be skinned by
//  the sprite_get_skinned and skin_sprite functions.
//  Sprites should be named as if they are NOT SKINNED.
//
add_sprites("airdodge","airdodge_forward","airdodge_backward","airdodge_up","airdodge_back","airdodge_downback","airdodge_downforward","airdodge_upback","airdodge_upforward","crouch","dash","dashstart","dashstop","dashturn","doublejump",
            "idle","jump","jumpstart","land","landinglag","pratfall","parry",
            "roll_backward","roll_forward","tech","walkturn","walljump","waveland",
            "walk","phone_open");

//================Attacks================
//  Base Attacks
add_sprites("bair","dair","dair_left","dattack","dspecial","dstrong","dtilt","fair","fspecial","fspecial_air","fstrong","fstrong_2",
            "ftilt","jab","nair","nspecial","nspecial_air","nspecial_stop","nspecial_stop_2","taunt","taunt_walk","uair","uspecial","uspecialair","ustrong","utilt","final_smash");

//=================OTHER=================
//  hurt sprites
add_sprites("hurt","bighurt","spinhurt");


//============SKIN DEFINITION============
//
//To add a skin, simply use the add_skin function as shown below.
//In the example below, the skin system will try to pull sprites by the naming convention:
// myskin_sprite
//where myskin is the name of the skin, and sprite is the name of the sprite (as supplied above)
add_skin("kart");

//IF you would like to use the convention:
// sprite_myskin
//you can instead do the following:
// add_skin("myskin",true);
//I recommend using the former though, as it is more straight-forward.

//============POST DEFINITION============
offset_skins(); // MIGHT NOT BE ACCURATE, OVERRIDE IN load.gml IF AN OFFSET IS WRONG.
precache(); // Cache skins while loading to ensure max performance during match

//You can set the skin you want your character to use here.
//As an example:
// if (get_player_color(player) == 15) set_skin("myskin");
//This will set the skin to the skin "myskin" when the player is using the 16th color palette.

if (get_player_color(player) == 20) set_skin("kart");
if (get_player_color(player) == 19) set_skin("kart");



//Under this point you should not modify the script unless you know what you are doing.

//COPY START
#define sprite_get_skinned(sprite)
///Gets a skinned sprite based on its name.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj if _ssnksprites.skin_active != -1  {
    var cache = variable_instance_get(_ssnksprites.cache,_ssnksprites.skins[_ssnksprites.skin_active][0], -1);
    var spr;
    if sprite in cache return variable_instance_get(cache,sprite);
    spr = sprite_get(sprite);
    if string(spr) in _ssnksprites.names {
        var sproot = sprite_get(`${_ssnksprites.skins[_ssnksprites.skin_active][1]? //if suffix
                                    sprite+_ssnksprites.skins[_ssnksprites.skin_active][0]: //suffix
                                    _ssnksprites.skins[_ssnksprites.skin_active][0]+sprite}`); //prefix
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

#define skin_sprite(spr_index)
///Gets a skinned sprite by its unskinned sprite index.
var str = `${spr_index}`;
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj if (_ssnksprites.skin_active != -1)  {
    var cache = variable_instance_get(_ssnksprites.cache,_ssnksprites.skins[_ssnksprites.skin_active][0], -1);
    if (str in cache) return variable_instance_get(cache,str);
    if (str in _ssnksprites.names) {
        //var sproot = sprite_get(`${variable_instance_get(_ssnksprites.names,str)+_ssnksprites.skins[_ssnksprites.skin_active]}`);
        var sproot = sprite_get(`${_ssnksprites.skins[_ssnksprites.skin_active][1]? //if suffix
                                    variable_instance_get(_ssnksprites.names,str)+_ssnksprites.skins[_ssnksprites.skin_active][0]: //suffix
                                    _ssnksprites.skins[_ssnksprites.skin_active][0]+variable_instance_get(_ssnksprites.names,str)}`); //prefix
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
        for (var i = 0; i < array_length(_ssnksprites.skins);i++) {
            if _ssnksprites.skins[i][0] == skin || _ssnksprites.skins[i][0] == (_ssnksprites.skins[i][1]?"_"+skin:skin+"_") {
                sskin = i;
                break;
            }
        }
        if sskin != -1 _ssnksprites.skin_active = sskin;
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins)-1}] inclusive. (-1 to disable skin.)`);
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
//This is the end of the COMMON USE functions. Anything below this should remain
//inside of this user event.

#define init_variables()
//literally just sets the variables.
//changing these means you need to change ALL of the other functions to match.
_ssnksprites = {
    names:{},
    cache:{},
    skins:[],
    skin_active:-1
};
#define add_sprite(name)
///add_sprite(name)
//this one is just quicker to type lol
variable_instance_set(_ssnksprites.names,string(sprite_get(name)),name);

#define add_sprites
///add_sprites(names...)
//same as add_sprite, except you can feed it as many arguments as you like.
var i = 0;
var name;
repeat (argument_count) {
    name = argument[i++];
    variable_instance_set(_ssnksprites.names,string(sprite_get(name)),name);
}

#define add_skin
///add_skin(name, ?suffix)
//Prefix by default, suffix otherwise.
var name = argument[0], suffix = argument_count > 1 ? argument[1] : false;
var arr_len = array_length(_ssnksprites.skins);
_ssnksprites.skins[arr_len] = [suffix ? "_"+name : name+"_", suffix];
variable_instance_set(_ssnksprites.cache, _ssnksprites.skins[arr_len][0], {});



#define offset_skins()
//MIGHT NOT BE ACCURATE, OVERRIDE IN load.gml IF AN OFFSET IS WRONG.
var skins = _ssnksprites.skins, _sprites = _ssnksprites.names, cur_skin;
var spritenames = variable_instance_get_names(_sprites);
var sprites_len = array_length(_sprites); //micro optimization? idk might be
var skins_len = array_length(skins);
var s = 0;
repeat(sprites_len) {
    //var name = _sprites[s++];
    var name = variable_instance_get(_sprites,spritenames[s++]);
    var index = sprite_get(name);
    var str = `${index}`;
    var i = 0;
    repeat (skins_len) { //repeat is slightly more efficient than for
        cur_skin = _ssnksprites.skins[i++];
        var skinned_name = `${cur_skin[1]?name+cur_skin[0]:cur_skin[0]+name}`;
        var skinned_spr = sprite_get(skinned_name);
        if skinned_spr == asset_get('net_disc_spr') {
            continue; // we can't offset a sprite that doesn't exist.
        }
        if (sprite_get_xoffset(skinned_spr) == 0 && sprite_get_yoffset(skinned_spr) == 0) { // only offset sprites that don't have an offset
            sprite_change_offset(skinned_name,sprite_get_xoffset(index),sprite_get_yoffset(index));
        }
    }
}

#define precache()
//runs through all skins and sprites to cache them early, which is probably the 
//most insignificant optimization ive ever made lol
var cur_cache, skins = _ssnksprites.skins, _sprites = _ssnksprites.names, cur_skin;
var spritenames = variable_instance_get_names(_sprites);
var sprites_len = array_length(_sprites); //micro optimization? idk might be
var skins_len = array_length(skins);
var s = 0;
repeat(sprites_len) {
    var name = variable_instance_get(_sprites,spritenames[s++]);
    var index = sprite_get(name);
    var str = `${index}`;
    var i = 0;
    repeat (skins_len) { //repeat is slightly more efficient than for
        cur_skin = _ssnksprites.skins[i++];
        cur_cache = variable_instance_get(_ssnksprites.cache,cur_skin[0], -1);
        
        var skinned_spr = sprite_get(`${cur_skin[1]?name+cur_skin[0]:cur_skin[0]+name}`);
        if skinned_spr == asset_get('net_disc_spr') skinned_spr = index; //no X allowed
        variable_instance_set(cur_cache,name,skinned_spr); //cache by name (for sprite_get_skinned)
        variable_instance_set(cur_cache,str,skinned_spr); //cache by index (for skin_sprite)
    }
}