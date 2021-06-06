// Custom Events - Scene Manager

//Called upon when event_triggered = true, for event_id in the scene manager


//Custom Event Code Here
switch event_id {
    case 2:
        sound_play(asset_get("mfx_coin"));
        room_switch(1);
        break;
    case 0:
        targets_broken++;
        break;
    case 420:  
        if debug print_debug("ded");
        break;
    case 69:
        scene_switch(2);
        break;
    default:
        if debug print_debug("[SM] No Event Found for ["+string(event_id)+"]");
        break;
    case 4:
        create_deathbox(obj_triggered.x,obj_triggered.y,10,10,-1,true,0,6,2);
        targets_broken = 0;
        cur_scene_time = 0;
        break;
}

//


#define scene_switch(_scene_id)
with obj_stage_article if num == 3 switch_to_scene = _scene_id;
#define room_switch(_room_id)
with obj_stage_article if num == 5 switch_to_room = _room_id;
