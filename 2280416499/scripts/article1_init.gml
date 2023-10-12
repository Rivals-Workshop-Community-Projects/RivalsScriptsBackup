//ground

if object_index == obj_stage_main exit;

sprite_index = sprite_get("ground_1");
mask_index = asset_get("empty_sprite");

width = 32 * 10;
width_max = 32 * 14;
width_min = 32 * 8;

grid_alpha = 0;
grid_mode = 0;

walls = [0, 0];
bridges = [0, 0];



depth = 27;



//Store platform layouts

layouts = [];

has_changed_layouts = 0;

/*
 * initStage(name, width in grids)
 * initPlat(y in grids, x in grids, width in grids)
 *
 * order plats highest first for draw order!
 *
 * stage widths are measured in full grids, from the center to either side
 * platform widths are measured in full grids, from one side to the other
 * platform positions are measured in full grids, from the center of the floor
 * anything EXCEPT plat widths may use x.5 for half-grids
 */

var tt_idx = 0;
var vl_idx = 0;

tt_idx = initStage("Training Town", 10);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Fire Capitol", 13);
initPlat(-6, -9, 4);
initPlat(-6, 9, 4);
initPlat(-3, -5, 4);
initPlat(-3, 5, 4);

initStage("Air Armada", 11);
initPlat(-5.5, -8, 6);
initPlat(-5.5, 8, 6);

initStage("Rock Wall", 12);
initPlat(-6, -6, 4);
initPlat(-6, 6, 4);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Merchant Port
( Plats Approximated )", 10.5);
initPlat(-5.5, -2.5, 2);
initPlat(-5.5, 2.5, 2);
initPlat(-3, -8, 3);
initPlat(-3, 8, 3);

initStage("Blazing Hideout", 10);
initPlat(-4, 0, 12);

initStage("Treetop Lodge
( Singles )", 8);
initPlat(-5, 5, 6);
initPlat(-3, -5, 6);

initStage("Treetop Lodge
( Doubles )", 11);
initPlat(-6, -5, 4);
initPlat(-5, 5, 6);
initPlat(-3, -5, 6);

initStage("Tempest Peak", 8);
initPlat(-3, -4, 4);
initPlat(-3, 4, 4);
initPlat(-1, -11.5, 4);
initPlat(-1, 11.5, 4);

initStage("Frozen Fortress", 12);
initPlat(-6, -6.5, 5);
initPlat(-6, 6.5, 5);
initPlat(-3, 0, 5);

initStage("Tower of Heaven", 10);
initPlat(-6, 0, 4);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Aethereal Gates
( Out )", 10);
initPlat(-3.5, -6.5, 5);
initPlat(-3.5, 6.5, 5);

initStage("Aethereal Gates
( In )", 10);
initPlat(-3.5, -2.5, 5);
initPlat(-3.5, 2.5, 5);

initStage("Endless Abyss", 10.5);

initStage("Spirit Tree", 9);
initPlat(-2.5, -9, 6);
initPlat(-2.5, 9, 6);

initStage("Forest Floor
( Singles )", 11);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Forest Floor
( Doubles )", 14);
initPlat(-6, -6, 4);
initPlat(-6, 6, 4);
initPlat(-3, -12, 4);
initPlat(-3, 0, 4);
initPlat(-3, 12, 4);

initStage("Julesvale
( Center )", 9);
initPlat(-3, 0, 6);

initStage("Julesvale
( Left )", 9);
initPlat(-3, -9, 6);

initStage("Julesvale
( Right )", 9);
initPlat(-3, 9, 6);

initStage("Julesvale
( Right + Top )", 9);
initPlat(-6, 0, 3);
initPlat(-3, 9, 6);

initStage("Troupple Pond", 8);
initPlat(-6, 0, 6);
initPlat(-3, -8, 6);
initPlat(-3, 8, 6);



initStage("Mollusk Dock", 10.5);
initPlat(-6, 0, 6);
initPlat(-3, 0, 4);

initStage("Comet Observatory", 8);
initPlat(-3, -8.5, 4);
initPlat(-3, 8.5, 4);

initStage("Cool Table", 9);
initPlat(-3, -10.5, 3);
initPlat(-3, 0, 3);
initPlat(-3, 10.5, 3);

initStage("World 1-4", 8);
initPlat(-3, -4.5, 5);

initStage("Six-String Sands", 8);
initPlat(-7, 0, 4);
initPlat(-5, -4, 3);
initPlat(-5, 4, 3);
initPlat(-3, 0, 4);

initStage("Village
( 4 Plat )", 10);
initPlat(-6, -6, 4);
initPlat(-6, 6, 4);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Village
( 3 Plat )", 10);
initPlat(-6, 6, 4);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

vl_idx = initStage("Village
( 2 Plat )", 10);
initPlat(-3, -6, 4);
initPlat(-3, 6, 4);

initStage("Village
( 1 Plat )", 10);
initPlat(-3, 6, 4);

initStage("Village
( 0 Plat )", 10);

initStage("Planet Wisp
( Offset Right )", 8);
initPlat(-3.5, -4, 4);
initPlat(-2.5, 9.5, 5);

initStage("Astral Plane", 12);
initPlat(-5, -7, 6);
initPlat(-5, 7, 6);

initStage("Honeyhive Galaxy", 10);
initPlat(-3, -6.5, 5);
initPlat(-3, 6.5, 5);

initStage("Hyrule Castle", 11);
initPlat(-4.5, 7.5, 4);
initPlat(-3, -5.5, 8);

initStage("World Tournament", 8);

initStage("Half-n-Half Showhall
( Day )", 11);
initPlat(-4, -9.5, 3);

initStage("Half-n-Half Showhall
( Midpoint )", 11);
initPlat(-4, -5.5, 11);

initStage("Half-n-Half Showhall
( Night )", 11);
initPlat(-4, -1.5, 19);

initStage("Air Armada Heist", 10);
initPlat(-6, 0, 4);
initPlat(-3, -6, 4);

initStage("The Time Machine
( All Solid Ground )", 8);
initPlat(-4, -11, 4);
initPlat(-4, 11, 4);

// initStage("ALL THE PLATS
// (help)", 14);
// initPlat(-7, 0, 4);
// initPlat(-6, -9, 4);
// initPlat(-6, -6.5, 5);
// initPlat(-6, -6, 4);
// initPlat(-6, -5, 4);
// initPlat(-6, 9, 4);
// initPlat(-6, 6.5, 5);
// initPlat(-6, 6, 4);
// initPlat(-6, 0, 6);
// initPlat(-6, 0, 4);
// initPlat(-6, 0, 3);
// initPlat(-5.5, -8, 6);
// initPlat(-5.5, -2.5, 2);
// initPlat(-5.5, 8, 6);
// initPlat(-5.5, 2.5, 2);
// initPlat(-5, -3, 2);
// initPlat(-5, 5, 6);
// initPlat(-5, 3, 2);
// initPlat(-4, 0, 12);
// initPlat(-3, -12, 4);
// initPlat(-3, -10.5, 3);
// initPlat(-3, -9, 6);
// initPlat(-3, -8.5, 4);
// initPlat(-3, -8, 6);
// initPlat(-3, -8, 3);
// initPlat(-3, -6.5, 5);
// initPlat(-3, -6, 4);
// initPlat(-3, -5, 6);
// initPlat(-3, -5, 4);
// initPlat(-3, -4.5, 5);
// initPlat(-3, -4, 4);
// initPlat(-3, -2.5, 5);
// initPlat(-3, 12, 4);
// initPlat(-3, 10.5, 3);
// initPlat(-3, 9, 6);
// initPlat(-3, 8.5, 4);
// initPlat(-3, 8, 6);
// initPlat(-3, 8, 3);
// initPlat(-3, 6.5, 5);
// initPlat(-3, 6, 4);
// initPlat(-3, 5, 4);
// initPlat(-3, 4, 4);
// initPlat(-3, 2.5, 5);
// initPlat(-3, 0, 6);
// initPlat(-3, 0, 5);
// initPlat(-3, 0, 4);
// initPlat(-3, 0, 3);
// initPlat(-2.5, -9, 6);
// initPlat(-2.5, 9, 6);
// initPlat(-1, -11.5, 4);
// initPlat(-1, 11.5, 4);

already_layouts = [tt_idx, vl_idx];

current_layout = 0;
prev_layout = -1;





#define initStage(st_name, st_width)

var obj = {
	name: st_name,
	width: st_width,
	plats: []
};

array_push(layouts, obj);

return(array_length(layouts) - 1);



#define initPlat(grid_y, grid_x, grid_w)

var obj = {
	y_pos: grid_y * 2,
	x_pos: grid_x * 2,
	width: grid_w
};

array_push(layouts[array_length(layouts) - 1].plats, obj);