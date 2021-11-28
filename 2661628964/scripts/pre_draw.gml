if stock_timer > 0{
    if stock_owner == 1{
        draw_sprite(sprite_get("covet_p1"), (stock_timer/60), x-24, y+4)
    }
    if stock_owner == 2{
        draw_sprite(sprite_get("covet_p2"), (stock_timer/60), x-24, y+4)
    }
    if stock_owner == 3{
        draw_sprite(sprite_get("covet_p3"), (stock_timer/60), x-24, y+4)
    }
    if stock_owner == 4{
        draw_sprite(sprite_get("covet_p4"), (stock_timer/60), x-24, y+4)
    }
    if stock_owner == 0{
        draw_sprite(sprite_get("covet_p0"), (stock_timer/60), x-24, y+4)
    }
}

