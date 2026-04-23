if state = PS_LANDING_LAG && attack = AT_NAIR && nair_lagwindow > 1{
        sprite_index = sprite_get("nair_landing");
       image_index  = state_timer/2.9
        }
        
if state = PS_SPAWN{
    if state_timer < 44{
    image_index = 0
    sprite_index = sprite_get("intro")
    }else if state_timer < 49{
    image_index = 2
    sprite_index = sprite_get("intro"); 
    }else if state_timer < 51{
    image_index = 0
    sprite_index = sprite_get("land"); 
    }else if state_timer < 58{
    image_index = 1
    sprite_index = sprite_get("land"); 
    }else if state_timer < 62{
    image_index = 2
    sprite_index = sprite_get("land"); 
    }else if state_timer < 66{
    image_index = 3
    sprite_index = sprite_get("land"); 
    }else if state_timer < 70{
    image_index = 0
	sprite_index = sprite_get("idle"); 
    }else if state_timer < 75{
    set_attack( AT_TAUNT );
    }else{
        sprite_index = sprite_get("idle");
    }
}

if free = 1 && attack = AT_NSPECIAL && state = PS_ATTACK_AIR{
    sprite_index = sprite_get("nspecial_air");
}
if get_player_damage(player) >= 60{
    if state = PS_IDLE{
        sprite_index = sprite_get("idle_chaos1");
		if (get_player_damage( player )) <= 150{
        image_index = state_timer*idle_anim_speed*((get_player_damage( player ))*-0.02-0.6);
		}else{
        image_index = state_timer*idle_anim_speed*(4.0);
        }}
        if state = PS_LAND && attack != AT_NAIR{
        sprite_index = sprite_get("land_chaos");

        }
        if attack = AT_TAUNT && state = PS_ATTACK_GROUND{
        sprite_index = sprite_get("taunt_chaos");

        }
        if attack = AT_JAB && state = PS_ATTACK_GROUND{
        sprite_index = sprite_get("jab_chaos");

        }
        if state = PS_LANDING_LAG && attack != AT_NAIR{
        sprite_index = sprite_get("landinglag_chaos");

        }
        if state = PS_JUMPSQUAT{
        sprite_index = sprite_get("jumpstart_chaos");

        }
        if state = PS_WAVELAND{
        sprite_index = sprite_get("waveland_chaos");

        }
    }

if attack == 49{
if  (window == 3 && window_timer >= 1){
		sprite_index = sprite_get("neo_chaos"); 
		}else{
if	(window >= 4 && window_timer >= 1){
		sprite_index = sprite_get("uspecial"); 
}}}

if attack = AT_DSPECIAL && (window = 5 && window_timer >= 2 or window = 6){
        if pirouette_popup = 2 or pirouette_popup = 4 or pirouette_popup = 6 or pirouette_popup = 8 or pirouette_popup = 12 or pirouette_popup = 14 or pirouette_popup = 1{
    sprite_index = sprite_get("boing"); 
}else{
    sprite_index = sprite_get("celebrate"); 
} 
        if window = 6{
            image_index = 2
            }
        }


if attack = AT_FSTRONG && window = 1{
    if strong_charge < 5 && strong_charge >= 1{
        image_index = 6
    }
    if strong_charge < 7 && strong_charge >= 5{
        image_index = 7
    }
    if strong_charge < 11 && strong_charge >= 7{
        image_index = 8
    }
    if strong_charge >= 11{
        image_index = 9
    }
}

if state = PS_PRATFALL{
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box"); 
}

//if attack = AT_BAIR && state = PS_ATTACK_AIR{
//draw_sprite_ext(sprite_get("clover_counter"), (nspecial_ammo), temp_x + 160, temp_y - 4, 1, 1, 0, c_white, 1);
//    }else{
//draw_sprite_ext(sprite_get("diamond_counter"), (nspecial_ammo), temp_x + 160, temp_y - 4, 1, 1, 0, c_white, 1);
//    }
   
