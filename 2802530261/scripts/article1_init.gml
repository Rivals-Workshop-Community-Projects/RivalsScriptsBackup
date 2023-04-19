attack = player_id.attack;
quick = false;
uses_shader = 1;
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
    bomb_id = -1;
    spread = 0;
    loop = 0;
    spread_timer = 0;
    bomb_yscale = (image_index < 5? 2: (bomb_timer - 25) / (has_rune("G")? 1.5: 5));
    bomb_xscale = (image_index < 5? 2: (bomb_timer - 25) / (has_rune("G")? 1.5: 5));
}