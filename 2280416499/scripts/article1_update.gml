//ground

if object_index == obj_stage_main exit;

if current_layout has_changed_layouts = 1;



if current_layout != prev_layout{
	current_layout = current_layout % array_length(layouts);
	if !("death_timer" in obj_stage_main && obj_stage_main.death_timer) loadLayout(current_layout);
}



var wide = false;

with asset_get("obj_stage_article_solid") if num == 2{
	if (x > other.x + 352) wide = true;
}

sprite_index = sprite_get("ground_" + string(wide + 1));
mask_index = sprite_get("ground_" + string(wide + 1));



prev_layout = current_layout;



#define loadLayout(index)

killPlats();

var obj = layouts[index];

width = clamp(obj.width * 32, width_min, width_max)

if !array_equals(obj.plats, []) for (var i = array_length(obj.plats) - 1; i >= 0; i--){
	var plat = obj.plats[i];
	spawnPlat(plat.y_pos, plat.x_pos, plat.width);
}

// sound_play(asset_get("sfx_ell_uspecial_rebuild"), 0, noone, 0.7, 1.1);



#define spawnPlat(y_grid, x_grid, size)

var plat = instance_create(x + 16 * x_grid, y + 16 * y_grid, "obj_stage_article_platform", 3);
plat.width = size;
plat.dir = sign(x_grid);



#define killPlats()

with asset_get("obj_stage_article_platform") if num == 3 && state != 2{
	state = 2;
	state_timer = 0;
	real_y = round(y);
}