//location debugger

/* //moved to draw_hud
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(asset_get("roaMBLFont"))

if cutscene_timer > 360 && cutscene_timer < 800 { 
    draw_sprite_ext(sprite_get("cutscene"), 0, 160, 90, 1, 1, 0, -1, (cutscene_timer - 360) / 60 )
    
}
if cutscene_timer >= 800 {
     draw_sprite_ext(sprite_get("cutscene"), 0, 160, 90, 1, 1, 0, -1, 1 - ((cutscene_timer - 800) / 120))
}

if cutscene_timer >= 800 {
     draw_text_color(190, 590, real_string, c_white, c_white, c_white, c_white, 1 - ((cutscene_timer - 800) / 120))
} else {
    draw_text_color(190, 590, real_string, c_white, c_white, c_white, c_white, 1)
}
//print("aeiou")
//print(real_string)