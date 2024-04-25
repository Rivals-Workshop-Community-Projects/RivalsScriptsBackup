
// Drone indicators (set up for max 3 drones atm, but code is flexible)
if ("nspec_drone_cd" not in self) exit;

var drone_spr = sprite_get("hud_drone");

if (has_rune("C")) { // rune C unlocks third drone
    var h2 = sprite_get_height(drone_spr) * clamp((nspec_drone_cd/nspec_drone_cd_max)-nspec_max_drones+3, 0, 1) // cd appears on third-to-last drone
    var y2 = sprite_get_height(drone_spr) - h2;
    draw_sprite(drone_spr, 0, temp_x+170, temp_y-16);
    draw_sprite_part_ext(drone_spr, 0, 0, y2, sprite_get_width(drone_spr), h2, temp_x+170, temp_y-16+y2, 1, 1, c_black, 0.5);
}

var h1 = sprite_get_height(drone_spr) * clamp((nspec_drone_cd/nspec_drone_cd_max)-nspec_max_drones+2, 0, 1) // cd appears on second-to-last drone
var y1 = sprite_get_height(drone_spr) - h1;
draw_sprite(drone_spr, 0, temp_x+178, temp_y-16);
draw_sprite_part_ext(drone_spr, 0, 0, y1, sprite_get_width(drone_spr), h1, temp_x+178, temp_y-16+y1, 1, 1, c_black, 0.5);

var h0 = sprite_get_height(drone_spr) * clamp((nspec_drone_cd/nspec_drone_cd_max)-nspec_max_drones+1, 0, 1) // cd appears on last drone
var y0 = sprite_get_height(drone_spr) - h0;
draw_sprite(drone_spr, 0, temp_x+174, temp_y-20);
draw_sprite_part_ext(drone_spr, 0, 0, y0, sprite_get_width(drone_spr), h0, temp_x+174, temp_y-20+y0, 1, 1, c_black, 0.5);
