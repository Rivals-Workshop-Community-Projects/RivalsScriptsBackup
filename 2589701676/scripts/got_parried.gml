// called when the character gets a parry
hit_player_obj.numChains=0;
hit_player_obj.chainedDown=0;
my_key.current_owner_id = hit_player_obj.id;
if (my_hitboxID.attack==AT_FSPECIAL){
    my_boomerang.owner = hit_player;
}