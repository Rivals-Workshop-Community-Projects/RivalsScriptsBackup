//baby postdraw
if (player_id.debugtime) {
	var debx = floor(x);
	var deby = floor(y);
    //draw_debug_text(x, y-112, "state: " + string(state));
    //draw_debug_text(x, y-96, "follow: " + string(babyfollowing));
    draw_debug_text(debx, deby+62, "s: " + string(storeddir));
    draw_debug_text(debx, deby+46, "h: " + string(spr_dir));
    draw_debug_text(debx, deby+32, "l: " + string(latchedid.spr_dir));
    draw_debug_text(debx, deby+16, "st: " + string(state));
    draw_debug_text(debx, deby, "pulled: " + string(ispulled));
}