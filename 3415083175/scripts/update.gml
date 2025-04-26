//update
timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//ditto detection
with oPlayer if id != other.id && ("is_ruber_tco" in self) && is_ruber_tco {
	other.in_ditto = true
}

if tcoart_timer > 0 tcoart_timer--
if tcoart_timer > 16 && (state_attacking && attack != AT_TAUNT_2) {
	tcoart_timer = 16
}

if fire_stance && fire_amount <= 0 {
    fire_stance = false
    fire_amount = 0
}

//outline_color = [70,70,70]
//init_shader()

if hover_timer > 0 {
    hover_timer--
    vsp *= 0.8
    hsp *= 0.95
    air_accel = 0.6
} else {
    air_accel = 0.3
}

if !free || state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP {
    hover_timer = 0
}


if !free || state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_DEAD {
    move_cooldown[AT_USPECIAL] = 0
    move_cooldown[AT_NSPECIAL] = 0
}

if has_hit {
    move_cooldown[AT_NSPECIAL] = 0
}
var hfx1 = sprite_get("laser_hfx_big")
var hfx2 = sprite_get("laser_hfx_small")
with hit_fx_obj if sprite_index == hfx1 || sprite_index == hfx2 {
    depth = -10
}

//with oPlayer print(url)

/*
if trailer_mode {
    with oPlayer if id != other.id {
        if url != "1868198173" visible = false
        if state == PS_RESPAWN && !other.shield_down {
            state_timer = 0
        }
    }
    set_view_position(room_width/2, 422)
    
    if timer mod 60 == 0 {
        //spawn_hit_fx(x + 200, y - 200, HFX_WRA_WIND_HUGE)
    }
}
*/
/*
with oPlayer if id != other.id {
    if state == PS_RESPAWN && !other.shield_down {
        state_timer = 0
    }
}
*/
//set_view_position(room_width/2, 300)
