//debug-draw
/*
draw_debug_text(x, y-40, string(position_meeting(reticleX, reticleY, obj_article_platform)));
draw_debug_text(x, y-20, string(instance_place(reticleX, reticleY, obj_article_platform)));
*/
//draw_debug_text(x, y, string(stunX));
//draw_debug_text(x, y+20, string(stasisActive));
//draw_debug_text(x, y+40, string(reticleX));
//draw_debug_text(x, y+20, string(room_width));

//draw_debug_text(x, y, string(stasisActive))
/*
with oPlayer {
    //if (id != other.id) {
        draw_debug_text(x, y-20, string(get_state_name(state)))
        //draw_debug_text(x, y, string(invincible))
        //draw_debug_text(x, y+20, string(hitStasis))
        //draw_debug_text(x, y+40, string(stasisHitCounter))
        //draw_debug_text(x, y+60, string(stasisTimer))
    //}
}
*/

/*
with pHurtBox {
    draw_debug_text(x, y+20, string(instance_place(x, y, pHitBox))) 
}
*/

/*
with pHitBox {
    draw_debug_text(x, y+20, string(player_id));
}
*/

/*
with oPlayer {
    draw_debug_text(x, y, string(get_state_name(state)));
    //draw_debug_text(x, y+20, string(stasisHitCounter));
}
*/

/*
with obj_article_platform {
    //draw_debug_text(x, y, string(stasisEndHsp));
    //draw_debug_text(x, y+20, string(stasisEndVsp));
    //draw_debug_text(x, y+40, string(inStasis));
    
    draw_debug_text(x, y+20, string(darctan2(vsp, hsp)));
}
*/

//draw_debug_text(x, y, string(stasisActive));
//draw_debug_text(x, y + 20, string(inStasis));