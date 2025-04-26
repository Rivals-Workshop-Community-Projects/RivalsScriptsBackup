
//fixes color mapping breaking on online css, code from https://rivalswsmanual.miraheze.org/wiki/Init_shader.gml
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

if (alt_palette == 0){
    set_character_color_slot( 6, 204, 204, 204 ); //clothes2
}