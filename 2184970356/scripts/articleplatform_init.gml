//article_init

sprite_index = sprite_get("NSPECIAL_proj");
mask_index = sprite_get("NSPECIAL_proj");
image_index = 0;
image_speed = 0.5;
hitstop = 0;

init = 0;
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;

initial = true;

hit_delay = 40;
platform = 0;

dsnowCheck = false;
dsnowTimer = 0;

run_check = 0;

hitAge = 0;
hitCheck = false;

windTimer = 0;
windCheck = true;

instance_check = true;

melee_delay = 0;

// Pops Oldest Bubble
bubble_age = 0;
var oldest_plat_id = noone;
var plats_checked = 0;

if (instance_number(obj_article_platform) > 1){
	with(obj_article_platform) {

		if (oldest_plat_id == noone) {
			oldest_plat_id = id;
		}
		
		if (bubble_age > oldest_plat_id.bubble_age) {
			oldest_plat_id = id;
		}
	}
	oldest_plat_id.bubble_age = 9990;
}

// List of things to do for this article

// 1. [X] Give bubbles decreased movement when being stood on
// 2. [X] Make the oldest bubble pop on creation of a new bubble
// 3. [X] Make the bubbles moveable on hit
// 4. [ ] Make bubbles freezable (Maybe turn them into static articles?)

// LOL this is just Prince Melody's bubble code but slightly altered
// am I a genius or a fool? Since Prince Melody probably won't release
// for another year or so I'll keep this lol