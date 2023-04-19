/////////////////////////////////////// ERUPTION TYPE CHART //////////////////////////////////////////////////
/*

1. 1 charge pillar 1
2. 2 charge pillar 1
3. 3 charge pillar 2
4. 3 charge pillar 1
5. 3 charge pillar 2
6. 3 charge pillar 3
7. full charge pillar 1
8. full charge pillar 2
9. full charge pillar 3

*/

infinite_eruptions = player_id.infinite_eruptions;

eruption_type = player_id.eruption_type;

first_pillar = (eruption_type == 1 || eruption_type == 2 || eruption_type == 4 || eruption_type == 7);
last_pillar = (eruption_type == 1 || eruption_type == 3 || eruption_type == 6 || eruption_type == 9 || player_id.attack == AT_USPECIAL);

// for kb testing
// if(eruption_type != 1){
//     last_pillar = false;
// }

sprite_index = sprite_get("eruption_spawn");
image_index = 0;

state = 0;
state_timer = 1;
image_index_timer = 1;

uses_shader = true;

can_be_grounded = true;
ignores_walls = false;
through_platforms = false;

eruption_burn_timer = 4;
current_index = -1;

var deep = depth;
with(oPlayer){
    if(depth <= deep){
        deep = depth - 1;
    }
}
depth = depth;

is_ike_eruption = true;

// if(player_id.eruption_charges > 0){
//     player_id.eruption_charges--;
// }

var check_y = y;
var quit = false;
for(var i = 0; i < 50; i++){
    x += 1 * player_id.spr_dir;
    while(!position_meeting(x, check_y + 1, asset_get("par_block")) && !position_meeting(x, check_y + 2, asset_get("par_jumpthrough"))){
        check_y++;
        if(check_y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
            break;
        }
    }
    if(position_meeting(x, check_y + 1, asset_get("par_block")) || position_meeting(x, check_y + 2, asset_get("par_jumpthrough"))){
        if(check_y > y){
            y = check_y;
        }
    } else {
        player_id.eruption_charges = 0;
        var quit = true;
        // instance_destroy();
        // exit;  
    }
}
if(!free){
    quit = false;
}

if(last_pillar && !quit){
    current_index = 3;
}

for(var i = 0; i < 3; i++){
	if(instance_exists(player_id.eruption_instances[i])){
		if(player_id.eruption_instances[i] == self){
			current_index = i;
		}
	}
}
if(state == 420){
    current_index = -1;
}
if(!infinite_eruptions){
	for(var i = 0; i < current_index; i++){
	    if(instance_exists(player_id.eruption_instances[i])){
	        if(place_meeting(x, y, player_id.eruption_instances[i])){
	            player_id.eruption_instances[i].image_index = 0;
	            player_id.eruption_instances[i].state = 420;
	            player_id.eruption_instances[i].state_timer = 0;
	            sound_play(asset_get("sfx_burnend"));
	        }
	    }
	}
}

with(player_id){
    for(var i = 0; i < 3; i++){
    	if(instance_exists(eruption_instances[i])){
    		if(eruption_instances[i].state == 420){
    			eruption_instances[i] = noone;
    		}
    	} else {
    		eruption_instances[i] = noone;
    	}
    }
    
    if(!eruption_instances[0]){
    	eruption_instances[0] = eruption_instances[1];
    	eruption_instances[1] = eruption_instances[2];
    	eruption_instances[2] = noone;
    }
    if(!eruption_instances[1]){
    	eruption_instances[1] = eruption_instances[2];
    	eruption_instances[2] = noone;
    }
}

if(last_pillar && !quit){
    if(player_id.eruption_instances[2] == noone){
        player_id.eruption_instances[2] = self;
    } else {
    	player_id.eruption_instances[0] = player_id.eruption_instances[1];
    	player_id.eruption_instances[1] = player_id.eruption_instances[2];
    	player_id.eruption_instances[2] = self;
    }
}


sound_play(sound_get("sfx_eruption"), false, false, 2);

player_id.eruption_spawn_x = x;
player_id.eruption_spawn_y = y;

// instance_destroy();
// exit;