if(debug){

    draw_debug_text(x - 30, y + 5, "Can Dspec:" + string(can_dspec));
    draw_debug_text(x - 30, y + 20, "Freeze Timer:" + string(frozen_timer));
    draw_debug_text(x - 30, y + 35, "Knives:" + string(knives));
    draw_debug_text(x - 30, y + 50, "State timer:" + string(state_timer));
    draw_debug_text(x - 30, y + 65, "Grab:      " + string(grab));
    draw_debug_text(x - 30, y + 80, "Depth:      " + string(depth));
    with(oPlayer){
        if(id != other.id){
            draw_debug_text(x - 30, y + 5, "Knife Stack: " + string(knife_stack));
            draw_debug_text(x - 30, y + 20, "Is Frozen: " + string(is_frozen));
            draw_debug_text(x - 30, y + 35, "Countdown: " + string(countdown));
            //draw_debug_text(x - 30, y + 35, "HSP / Store HSP:       " + string(hsp) + " / " + string(store_hsp));
            //draw_debug_text(x - 30, y + 50, "VSP / Store VSP:       " + string(vsp) + " / " + string(store_vsp));
            //draw_debug_text(x - 30, y + 65, "Old HSP/VSP:       " + string(old_hsp) + " / " + string(old_vsp));
            draw_debug_text(x - 30, y + 50, "Hitstun/ Counter:      " + string(hitstun) + " / " + string(hitstun_counter));
            draw_debug_text(x - 30, y + 65, "Hitstun:      " + string(hitstun));
            draw_debug_text(x - 30, y + 80, "Depth:      " + string(depth));
        }
    }
}