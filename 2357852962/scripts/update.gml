state_timer ++;

if (get_training_cpu_action() != CPU_FIGHT && training_mode == false){
    training_mode = true;
}

if (platform_1 == noone){
if (is_aether_stage() == false){
platform_1 = instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article_platform", 1);
} else{
    platform_1 = instance_create(get_marker_x(5), get_marker_y(5), "obj_stage_article_platform", 1);
}
}

if (platform_2 == noone){
if (is_aether_stage() == false){
platform_2 = instance_create(get_marker_x(3), get_marker_y(3), "obj_stage_article_platform", 2);
}
}

/*if (get_game_timer() < 299){
    suppress_stage_music( 0, 0.02 );
}*/

if (training_mode == true){
with oPlayer{
    if attack == AT_TAUNT{
        with obj_stage_main{
            if (DG_active == false){
            charles_summoned = true;
            }
        }
    }
}
}


if (date_page == 71 && DG_charles_trigger = false && charles_summoned = false){
    DG_charles_trigger = true;
    charles_summoned = true;
} else if (date_page == 71 && charles_crashed == true) {
    with oPlayer{
        if url == 2346704679 or 2396061657{
            chatindex = 72;
        }
    }
}

with (asset_get("oPlayer")){
    if url == 2346704679 or url == 2396061657{
        var chat = chatindex
            with obj_stage_main{
                date_page = chat;
                }
        with obj_stage_main{
            DG_active = true;
        }
    } else with obj_stage_main{
            DG_active = false;
        }
}

if (charles == noone && get_game_timer() == 299 or charles == noone && training_mode == true && charles_crashed == false && charles_summoned == true){
    if DG_active == false or DG_active == true && DG_charles_trigger == true{
charles = instance_create(get_marker_x(8), get_marker_y(8), "obj_stage_article", 3);
}
}

if (charles_crashed == true && end_cutscene = noone && cutscene_bg = noone){
    end_cutscene = instance_create(get_marker_x(7), get_marker_y(7), "obj_stage_article", 4);
    end_cutscene = instance_create(get_marker_x(10), get_marker_y(10), "obj_stage_article", 5);
}

var plat1 = platform_1;
with platform_1{
if (place_meeting(x, y - 10, oPlayer)){
    with oPlayer{
        if free == false && state_timer == 1{
            with plat1{
                if (state != 1){
                state = 1;
                state_timer = 0;
                sprite_index = sprite_get("platform_landed");
                image_index = 1;
                }
            }
        }
        
    }
    
} else state = 0;
}

var plat2 = platform_2;
with platform_2{
if (place_meeting(x, y - 10, oPlayer)){
    with oPlayer{
        if free == false && state_timer == 1{
            with plat2{
                if (state != 1){
                state = 1;
                state_timer = 0;
                sprite_index = sprite_get("platform_landed");
                image_index = 1;
                }
            }
        }
        
    }
    
} else state = 0;
}

if (state_timer == 540){
    if (stage_state < 3){
        stage_state += 1;
    } else stage_state = 0;
    state_timer = 0;
}
if (stage_state == 1){
    if (is_aether_stage() == false){
        with platform_1{
            if x < get_marker_x(2){
                hsp = 1;
            } else{ x = get_marker_x(2);
            hsp = 0;
            }
        }
        with platform_2{
            if x > get_marker_x(4){
                hsp = -1;
            } else{ x = get_marker_x(4);
            hsp = 0;
            }
        }
    } else {
        with platform_1{
            if x < get_marker_x(6){
                hsp = 1;
            } else{ x = get_marker_x(6);
            hsp = 0;
            }
        }
    }
}
if (stage_state == 3){
    if (is_aether_stage() == false){
        with platform_1{
            if x > get_marker_x(1){
                hsp = -1;
            } else{ x = get_marker_x(1);
            hsp = 0;
            }
        }
        with platform_2{
            if x < get_marker_x(3){
                hsp = 1;
            } else{ x = get_marker_x(3);
            hsp = 0;
            }
        }
    } else {
        with platform_1{
            if x > get_marker_x(5){
                hsp = -1;
            } else{ x = get_marker_x(5);
                hsp = 0;
            }
        }
    }
}

/*var platform1 = platform_1;

with oPlayer{
    if (place_meeting(x, y - 10, platform1) && state == PS_LAND){
        with platform1{
            state = 1;
            state_timer = 0;
        }
    }
}*/

//Le Date Gorl

