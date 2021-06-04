//overclock minions
shader_start()
if boosting_minions {
    var boost_idk = 8;
    if boosting_field_timer < boost_idk {
        draw_sprite_ext(sprite_get("boost_zone"),0,x,y-15,ease_linear(0,1,boosting_timer_rn,boost_idk),ease_linear(0,1,boosting_timer_rn,boost_idk),0,c_white,0.25);
    } else {
        draw_sprite_ext(sprite_get("boost_zone"),0,x,y-15,1,1,0,c_white,0.3);
    }
}
shader_end();