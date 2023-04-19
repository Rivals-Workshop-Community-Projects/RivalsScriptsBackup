// if stock_timer > 0{
//     if stock_owner == 1{
//         draw_sprite(sprite_get("covet_p1"), (stock_timer/60), x-24, y+4)
//     }
//     if stock_owner == 2{
//         draw_sprite(sprite_get("covet_p2"), (stock_timer/60), x-24, y+4)
//     }
//     if stock_owner == 3{
//         draw_sprite(sprite_get("covet_p3"), (stock_timer/60), x-24, y+4)
//     }
//     if stock_owner == 4{
//         draw_sprite(sprite_get("covet_p4"), (stock_timer/60), x-24, y+4)
//     }
//     if stock_owner == 0{
//         draw_sprite(sprite_get("covet_p0"), (stock_timer/60), x-24, y+4)
//     }
// }

// if (attack == AT_FSPECIAL){
//     if window == 1 and window_timer == 16{
//         spawn_hit_fx(x,y,after_image)
//     }
// }
if honey_armor > 0{
    draw_sprite(sprite_get("ha_small"), 0, x-16, y)
    draw_debug_text(x+4,y+2, string(honey_armor))
}