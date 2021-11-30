if (has_skin()) { //is there a skin equipped?
    sprite_index = skin_sprite(sprite_index); //get the skinned sprite
    basic_animations(); //correct the idle, walk, and dash animations
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}


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