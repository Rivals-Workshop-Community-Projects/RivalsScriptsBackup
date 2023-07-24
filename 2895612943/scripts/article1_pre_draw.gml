//crash prevention line

if (free && ((state == 0 || state == 2) || (stored_atk == AT_DTILT || stored_atk == AT_TAUNT_2 || stored_atk == AT_FTILT || stored_atk == AT_UTILT || 
    stored_atk == AT_JAB || stored_atk == AT_DATTACK || stored_atk == AT_DSTRONG || stored_atk == AT_FSTRONG || stored_atk == AT_USTRONG || stored_atk == AT_TAUNT))){
    draw_sprite(sprite_get("gravcancel"), (floor(get_gameplay_time()/4) % 32), x, y + 63)
}