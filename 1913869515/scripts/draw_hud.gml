shader_start();

if halox < 8 {
    if halox == 0 {
    draw_sprite_ext(sprite_get("hud"),0,temp_x + 180,temp_y - 20,1.5 + min(.5,huddraw/30),1.5 + min(.5,huddraw/30),huddraw*huddraw/2,-1,1)
    }
    else {
    draw_sprite_ext(sprite_get("hud"),halox + 3,temp_x + 180,temp_y - 20,1.5 + min(.5,huddraw/30),1.5 + min(.5,huddraw/30),huddraw*huddraw/2,-1,1)
    }
} else {
      gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("hud"),halox + 3,temp_x + 180,temp_y - 20,1.5 + min(.5,huddraw/30),1.5 + min(.5,huddraw/30),get_gameplay_time() + huddraw*huddraw/2,-1,.6)
    draw_sprite_ext(sprite_get("hud"),halox + 3,temp_x + 180,temp_y - 20,1.2 + min(.5,huddraw/30),1.2 + min(.5,huddraw/30),get_gameplay_time()*3 + huddraw*huddraw/2,-1,.6)
    gpu_set_blendmode(bm_normal);
}

if halo > 0 {
draw_sprite_ext(sprite_get("hud"),halo,temp_x + 180,temp_y - 20,2 + min(.5,huddraw/30),2 + min(.5,huddraw/30),huddraw*huddraw/2,-1,1)
}

if huddraw > 0 {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_get("hud"), 3,temp_x + 180,temp_y - 20,2 + min(.5,huddraw/30),2 + min(.5,huddraw/30),huddraw*huddraw/2,-1,(huddraw - 15)/20)
    draw_sprite_ext(sprite_get("hud"), 11,temp_x + 180,temp_y - 20,2 + min(.5,huddraw/30),2 + min(.5,huddraw/30),huddraw*huddraw/2,-1,(huddraw - 15)/20)
    gpu_set_blendmode(bm_normal);
    huddraw -- 
}

shader_end();

// draw_debug_text( temp_x+60, temp_y-15, "state : " + get_state_name(state));
// draw_debug_text( temp_x+60, temp_y-30, "state timer : " + string(state_timer));
// draw_debug_text( temp_x+60, temp_y-45, "attack : " + string(attack));
// draw_debug_text( temp_x+60, temp_y-60, "window : " + string(window));
// draw_debug_text( temp_x+60, temp_y-75, "window timer : " + string(window_timer));
// draw_debug_text( temp_x- 15, temp_y-15, "hsp: " + string(hsp));
// draw_debug_text( temp_x- 15, temp_y-30, "vsp: " + string(vsp));
// draw_debug_text( temp_x- 15, temp_y-45, "grav: " + string(grav));
// draw_debug_text( 10, 10, "FPS : " + string(fps_real));



if zvoice == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Voiced");
}

if zvoice == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to active Zetta's voice.");
}


