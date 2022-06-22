if((my_hitboxID.attack == AT_FSPECIAL || attack == AT_USPECIAL) && my_hitboxID.hbox_num == 1){
    my_hitboxID.destroyed = true;
    if(butterfly != noone){
        butterfly.state = 9;
        butterfly = noone;
    }
}

if(my_hitboxID.attack == AT_DSPECIAL){
    switch(my_hitboxID.hbox_num){
        case 1:
        if(instance_exists(block1)){
            block1.state = 5;
    		block1.image_index = 11;
    		block1.state_timer = 0;
        }
        break;
        case 2:
        if(instance_exists(block2)){
            block2.state = 5;
    		block2.image_index = 11;
    		block2.state_timer = 0;
        }
        break;
        case 3:
        if(instance_exists(block3)){
            block3.state = 5;
    		block3.image_index = 11;
    		block3.state_timer = 0;
        }
        break;
        case 4:
        if(butterfly != noone){
        	butterfly.state = 9;
        	butterfly.state_timer = 0;
        	butterfly.image_index = 11;
        	butterfly = noone;
        }
        break;
        default:
        break;
    }
}