// got_parried.gml

if (hit_player_obj.pastelle_soaked && hit_player_obj.pastelle_soaked_id == id){
    hit_player_obj.pastelle_soaked = false;
}

if (attack == AT_JAB) jab_parry_check = true; //set the parry flag to true so the game knows if it should disregard it or not
