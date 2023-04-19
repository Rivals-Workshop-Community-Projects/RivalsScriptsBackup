switch state {
    //falling
    case 0:
        vsp += grav;
        image_index = (state_timer % 16) / 4
        if (!free) {
            switch_state(1);
            vsp = 0;
        }
        break;
    
    case 1:
        hsp = 0;
        vsp = 0;
        image_index = 4 + (state_timer / 6);
        if (free) switch_state(0);
        if (state_timer == 6) switch_state(2);
        break;
    
    case 2:
        image_index = 5;
        if (free) switch_state(0);
        break;
        
}

if (exist_timer > lifetime) {
    spawn_hit_fx(x, y-6, player_id.vfx_l);
    instance_destroy();
    exit;
}

with asset_get("oPlayer") { // This should be replaced with a url check after launch
    var aur_tech_check = (state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD);
    if (get_char_info(player, INFO_STR_NAME) == "Aur" || get_char_info(player, INFO_STR_NAME) == "Aur Beta" && state_cat != SC_HITSTUN && !aur_tech_check) {
        if (place_meeting(x, y, other)) {
            if adrenaline_timer == 0 {
            white_flash_timer_set(10)
            }
            adrenaline_timer = other.player_id.adrenaline_max;

            with other { spawn_hit_fx(x, y-6, player_id.vfx_l);}
            sound_play(asset_get("sfx_oly_nspecial_flashbreak"));
            sound_play(asset_get("sfx_shop_buy"));
            
            instance_destroy(other);
            exit;
        }
    }
}

state_timer++;
exist_timer++;

#define switch_state(nstate)
    state = nstate;
    state_timer = 0;
    if (nstate = 0) image_index = 0;

#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}

