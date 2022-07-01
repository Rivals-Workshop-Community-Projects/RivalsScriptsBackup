// - Controls the rules -

sprite_index = sprite_get("blank");
mask_index = sprite_get("blank");

// Rules
rules = array_create(5);

rules[0] = {
	name: "Rival is You",
	state:  true};
rules[1] = {
	name: "Rival is ___",
	state:  "none"};
rules[2] = {
	name: "Skull is Defeat",
	state:  false};
rules[3] = {
	name: "Wall is Stop",
	state:  true};
rules[4] = {
	name: "Hedge is Stop",
	state:  true};

changeTimer = 60 * 0;
speed = 3;
sinceChange = 0;
changeOptions = [];
nextChange = "";
prevChange = "";
dontChange = "";

jiggle = 1/350;

debug = "";
trailerText = false; // Trailer Only


// Terrain
x_offset = 18 * 32;
y_offset = 9.5 * 32;

articles = [];

initArt("wall",true,-15,4,8,5,"obj_stage_article_solid");
initArt("wall",true,7,4,8,5,"obj_stage_article_solid");
initArt("hedge",true,-5,5,10,4,"obj_stage_article_solid");
initArt("hedgeplat",true,-11,-1,8,2,"obj_stage_article_platform");
initArt("hedgeplat",true,3,-1,8,2,"obj_stage_article_platform");

for (var i = 0; i <= array_length(articles); i++) {
    var object = spawnArt(articles[i].x_pos,articles[i].y_pos,articles[i].width,articles[i].height,articles[i].type,articles[i].spr, articles[i].active);
    articles[i].id = object;
}


#define initArt(st_spr, bool_active, x, y, w, h, st_type) 
var obj = {
	spr: st_spr,
	active: bool_active,
	x_pos: x,
	y_pos: y,
	width: w,
	height: h,
	type: st_type
    };
    
array_push(articles, obj);

#define spawnArt(x_grid, y_grid, width, height, type, spr, bool_active)
var art = instance_create(x_offset + x_grid * 32, y_offset + y_grid * 32, type, 1);
art.spr = spr;
art.active = bool_active;
art.width = width;
art.height = height;
art.image_xscale = width;
art.image_yscale = height;
return art;
