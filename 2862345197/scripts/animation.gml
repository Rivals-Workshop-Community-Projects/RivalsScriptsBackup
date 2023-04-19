if (has_skin()) { //is there a skin equipped?
    sprite_index = skin_sprite(sprite_index); //get the skinned sprite
    basic_animations(); //correct the idle, walk, and dash animations
}

if (hsp != 0 || vsp != 0) && (!hitpause) && !(phone_attacking && attack == AT_DATTACK && window < 4) && !(state == PS_RESPAWN || state == PS_DEAD || respawn_taunt){
trailnum = random_func( 0, 2, true );
    if get_player_color( player ) = 1 {
	trailoffset = random_func( 1, 10, true );
	trailoffset2 = random_func( 2, 10, true );
	    if trailskip = 0{
		trailskip = 1;
	        if (trailnum = 0) {
            spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, audiotrail_fx1);
	        } else {
	        spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, audiotrail_fx2);
	        }
		} else {
		trailskip--; }
	} else {
        if (trailnum = 0){
        spawn_hit_fx( x, y, trail_fx1);
	    } else {
	    spawn_hit_fx( x, y, trail_fx2);
	    }
	}
}

switch (state) {
    case PS_SPAWN:
    if (introTimer < 13 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer + (13 * hatoffs);
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0 + (13 * hatoffs);;
    } else {
	    if hat = "none" {
		sprite_index = sprite_get("idle");
		} else {
		sprite_index = sprite_get("idle_" + string(hat) );
		}
    }
	break;

    case PS_FIRST_JUMP:
	case PS_DOUBLE_JUMP:
	    if (state_timer == 1) && (!hitpause) {
			if !((get_player_color( player ) = 1) || (has_rune("J") && djumps > 1)){
        	spawn_hit_fx( x, y, jump_fx2 );
        	spawn_hit_fx( x, y, jump_fx );
        	} else if (has_rune("J") && djumps > 1){
			spawn_hit_fx( x, y, jump_arrow );
			}
			if pshoot_carry{
			sprite_index = sprite_get("nair");
			image_index = jump_index + (7 * hatoffs);
	    	}
		}
	break;
	case PS_PARRY:
	    if hat = "none"{
	    hud_offset = lerp(hud_offset, 56, 0.5);
		} else {
		hud_offset = lerp(hud_offset, 20, 0.5);
		}
    break;
    case PS_CROUCH:
		if image_index < 5 && !object_index == oTestPlayer{
		hud_offset = lerp(hud_offset, -32, 0.5);
  	    }
	break;
	case PS_IDLE:
	    if attack == AT_JAB{
	    image_index = idle_index;
	    attack_end();
		}
		if pshoot_carry{
		sprite_index = sprite_get("jab");
		image_index = idle_index + (60 * hatoffs);
	    }
		//floppos handy dandy DTilt animation looking less jarring if you stop holding down-inator
		//plus hat jank
        if prev_state == PS_ATTACK_GROUND && attack == AT_DTILT && state_timer < 3 {
		    if hat = "none" {
            sprite_index = sprite_get("crouch");
            image_index = 6;
            } else {
		    sprite_index = sprite_get("crouch_" +string(hat) );
            image_index = 6;
		    }
		}
	break;
	case PS_IDLE_AIR:
	  	if image_index != 6 && prev_state == PS_DOUBLE_JUMP{
  	    image_index = 6;
  	    }
	break;
	case PS_JUMPSQUAT:
	    if pshoot_carry{
		sprite_index = sprite_get("jumpstart_shoot");
		   if state_timer < 4 {
		   image_index = 0 + (2 * hatoffs);
		   } else {
		   image_index = 1 + (2 * hatoffs);
		   }
	    }
	break;
	case PS_LANDING_LAG:
	    if pshoot_carry{
		sprite_index = sprite_get("landinglag_shoot");
		   if state_timer < 4 {
		   image_index = 0 + (3 * hatoffs);
		   } else if state_timer < 7 {
		   image_index = 1 + (3 * hatoffs);
		   } else {
		   image_index = 2 + (3 * hatoffs);
		   }
	    }
	break;
	case PS_WALK_TURN:
	    if pshoot_carry{
		sprite_index = sprite_get("walkturn_shoot");
		image_index = window_timer + (5 * hatoffs);
	    }
	break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	    switch (attack) {
			case AT_DATTACK:
				if window < 4{
					if state_timer = 0 && !hitpause{
					spawn_hit_fx( x, y, boostarrow);
					}
					if get_player_color( player ) = 1 {
					trailoffset = random_func( 2, 20, true );
					trailnum = random_func( 0, 2, true );
					    if (trailnum = 0) {
     				    spawn_hit_fx( x, y - 10 + trailoffset, audiotrail_fx1);
					    } else {
					    spawn_hit_fx( x, y - 10 + trailoffset, audiotrail_fx2);
					    }
					}
				boostoffset = random_func( 3, 10, true );
				spawn_hit_fx( x - 16 * spr_dir, y - 5 + boostoffset, boostrail_over);
				spawn_hit_fx( x - 16 * spr_dir, y - 5 + boostoffset, boostrail);
				}
		    break;
		
		//megaman gang --------------------------------
			case AT_JAB:
				switch (window) {
				    case 1:
	 	 			    if get_num_hitboxes(AT_JAB) = 1 {
					    image_index = idle_index+20 + (60 * hatoffs);
					    } else {
						image_index = idle_index + (60 * hatoffs);
						}
					break;
					case 2:
					    image_index = idle_index + (60 * hatoffs);
					break;
					case 3:
					    image_index = idle_index + (60 * hatoffs);
					break;
					case 4:
					    image_index = idle_index+40 + (60 * hatoffs);
					break;
					case 5:
					    sprite_index = sprite_get("walkturn_shoot");
				        image_index = window_timer + (5 * hatoffs);
					break;
				}
		    break;
			case AT_FTILT:
				image_index = walk_index;
				switch (window) {
				    case 1:
	 	 			    if get_num_hitboxes(AT_FTILT) = 1 {
					    image_index = walk_index+4 + (12 * hatoffs);
					    } else {
						image_index = walk_index + (12 * hatoffs);
						}
					break;
					case 2:
					    image_index = walk_index + (12 * hatoffs);
					break;
					case 3:
					    image_index = walk_index + (12 * hatoffs);
					break;
					case 4:
					    image_index = walk_index+8 + (12 * hatoffs);
					break;
				    case 5:
					    sprite_index = sprite_get("walkturn_shoot");
				        image_index = window_timer + (5 * hatoffs);
					break;
				}
		    break;
			case AT_NAIR:
			    image_index = jump_index;
				    switch (window) {
			            case 1:
			    	        if get_num_hitboxes(AT_NAIR) = 1 {
			    	        image_index = jump_index+7 + (21 * hatoffs);
			    	        } else {
			    		    image_index = jump_index + (21 * hatoffs);
			    		    }
						break;
			    	    case 2:
					    case 3:
			    	        image_index = jump_index + (21 * hatoffs);
						break;
			        	case 4:
			        	image_index = jump_index+14 + (21 * hatoffs);
						break;
			        }
			break;
			
		//offset gang ---------------------------------
		    case AT_USPECIAL:
	    	if window !=5{
	    	hud_offset = lerp(hud_offset, 32, 0.5);
	        }
		    break;
		    case AT_FSTRONG:
			if (image_index > 1 && image_index < 4){
			if hat = "none" {
			hud_offset = lerp(hud_offset, 34, 0.2);
			}
			}
			break;
			case AT_DSTRONG:
			if (image_index > 1 && image_index < 4){
			hud_offset = lerp(hud_offset, 34, 0.2);
			}
		    break;
			case AT_USTRONG:
			if (image_index > 0 && image_index < 4){
			    if hat = "none"{
			    hud_offset = lerp(hud_offset, 72, 0.2);
			    } else {
				hud_offset = lerp(hud_offset, 7, 0.2);
				}
			}
			break;
			case AT_DTILT:
			if !object_index == oTestPlayer{
		    hud_offset = lerp(hud_offset, -32, 0.5);
  	        }
  	        break;
			case AT_UTILT:
			if hat = "none"{
			hud_offset = lerp(hud_offset, 132, 0.2);
			} else {
		    hud_offset = lerp(hud_offset, 68, 0.2);
			}
		    break;
		}
	break;
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

//supersonic alt stuff no touchy
#define sprite_get_skinned
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