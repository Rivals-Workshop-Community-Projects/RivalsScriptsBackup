///

shader_start();


if fcharge == 3{
draw_sprite_ext(sprite_get("charge3"), 0, stax - 28, stay + 50, 2,2, 90, -1, 0.4 + fchargecd/30 )
}

if fcharge == 2{
draw_sprite_ext(sprite_get("charge2"), 0, stax - 28, stay + 50, 2,2, 90, -1, 0.4 + fchargecd/30 )
}

if fcharge == 1{
draw_sprite_ext(sprite_get("charge1"), 0, stax - 28, stay + 50, 2,2, 90, -1, 0.4 + fchargecd/30 )
}

if fcharge == 0{
draw_sprite_ext(sprite_get("charge0"), 0, stax - 28, stay + 50, 2,2, 90, -1, 0.4 + fchargecd/30 )
}

shader_end()  