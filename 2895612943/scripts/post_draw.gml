//crash prevention line
//draw_sprite(currensprite, currentimage, x-100, y-100)

if free && state == PS_ATTACK_AIR {
    if (attack == AT_DTILT || attack == AT_TAUNT_2 || attack == AT_FTILT || attack == AT_UTILT || attack == AT_JAB || attack == AT_DATTACK || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_TAUNT)
    draw_sprite(sprite_get("gravcancel"), (floor(get_gameplay_time()/4) % 32), x, y + 63)
}

if(move_cooldown[AT_USPECIAL_2] > 0){
    draw_sprite_ext(sprite_get("arrow"), 0, x - 1, y - char_height - hud_offset - 24, 2, 2, 0, c_white, 1);
}