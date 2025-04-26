//draw_hud.gml

if("steam" not in self) exit;

draw_sprite(sprite_get("hud_steam_meter"), (steam / 3.13), temp_x + 31, temp_y + 24)

if(all_runes){
    draw_debug_text(temp_x + 40, temp_y - 14, "ALL RUNES")
}