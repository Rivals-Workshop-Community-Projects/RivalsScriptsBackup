attack = player_id.attack;
quick = false;
//taunt
if(player_id.attack == AT_TAUNT){
    item_id = player_id.item_id;
    alpher = 1;
}
//dstrong
if(attack == AT_DSTRONG){
    bomb_timer = 0;
}
//dspecial
if(attack == AT_DSPECIAL){
    bomb_type = player_id.bomb_type;
    bomb_timer = 0;
    player_id.bomb_amount++;
}