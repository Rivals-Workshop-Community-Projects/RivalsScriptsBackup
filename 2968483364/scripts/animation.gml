if(attack == AT_USPECIAL && window == 5){
    if(right_down xor left_down){
        if(right_down - left_down == spr_dir){
            image_index = 11;
        }else if(right_down - left_down == spr_dir * -1){
            image_index = 10;
        }else{
            image_index = 9;
        }
    }
}