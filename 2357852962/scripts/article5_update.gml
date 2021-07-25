state_timer ++;
x ++;


if (state == 0){
    sprite_index = sprite_get("bg1");
    with obj_stage_main{
        set_bg_data(9, BG_LAYER_Y, cutscene_ladder);
    }
}

if (state_timer == 100 && state == 0){
    state = 1;
    state_timer = 0;
    with obj_stage_main{
        set_bg_data(9, BG_LAYER_Y, usual_ladder );
    }
}

if (state == 1){
    sprite_index = asset_get("empty_sprite");
}