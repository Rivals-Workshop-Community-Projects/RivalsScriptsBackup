var debug = 1;

var right_day = (
	current_day == clamp(current_day, 6, 7) &&
	current_month == 12 &&
	current_year == 2020);

if !((debug || (right_day && get_training_cpu_action() == CPU_FIGHT))){
	instance_destroy();
	exit;
}



bg_chars = [
	createLWO(-2, 0),
	createLWO(-1, 1),
	createLWO( 1, 2),
	createLWO( 2, 3)
	];

if depth == 0 depth = 10;

team = [
	"what",
	"what"
	];
team1 = [
	noone,
	noone
	];
actor = [
	noone,
	noone,
	noone,
	noone
	];

loaded = 0;

sprite_index = sprite_get("board");



with obj_stage_main{

	sprite_change_offset("board", 376, 352);
	sprite_change_offset("logos", 0, 0);
	
	sprite_change_offset("idle01", 72, 104); //Chef
	sprite_change_offset("idle02", 76, 86); //Valk
	sprite_change_offset("idle03", 32, 54); //Kirby
	
	sprite_change_offset("idle04", 32, 68); //Bluey
	sprite_change_offset("idle05", 42, 82); //Big Yoshi
	sprite_change_offset("idle06", 36, 82); //BlueyBot
	
	sprite_change_offset("idle07", 36, 76); //Hodan
	sprite_change_offset("idle08", 40, 70); //Fox
	sprite_change_offset("idle09", 40, 70); //Falco
	
	sprite_change_offset("idle10", 32, 48); //Bird Guy
	sprite_change_offset("idle11", 48, 54); //Archen
	sprite_change_offset("idle12", 98, 62); //Bird Guy in a Car
	
	sprite_change_offset("idle13", 122, 150);
	sprite_change_offset("idle14", 125, 164);
	sprite_change_offset("idle15", 125, 164);
	
	sprite_change_offset("idle16", 26, 68);
	sprite_change_offset("idle17", 28, 42);
	sprite_change_offset("idle18", 18, 66);
	
	sprite_change_offset("idle19", 63, 110);
	sprite_change_offset("idle20", 72, 92);
	sprite_change_offset("idle21", 40, 74);
	
	sprite_change_offset("idle22", 63, 106);
	sprite_change_offset("idle23", 62, 126);
	sprite_change_offset("idle24", 20, 50);
	
	sprite_change_offset("idle25", 48, 94);
	sprite_change_offset("idle26", 48, 92);
	sprite_change_offset("idle27", 44, 76);
	
	sprite_change_offset("idle28", 74, 114);
	sprite_change_offset("idle29", 74, 134);
	sprite_change_offset("idle30", 63, 114);
	
	sprite_change_offset("idle31", 40, 78);
	sprite_change_offset("idle32", 29, 70);
	sprite_change_offset("idle33", 47, 94);
	
	sprite_change_offset("idle34", 40, 78);
	sprite_change_offset("idle35", 48, 92);
	sprite_change_offset("idle36", 34, 72);
	
	sprite_change_offset("idle37", 71, 108);
	sprite_change_offset("idle38", 48, 76);
	sprite_change_offset("idle39", 48, 126);
	
	sprite_change_offset("idle40", 50, 94);
	sprite_change_offset("idle41", 50, 90);
	sprite_change_offset("idle42", 24, 74);
	
	sprite_change_offset("idle43", 22, 74);
	sprite_change_offset("idle44", 32, 72);
	sprite_change_offset("idle45", 20, 78);
	
	sprite_change_offset("idle46", 50, 78);
	sprite_change_offset("idle47", 32, 62);
	sprite_change_offset("idle48", 40, 78);
	
	sprite_change_offset("idle49", 49, 98);
	sprite_change_offset("idle50", 42, 78);
	sprite_change_offset("idle51", 64, 86);
	
	sprite_change_offset("idle52",  18, 72);
	sprite_change_offset("idle53", 32, 62);
	sprite_change_offset("idle54", 32, 62);
	
	sprite_change_offset("idle55", 106, 138);
	sprite_change_offset("idle56", 89, 114);
	sprite_change_offset("idle57", 91, 114);
	
	sprite_change_offset("idle58", 40, 98);
	sprite_change_offset("idle59", 20, 78);
	sprite_change_offset("idle60", 24, 74);
	
	sprite_change_offset("idle61", 90, 142);
	sprite_change_offset("idle62", 40, 74);
	sprite_change_offset("idle63", 26, 74);
	
	sprite_change_offset("idle64", 64, 126);
	sprite_change_offset("idle65", 64, 96);
	sprite_change_offset("idle66", 34, 54);
	
	sprite_change_offset("idle67", 52, 76);
	sprite_change_offset("idle68", 25, 68);
	sprite_change_offset("idle69", 60, 100);

	sprite_change_offset("idle70", 100, 140);
	sprite_change_offset("idle71", 100, 140);
	sprite_change_offset("idle72", 100, 140);
	
}



#define createLWO(offset, num)

var dist = get_stage_data(SD_WIDTH) / 5;

return {
	animSpeed: 1,
	x: x + dist * offset,
	y: get_stage_data(SD_Y_POS),
	sprite_index: asset_get("empty_sprite"),
	image_index: 0,
	image_xscale: -sign(offset),
	image_yscale: 1,
	image_angle: 0,
	image_blend: c_white,
	image_alpha: 1
};