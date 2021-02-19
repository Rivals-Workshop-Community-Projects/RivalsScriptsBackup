//updates
if(is_aether_stage()){
    switch (state){
        //rotating without reznor
        case 0:
            rotating = true;

            if(state_timer == 0){
                state = 1;
                state_timer = 40;

                //play sfx
                with(obj_stage_article){
                    if(get_article_script(id) == 1){
                        sound_play(sound_get("roar"));
                    }
                }
            }
            break;
        //stopping wheel
        case 1:
            rotating = false;

            if(state_timer == 0){
                state = 2;
                state_timer = 20;

                //spawn in the reznor
                with(obj_stage_article_platform){
                    if(get_article_script(id) == 3){
                        spawn_reznor = true;
                    }
                }
            }
            break;
        //after reznor spawn
        case 2:
            if(state_timer == 0){
                state = 3;
            }
            break;
        //rotating with reznor
        case 3:
            rotating = true;

            if(reznor_alive == 0){
                state = 0;
                state_timer = 1000;
            }
            break;
    }
    state_timer--;
}

//particles spawning from the lava
if(particle_timer == 0){
    var randX = random_func(0, room_width, true);
    var particle = instance_create(randX, room_height - 115, "obj_stage_article", 5);
    particle_timer = particle_timer_amount;
}
particle_timer--;