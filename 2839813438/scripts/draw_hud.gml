//draw_hud
if (is_aether_stage()){

with oPlayer{
    if (!clone){
    space_offset = 0
    icon_draw(other.hp_icon, ct_hp)
    icon_draw(other.offense_icon, ct_offense)
    icon_draw(other.charge_icon, ct_charge)
    icon_draw(other.defense_icon, ct_defense)
    icon_draw(other.weight_icon, ct_weight)
    icon_draw(other.boost_icon, ct_boost)
    icon_draw(other.top_speed_icon, ct_topspeed)
    icon_draw(other.turn_icon, ct_turn)
    icon_draw(other.glide_icon, ct_glide)
    }
}

}

#define icon_draw(icon_sprite,stat_index)
var hud_width = 238

//change the numbers to change the starting point of the line of icons
var hud_offset_x = 110
var hud_offset_y = 34

var icon_x = view_get_wview()/2 - (multiplayer_num*hud_width/2) + hud_width*hud_number - hud_offset_x*2
var icon_y = view_get_hview() - hud_offset_y*2

draw_sprite_ext(argument[0], argument[1], icon_x + (space_offset*2), icon_y, 2, 2, 0, c_white, 1)

//change this number to change the spacing between the icons
space_offset += 12

