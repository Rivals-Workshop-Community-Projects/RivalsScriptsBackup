/*
draw_debug_text(x, y, "electric: " + string(sfxCountArray[0]));
draw_debug_text(x, y+20, "fire: " + string(sfxCountArray[1]));
draw_debug_text(x, y+40, "water: " + string(sfxCountArray[2]));
draw_debug_text(x, y+60, "ground: " + string(sfxCountArray[3]));
draw_debug_text(x, y+80, "air: " + string(sfxCountArray[4]));

draw_debug_text(x+100, y, string(vfxCountArray[0]));
draw_debug_text(x+100, y+20, string(vfxCountArray[1]));
draw_debug_text(x+100, y+40, string(vfxCountArray[2]));
draw_debug_text(x+100, y+60, string(vfxCountArray[3]));
draw_debug_text(x+100, y+80, string(vfxCountArray[4]));
*/

/*
with oPlayer {
    if player != other.player {
        draw_debug_text(x, y, string(get_window_value(attack, window, AG_WINDOW_SFX)));
    }
}

hboxAttack = 0;
hboxNum = 0;
with pHitBox {
    other.hboxAttack = attack;
    other.hboxNum = hbox_num;
}

draw_debug_text(x, y, string(get_hitbox_value(hboxAttack, hboxNum, HG_HIT_SFX)));

*/

/*
draw_debug_text(x, y-100, string(get_state_name(state)));
draw_debug_text(x, y-80, string(djumpFallTimer));
draw_debug_text(x, y-60, string(djumpStateTimer));
*/
/*
draw_debug_text(x, y-60, string(instance_number(obj_article1)));

*/

//draw_debug_text(x, y-40, string(y));
//draw_debug_text(x, y-20, string(djumpPressVar));
/*
with obj_article1 {
    draw_debug_text(x, y, string(recentNum));
}
*/
/*
with pHitBox {
    draw_debug_text(x, y-20, string(y));
}
*/

/*
with oPlayer {
    draw_debug_text(x, y, string(state));
    //draw_debug_text(x, y, string(djumpPressVar));
    //draw_debug_text(x, y+20, string(djumpHoverTime));
    //draw_debug_text(x, y+40, string(djumpEndingTime));
}
*/

