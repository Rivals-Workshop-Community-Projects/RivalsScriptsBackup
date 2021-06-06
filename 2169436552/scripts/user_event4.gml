//Custom Scene Triggers - Scene Manager

switch cur_room {
    case 1:
        switch cur_scene {
            case 2:
                if is_aether_stage() && max_time < cur_scene_time scene_switch(3);
                if targets_broken == targets_max {
                    if is_aether_stage() end_time = max_time-cur_scene_time;
                    else end_time = cur_scene_time;
                    scene_switch(3);
                }
                break;
        }
    break;
}



//



//DO NOT EDIT BELOW
#define scene_switch(_scene_id)
with obj_stage_article if num == 3 switch_to_scene = _scene_id;
#define room_switch(_room_id)
with obj_stage_article if num == 5 switch_to_room = _room_id;
