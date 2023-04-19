//user_event3.gml - master initialization.
//called at the start of update.gml

//the game crashes when holding down at the start of the match, so let's try this:
down_down = false;

initialize_unit_players = true;

var player_type = "oPlayer";
//if (object_index == asset_get("oTestPlayer")) player_type = "oTestPlayer";
//else player_type = "oPlayer";

var edit_instance_id;
created_instance_index = 0; //since everything in load.gml and attacks happens instantly, we need to make a record of which character is being spawned beforehand.
unit_player_id_array[0] = instance_create( x + spr_dir * 320, y, player_type); //plusle
created_instance_index = 1;
unit_player_id_array[1] = instance_create( x - spr_dir * 320, y, player_type); //minun
unit_current_leader_index = 0;

edit_instance_id = unit_player_id_array[0];
edit_instance_id.master_player_id = id;
edit_instance_id.teammate_player_id = unit_player_id_array[1];
edit_instance_id.species_id = 0; //plusle
edit_instance_id.custom_clone = 0; //leader 
edit_instance_id.state = state;

edit_instance_id = unit_player_id_array[1];
edit_instance_id.master_player_id = id;
edit_instance_id.teammate_player_id = unit_player_id_array[0];
edit_instance_id.species_id = 1; //minun
edit_instance_id.custom_clone = 1; //follower 
edit_instance_id.state = state;

//this player doesn't take part in the match, so deactivate it
hitpause = true;
invincible = true;
gravity_speed = 0;
//set_state(PS_DEAD);
set_attack(AT_EXTRA_3);
visible = false;

user_event(8); //establish buff damage



