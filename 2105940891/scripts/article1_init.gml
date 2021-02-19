//article init

init = 0;
sprite_index = sprite_get("MinionLarge");
mask_index = sprite_get("MinionLarge");
image_index = 0;
image_speed = 0.5;
hitstop = 0;
got_hit = false;
dir = noone;

specialCharged = false;

CopyAttack = true;
CopyTimer = 0;
CopyActivated = false;

follow = false;
trail = false;
trailVertical = false;

health = 40; // 40 Base Health

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
vsp = 0;

sub_delay = 0;
melee_delay = 0;
hitCheck = false;
got_hit = false;

hitpauseTimer = 0;
hitpauseCheck = false;

attackTimer = 0;
attackTrue = false;

regularTimer = 0;

// Same code used for Prince Melody Bubble and Platform
// Destroys oldest/latest Substitute
// I could probably do something simpler with instance_exist
// but this works so I'll keep
minion_age = 0;
var minion_id = noone;

if (instance_number(obj_article1) > 1){
	with(obj_article1) {

		if (minion_id == noone) {
			minion_id = id;
		}
		
		if (minion_age > minion_id.minion_age) {
			minion_id = id;
		}
	}
	minion_id.minion_age = 28790;
}
