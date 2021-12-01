//got_parried - called when an opponent parries your attack

if(hit_player_obj.skl_poisoned && hit_player_obj.skl_poisoner == player) {
    hit_player_obj.skl_poisoned = false;
    hit_player_obj.skl_poisoner = 0;    
}