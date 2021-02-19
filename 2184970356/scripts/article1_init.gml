//article init

init = 0;
sprite_index = sprite_get("Substitute");
mask_index = sprite_get("Substitute");
image_index = 0;

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = true;
vsp = 6;

sub_delay = 0;
hitCheck = false;
got_hit = false;

windTimer = 0;
windCheck = true;
wind_delay = 0;

gravCheck = true;
gravTimer = 0;

// Same code used for Prince Melody Bubble and Platform
// Destroys oldest/latest Substitute
// I could probably do something simpler with instance_exist
// but this works so I'll keep
sub_age = 0;
var sub_id = noone;

if (instance_number(obj_article1) > 1){
	with(obj_article1) {

		if (sub_id == noone) {
			sub_id = id;
		}
		
		if (sub_age > sub_id.sub_age) {
			sub_id = id;
		}

	}
	sub_id.sub_age = 50;
}

