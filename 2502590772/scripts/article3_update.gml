//article3_update
//article that draws dspecial's field range.

#macro CST_INACTIVE 0 
#macro CST_LEVEL_1 1 //these are as you'd expect - transitions to the respective 'reset' state when helping hand ends
#macro CST_LEVEL_2 2
#macro CST_LEVEL_3 3
#macro CST_LEVEL_1_NEW 4 //these states are transition animations - transitions into the respective 'level' state above
#macro CST_LEVEL_2_NEW 5
#macro CST_LEVEL_3_NEW 6
#macro CST_LEVEL_0 7 //state for when helping hand is active but no charge has been gained
#macro CST_LEVEL_3_RESET 8 //chain down these states when helping hand ends
#macro CST_LEVEL_2_RESET 9
#macro CST_LEVEL_1_RESET 10
#macro CST_LEVEL_0_RESET 11 //this state transitions back to 'inactive'






switch (article_id) {
case 0:




state_timer++;

if (state_timer == 1) {
    visible = true;
}

snap_to_attached_unit_location();

switch (state) {
case CST_INACTIVE:
    if (state_timer == 1) { visible = false; attached_to_unit_player_id = noone; }
    
    if (attached_to_unit_player_id != noone) {
        go_to_state(CST_LEVEL_0);
        if (instance_exists(attached_to_unit_player_id)) spr_dir = attached_to_unit_player_id.spr_dir;
    }
break;

case CST_LEVEL_0:
    visible = false;
    if (player_id.hh_charge_level > 0) {
        go_to_state(CST_LEVEL_1_NEW);
    }
    else if (attached_to_unit_player_id == noone) {
        go_to_state(CST_LEVEL_0_RESET);
    }
break;

case CST_LEVEL_1_NEW:
case CST_LEVEL_2_NEW:
case CST_LEVEL_3_NEW:
    image_index = (state - 1) * 28 + (state_timer / 3);
    if (state_timer == 1) {
        sound_play(sfx_levelup);
    }
    else if (state_timer >= 8) {
        switch (state) {
            case CST_LEVEL_1_NEW: go_to_state(CST_LEVEL_1); break;
            case CST_LEVEL_2_NEW: go_to_state(CST_LEVEL_2); break;
            case CST_LEVEL_3_NEW: go_to_state(CST_LEVEL_3); break;
            default: go_to_state(CST_LEVEL_0_RESET); break;
        }
    }
break;

case CST_LEVEL_1:
    if (player_id.hh_charge_level > 1) {
        go_to_state(CST_LEVEL_2_NEW);
        break;
    }
case CST_LEVEL_2:
    if (player_id.hh_charge_level > 2) {
        go_to_state(CST_LEVEL_3_NEW);
        break;
    }
case CST_LEVEL_3:
    image_index = 4 + ((state - 1) * 28) + (floor(state_timer / 2) mod 24);
    if (attached_to_unit_player_id == noone || player_id.hh_charge_level <= 0 ) {
        var attached_unit_exists = instance_exists(attached_to_unit_player_id);
        switch (state) {
            case CST_LEVEL_1: go_to_state(CST_LEVEL_1_RESET); if attached_unit_exists spawn_hit_fx_2x(x, y, attached_to_unit_player_id.vfx_dspecial_chargedespawn[0]); break;
            case CST_LEVEL_2: go_to_state(CST_LEVEL_2_RESET); if attached_unit_exists spawn_hit_fx_2x(x, y, attached_to_unit_player_id.vfx_dspecial_chargedespawn[1]); break;
            case CST_LEVEL_3: go_to_state(CST_LEVEL_3_RESET); if attached_unit_exists spawn_hit_fx_2x(x, y, attached_to_unit_player_id.vfx_dspecial_chargedespawn[2]); break;
            default: go_to_state(CST_INACTIVE); break;
        }
        //attached_to_unit_player_id = noone;
    }
break;

case CST_LEVEL_3_RESET:
case CST_LEVEL_2_RESET:
case CST_LEVEL_1_RESET:
    image_index = 4 + (state - 4) * 28;
    if (attached_to_unit_player_id != noone) {
        go_to_state(CST_LEVEL_0);
    }
    else if (state_timer >= 2) {
        go_to_next_state();
    }
break;
case CST_LEVEL_0_RESET:
    image_index = 0;
    if (attached_to_unit_player_id != noone) {
        go_to_state(CST_LEVEL_0);
    }
    else go_to_state(CST_INACTIVE);
break;

}


break; //end of article id 0

case 1: //article that draws dspecial's explosion
visible = true;
x = player_id.x;
y = player_id.y - 30;

if (image_index < 3) {
    image_index += 0.5;
    if (player_id.state_cat == SC_HITSTUN) {
        instance_destroy();
        exit;
    }
}
else {
    image_index += 0.33;
    if (image_index >= sprite_get_number(sprite_index)) {
        instance_destroy();
        exit;
    }
}


break; //end of article id 1
}



#define snap_to_attached_unit_location
if (!instance_exists(attached_to_unit_player_id)) return;
x = attached_to_unit_player_id.x;
y = attached_to_unit_player_id.y - 30;

#define go_to_next_state
state++;
state_timer = 0;
return;


#define go_to_state(state_num)
state_num = argument0;
state = state_num;
state_timer = 0;
return;


#define spawn_hit_fx_2x(x_pos, y_pos, fx)
var new_fx = spawn_hit_fx(x_pos, y_pos, fx);
new_fx.spr_dir *= 2;
new_fx.image_yscale = 2;