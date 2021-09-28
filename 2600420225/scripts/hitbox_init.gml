if(player_id.is_aiming == "up_" && player_id.is_facing == "right"){
    proj_angle = 90;
}else if(player_id.is_aiming == "up_" && player_id.is_facing == "left"){
    proj_angle = -90;
}

if(player_id.is_aiming == "down_" && player_id.is_facing == "right"){
    proj_angle = -90;
}else if(player_id.is_aiming == "down_" && player_id.is_facing == "left"){
    proj_angle = 90;
}

if(player_id.is_aiming == "diagonal_up_" || (player_id.is_aiming == "up_" && (player_id.state == PS_WALK || player_id.state == PS_DASH_START || player_id.state == PS_DASH))){
    proj_angle = 0;
}

if(player_id.is_aiming == "diagonal_down_" && player_id.is_facing == "right"){
    proj_angle = -90;
}else if(player_id.is_aiming == "diagonal_down_" && player_id.is_facing == "left"){
    proj_angle = 90;
}

if(player_id.is_aiming == "forward_"){
    proj_angle = 0;
}


destroy_timer = 0;
stop_timer = 0;
backup_x = 0;
backup_y = 0;