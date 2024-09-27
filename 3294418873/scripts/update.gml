
//Turn cameos off based on load random
if(get_gameplay_time() == 1){
    with(obj_stage_article){
        switch(spawn_variables[1]){
            case 1:
                if(other.spawn_1 != 1){
                    active = false;
                }
            break;
            case 2:
                if(other.spawn_2 != 1){
                    active = false;
                }
            break;
            case 3:
                if(other.spawn_3 != 1){
                    active = false;
                }
            break;
            case 4:
                if(other.spawn_4 != 1){
                    active = false;
                }
            break;
            case 5:
                if(other.spawn_5 != 1){
                    active = false;
                }
            break;
            case 6:
                if(other.spawn_6 != 1){
                    active = false;
                }
            break;
            case 7:
                if(other.spawn_7 != 1){
                    active = false;
                }
            break;
            case 8:
                if(other.spawn_8 != 1){
                    active = false;
                }
            break;
            case 9:
                if(other.spawn_9 != 1){
                    active = false;
                }
            break;
            case 10:
                if(other.spawn_10 != 1){
                    active = false;
                }
            break;
            case 11:
                if(other.spawn_11 != 1){
                    active = false;
                }
            break;
            case 12:
                if(other.spawn_12 != 1){
                    active = false;
                }
            break;
        }
    }
}