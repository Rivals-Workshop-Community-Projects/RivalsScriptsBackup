var radius = ease_quadOut(0,light_radius,light_timer,light_max_timer)*1.25 + 0.2*sin(get_gameplay_time() / 22)
var alpha = 0.55 + 0.26*sin(get_gameplay_time() / 30)

draw_sprite_ext(sprite_get("nspecial2_glow"),0,x,y,radius,radius,0,light_color,1)