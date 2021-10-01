if(!free && (attack == AT_DTHROW || attack == AT_FTHROW)) || ((attack == AT_UTHROW || AT_DSTRONG_2) && !free && (player_id.beam_level == "1" || player_id.beam_level == "2" || player_id.beam_level == "3")){
    destroyed = true
}

if(stop_timer >= 2){
    destroyed = true;
}

if(x <= -500 || x >= 2000 || y <= -700 || y >= 1200){
    destroyed = true
}

sprite_change_offset("physical_attacks_missile_contact_explosion", 8, 22);
sprite_change_offset("physical_attacks_super_missile_contact_explosion", 26, 40);

if(attack == AT_UTHROW){
sprite_change_offset("beam_attacks_1_shot_and_charge_collision", 6, 10);
sprite_change_offset("beam_attacks_2_shot_and_charge_collision", -30, -17);
sprite_change_offset("beam_attacks_3_shot_and_charge_collision", -30, -17);
}
if(attack == AT_DSTRONG_2){
sprite_change_offset("beam_attacks_1_shot_and_charge_collision", -12, 0);
sprite_change_offset("beam_attacks_2_shot_and_charge_collision", -48, -18);
sprite_change_offset("beam_attacks_3_shot_and_charge_collision", -48, -18);
}

if(backup_y = y && backup_x == x){
    stop_timer++
}else{
    stop_timer = 0;
}

backup_x = x;
backup_y = y;