var cx = room_width/2;
var cy = room_height/2;
var px = view_get_xview() + 480 - cx;
var py = view_get_yview() + 270 - cy;
var t = get_gameplay_time();

var j = 0;
repeat 8{
	draw_sprite_ext(sprite_get("rings"), j, cx + px*.4, cy + py*.4, 1, 1, t*ringspeeds[j]/100, c_white, 1);
	j++;
}
draw_sprite_ext(sprite_get("yinyangroot"), t/6, cx + px*.4, cy + py*.4, 1, 1, t*.1, c_white, 1);

draw_sprite_ext(sprite_get("rock2"), 0, cx + px*.25, cy + py*.25 + 30*dsin(t*.9 +130), 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("rock1"), 0, cx + px*.2, cy + py*.2 + 30*dsin(t), 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("rock3"), 0, cx + px*.3, cy + py*.3 + 30*dsin(t*.6 +200), 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("rock4"), 0, cx + px*.2, cy + py*.2 + 30*dsin(t*1.1 -90), 2, 2, 0, c_white, 1);
