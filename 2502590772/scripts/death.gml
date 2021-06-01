//death.gml


if (is_master_player) exit;

//hud visual
visual_hud_icon_hurt = true;

//if the leader was KO'd but the teammate is still alive, swap leadership to the teammate.
if (!custom_clone) {
    if (instance_exists(teammate_player_id)) {
        user_event(4); //swap leaders
    }
    else {
        //if the teammate isn't around, this counts as an actual stock loss. do the usual death.gml things here.
        with (master_player_id) {
            hh_charge_level = 0;
            hh_charge_percent = 0;
        }
    }
}

//don't let the game despawn the clone for good.
if (custom_clone) {
    //mark the other player as having no teammate.
    if (instance_exists(teammate_player_id)) teammate_player_id.teammate_player_id = noone;
    
    //the clone being KO'd doesn't count as a stock loss
    var current_stocks = get_player_stocks(player);
    set_player_stocks(player, current_stocks + 1);
    //handle the ko'd teammate manually
    has_been_knocked_out = true;
    
    //mark this character as an active player so that the game doesn't instance-destroy it
    custom_clone = false;
}


//this code allows the game to end correctly upon losing all stocks.
if (custom_clone == false && get_player_stocks(player) <= 1 && !instance_exists(teammate_player_id)) {
    with (master_player_id) {
        set_state(PS_DEAD);
    }
}

