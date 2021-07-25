
if !visible exit;


for (var i = 0; i < maxplanets; i++) {

	if !planet[i].orbiting && !planet[i].parrytime {
		draw_sprite_ext(sprite_get("line_fx"), 0, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height, -point_distance(planet[i].x, planet[i].y, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height)/266, 1, point_direction(planet[i].x, planet[i].y, planet[i].owner.x, planet[i].owner.y - planet[i].orbit_height), c_white, 0.3)
		draw_sprite(sprite_get("fspecial_fx"), planet[i].numb, planet[i].x, planet[i].y)
	}
	//draw_debug_text(floor(planet[i].x),floor(planet[i].y+4), string(planet[i].visible))

	draw_sprite_ext(hologram[i, 0], hologram[i, 1], hologram[i, 2], hologram[i, 3], hologram[i, 5]*2, 2, 0, c_white, hologram[i, 4])
}
