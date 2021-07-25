//

if(state == 0){ //idle
    if(get_gameplay_time() % 10 == 0){
        image_index += 1;
        if(image_index > 3){
            image_index = 0;
        }
    }
}