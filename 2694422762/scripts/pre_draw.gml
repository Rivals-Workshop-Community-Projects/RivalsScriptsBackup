if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    if (attack == AT_DSPECIAL) {
        var attack_spr = sprite_get("fx_dspecial1")
        if (blackjack_cooling_timer <= 0) {
            if (blackjack_meter_stored >= 3 && blackjack_meter_stored < 6)
                attack_spr = sprite_get("fx_dspecial2")
            if (blackjack_meter_stored >= 6 && blackjack_meter_stored < 9)
                attack_spr = sprite_get("fx_dspecial3")
            if (blackjack_meter_stored >= 9 && blackjack_meter_stored < 12)
                attack_spr = sprite_get("fx_dspecial4")
            if (blackjack_meter_stored >= 12 && blackjack_meter_stored < 15)
                attack_spr = sprite_get("fx_dspecial5")
            if (blackjack_meter_stored >= 15 && blackjack_meter_stored < 18)
                attack_spr = sprite_get("fx_dspecial6")
            if (blackjack_meter_stored >= 18 && blackjack_meter_stored < 21)
                attack_spr = sprite_get("fx_dspecial7")
        }
        if (blackjack_meter_stored >= 21)
            attack_spr = sprite_get("fx_dspecial8")
        var img_num = sprite_get_number(attack_spr);
        var y_off = -32;
        
        if (blackjack_max_timer >= 0) {
            shader_start()
             draw_sprite_ext(attack_spr, clamp(blackjack_max_timer, 0, img_num-1), round(x + draw_x), round(y + draw_y + y_off), spr_dir, 1, 0, c_white, 1);
            shader_end()
        }
    }
}