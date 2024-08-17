//post_draw.gml

//Ability Select Stuff
if(attack == AT_TAUNT && window == 5){
	draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(50 + ((right_pressed || right_down) * 5)), y-56, 1, 1, 90, c_white, 1 )
	draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(-50 - ((left_pressed|| left_down) * 5)), y-70, 1, 1, -90, c_white, 1 )
	
}
shader_start();
shader_end();
//Mix
if((!hitpause && mixCurrTotalTimer < 3) || mixCurrTotalTimer > 2){
	if(TCG_Kirby_Copy == -1){
		var yOffsetText = -50;
		
		draw_sprite_ext(sprite_get("ability_icons"), mixCurrSelected-1, x, y+45, 1, 1, 0, c_white, 1 )
		
		switch(mixCurrSelected){
			case 1: 		
				draw_debug_text(x-14,y-yOffsetText,"Fire");
			break;
			case 2: 		
				draw_debug_text(x-16,y-yOffsetText,"Beam");
			break;
			case 3: 		
				draw_debug_text(x-22,y-yOffsetText,"Ranger");
			break;
			case 4: 		
				draw_debug_text(x-24,y-yOffsetText,"Fighter");
			break;
			case 5: 		
				draw_debug_text(x-22,y-yOffsetText,"Sword");
			break;
			case 6: 		
				draw_debug_text(x-22,y-yOffsetText,"Water");
			break;
			case 7: 		
				draw_debug_text(x-14,y-yOffsetText,"Leaf");
			break;
			case 8: 		
				draw_debug_text(x-12,y-yOffsetText,"Ice");
			break;
			case 9: 		
				draw_debug_text(x-26,y-yOffsetText,"Tornado");
			break;
			case 10: 		
				draw_debug_text(x-16,y-yOffsetText,"Bomb");
			break;
			case 11: 		
				draw_debug_text(x-16,y-yOffsetText,"Mike");
			break;
			case 12: 		
				draw_debug_text(x-18,y-yOffsetText,"Abyss");
			break;
			case 13: 		
				draw_debug_text(x-12,y-yOffsetText,"ESP");
			break;
			case 14: 		
				draw_debug_text(x-14,y-yOffsetText,"Drill");
			break;
			case 15: 		
				draw_debug_text(x-20,y-yOffsetText,"Spark");
			break;
		}
	}
}

if (attack == AT_USPECIAL){
	if (window == 2){
		if (jet_flight_dir != 0){
			//0: no dir: just forward.
			//1: up
			//2: up + right
			//3: right
			//4: down + right
			//5: down
			//6: down + left
			//7: left
			//8: up + left
				if (jet_flight_dir == 1){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(6), y-60, 1, 1, 180, c_white, 1 )
				} else if (jet_flight_dir == 2){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(32), y-40, 1, 1, 135, c_white, 1 )
				} else if (jet_flight_dir == 3){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(40), y-16, 1, 1, 90, c_white, 1 )
				} else if (jet_flight_dir == 4){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(28), y+14, 1, 1, 45, c_white, 1 )
				} else if (jet_flight_dir == 5){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(-2), y+24, 1, 1, 0, c_white, 1 )
				} else if (jet_flight_dir == 6){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(-30), y+14, 1, 1, -45, c_white, 1 )
				} else if (jet_flight_dir == 7){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(-36), y-30, 1, 1, -90, c_white, 1 )
				} else if (jet_flight_dir == 8){
					draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x+(-26), y-42, 1, 1, -135, c_white, 1 )
				}
			}
		}
	}
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_AIR && (window == 2 || window == 4)) {
	/*
	if (stonevar != 0){
		shader_start();
		shader_end();
		draw_sprite(sprite_get("stone"), stonevar, x-2, y+2);
	} else if (stonevar == 0){
		shader_start();
		draw_sprite_ext(sprite_get("stone"), stonevar, x-2 + ((spr_dir==-1)?4:0), y+2, spr_dir, 1, 0, c_white, 1);
		shader_end();
	}
	*/
	if (stonevar == 0 || stonevar == 7){
		shader_start();
		draw_sprite_ext(sprite_get("stone"), stonevar, x-2 + ((spr_dir==-1)?4:0), y+2, spr_dir, 1, 0, c_white, 1);
		shader_end();
	} else {
		shader_start();
		shader_end();
		draw_sprite(sprite_get("stone"), stonevar, x-2, y+2);
	}
}
shader_end();

switch(TCG_Kirby_Copy){
    case 8:
        set_skin("planet");
        if(skin_sprite(sprite_index) != sprite_index)
            draw_sprite_ext(skin_sprite(sprite_index), image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, 1);
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
#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;