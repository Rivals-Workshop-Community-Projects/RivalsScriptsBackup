smwhurry = false;

if is_aether_stage() {
slope1 = spawn_slope(get_marker_x(1)-22, get_marker_y(1), get_marker_x(2)-16, get_marker_y(2)+6, 0, 1, 0);
slope2 = spawn_slope(get_marker_x(3)+16, get_marker_y(3), get_marker_x(4)+10, get_marker_y(4)+6, 0, -1, 0);
spawn_slope(get_marker_x(5)+22, get_marker_y(5), get_marker_x(6) + 122, get_marker_y(6) - 100, 0, 1, 0);

spc1 = instance_create(floor((get_marker_x(2)-16 + get_marker_x(4)+10)*.5), get_marker_y(2)+30, "obj_stage_article_solid", 9);
spc1.mask_index = sprite_get("a_very_useful_mask");
spc1.sprite_index = sprite_get("a_very_useful_mask");
spc1.image_angle = -45;
spc1.image_xscale = 200;
spc1.image_yscale = 100;
spc1.visible = 0;

//camp = [room_width/2, room_height/2];

spc1 = instance_create(get_marker_x(5)+48, get_marker_y(5), "obj_stage_article_solid", 9);
spc1.mask_index = sprite_get("a_very_useful_mask");
spc1.sprite_index = sprite_get("a_very_useful_mask");
spc1.image_angle = 45;
spc1.image_xscale = 3000;
spc1.image_yscale = 400;
spc1.visible = 0;

}

//darkurai slopes
#define spawn_slope
/// spawn_slope(x1, y1, x2, y2, wall = 0, dir = 1, ceiling = 0;)
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3];
var wall = argument_count > 4 ? argument[4] : 0;
var dir = argument_count > 5 ? argument[5] : 1;
var ceiling = argument_count > 6 ? argument[6] : 0;;
var slope = instance_create(round(lerp(x1, x2, .5)), round(lerp(y1, y2, .5))-2 - room_height*2, "obj_stage_article_platform", 6);
slope.mask_index = sprite_get("slope");
slope.image_angle = point_direction(x1, y1, x2, y2);
slope.image_xscale = point_distance(x1, y1, x2, y2)/2;
slope.slope_pos1 = [x1, y1];
slope.slope_pos2 = [x2, y2];
slope.wall = wall;
slope.dir = dir;
slope.ceiling_slope = ceiling;
return slope;