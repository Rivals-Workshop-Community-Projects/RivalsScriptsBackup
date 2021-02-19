///

if golden != 0 and get_gameplay_time() % 2 == 0{
       draw_debug_text(x - 190, y - 160,"This player have reject the competitiveness of the game.");
}


shader_start();


if attack = AT_EXTRA_1 and window >= 2 && window <= 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("dark"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, 0.5);
}

shader_end();