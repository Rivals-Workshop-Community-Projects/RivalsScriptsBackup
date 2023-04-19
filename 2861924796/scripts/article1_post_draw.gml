//
// if player_id.hive_level == 1{
//     draw_sprite_ext(sprite_get("lv_up"), state_timer, x, y + vfx_pos*-1, 1, 1, 0, c_white, vfx_opac)
// }

if state == 4 and level_timer < 100 and armor_activate == false{
    draw_sprite_ext(sprite_get("lv_up"),level_timer/4,x,y-60-(level_timer/2),1,1,0,c_white,vfx_opac)
    level_timer += 1
    vfx_opac -= .01
}
if armor_activate == true{
    level_timer = 101
    draw_sprite_ext(sprite_get("armor_up"),armor_timer/4,x,y-60-(armor_timer/2),1,1,0,c_white,armor_vfx_opac)
    armor_timer += 1
    armor_vfx_opac -= .01
    if armor_timer >= 100{
        armor_activate = false
    }
}
if (replacedcount = 1){
    draw_sprite(sprite_get("hive_overhud"), 0, x-26, y-68)
    draw_rectangle_color(x-24, y-64, ((x - 24) + ((player_id.hive_hp1*2)))-1, y-67, c_white, c_white, c_white,c_white, false)
}
if (replacedcount = 2){
    draw_sprite(sprite_get("hive_overhud"), 0, x-26, y-68)
    draw_rectangle_color(x-24, y-64, ((x - 24) + ((player_id.hive_hp2*2)))-1, y-67, c_white, c_white, c_white, c_white, false)
}
// if player_id.honey_armor > 0{
//     draw_sprite(sprite_get("ha_small"), 0, x-16, y)
//     draw_debug_text(x+4,y+2, string(player_id.honey_armor))
// }

//print(shiny_timer)