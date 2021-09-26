bomb_cooldown = 0;
bomb_movement = 0;
special_bombs = false;
depth = player_id.depth - 2
if(player_id.special_bomb == true){
    special_bombs = true;
}
ignores_walls = false;
mask_index = 1;

bomb_hsp = random_func_2(1, 2, false);
bomb_direction = random_func_2(2, 2, true);