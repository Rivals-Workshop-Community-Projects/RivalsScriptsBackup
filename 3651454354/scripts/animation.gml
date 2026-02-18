if state = PS_LANDING_LAG && attack = AT_NAIR && nair_lagwindow > 1{
        sprite_index = sprite_get("nair_landing");
       image_index  = state_timer/2.9
        }
        
if state = PS_SPAWN{
    if state_timer < 35{
	image_index = 0
	sprite_index = sprite_get("intro")
    }else if state_timer < 39{
	image_index = 1
	sprite_index = sprite_get("intro")
    }else if state_timer < 43{
	image_index = 2
	sprite_index = sprite_get("intro"); 
    }else{
    	sprite_index = sprite_get("idle");
    }
}

if free = 1 && attack = AT_NSPECIAL && state = PS_ATTACK_AIR{
    sprite_index = sprite_get("nspecial_air");
}
if get_player_damage(player) >= 90{
    if state = PS_IDLE{
        sprite_index = sprite_get("idle_chaos1");
        image_index = state_timer*idle_anim_speed*2.3;
        }
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
    
if attack = AT_DSPECIAL && (window = 5 or window = 6){
        if pirouette_selected = 1 or pirouette_selected = 3 or pirouette_selected = 5 or pirouette_selected = 6 or pirouette_selected = 8 or pirouette_selected = 10 or pirouette_selected = 12{
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