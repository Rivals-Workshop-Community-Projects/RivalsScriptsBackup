// other_post_draw.gml
// Draws sprites behind the other player
// Use other_player_id to refer to this character's files

// Creates the sticky candy floor sprite when an opponent is on the floor
var	ca = noone;

with (other_player_id){
	ca = sprite_get("stickygoo");
}

if ("isCandy" in self && isCandy && !free){
    if sprite_exists(ca) { // Shoutouts to supersonic for this lil code!
		draw_sprite_ext(ca, clamp(3-CandyCounter/20,0,3), x, y, 1, 1, 0, -1, 1);
	}
}

/*
draw_debug_text(x, y - 40, "HS_Grav: " + string(hitstun_grav));
draw_debug_text(x, y - 60, "Counter: " + string(CandyCounter));
draw_debug_text(x, y - 80, "Is:: " + string(isCandy));
*/