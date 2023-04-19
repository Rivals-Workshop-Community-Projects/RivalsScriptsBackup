if attack == AT_DSPECIAL{
    switch(hbox_num){
        case 2:
            player_id.clock_exists = self;
        break;
        case 3:
            can_hit = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
            hit_priority = 1;
        break;
        case 5:
            player_id.musicbox_exists = self;
        break;
        case 10:
            can_hit_self = true;
        break;
    }
}