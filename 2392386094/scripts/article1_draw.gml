//draw_debug_text(x,y,"HELLO, GORDON! "+string(timer))
with obj_stage_main {
    draw_sprite_ext(bg_port,0,view_get_xview(),view_get_yview(),2,2,0,c_white,1);
    with oPlayer {
        draw_sprite_ext(portrait,portrait_index,view_get_xview()+portrait_pos[0],view_get_yview()+portrait_pos[1],(player == 1)*2-1,1,0,c_white,.2);
    }
}

