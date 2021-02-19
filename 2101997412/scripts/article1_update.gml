//BG Rect Spawner

//Decrease timer by a random amount each frame
timer -= random_func(2, 17, true);

//When timer hits below 0 spawn a bg rectangle in a random location
if(timer <= 0){
    type = random_func(1, 4, true);

    switch(type){
        //left to right
        case 0:
            var rect = instance_create(0 - offset, random_func(0, room_height, true), "obj_stage_article", 2);
            rect.dir = 0;
            rect.spr_dir = 1;
            break;
        //right to left
        case 1:
            var rect = instance_create(room_width + offset, random_func(0, room_height, true), "obj_stage_article", 2);
            rect.dir = 0;
            rect.spr_dir = -1;
            break;
        //up to down
        case 2:
            var rect = instance_create(random_func(0, room_width, true), 0 - offset, "obj_stage_article", 2);
            rect.dir = 1;
            rect.spr_dir = 1;
            break;
        case 3:
            var rect = instance_create(random_func(0, room_width, true), room_height + offset, "obj_stage_article", 2);
            rect.dir = 1;
            rect.spr_dir = -1;
            break;
    }
    //Put BG rectangle behind the stage
    rect.depth = 30;

    timer = spawntime;
}
