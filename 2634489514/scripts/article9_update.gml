//article9_update, Checkpoint

if !_init {
    trigger_shape = spawn_variables[0];
    trigger_w = spawn_variables[1];
    trigger_h = spawn_variables[2];
    destroy_on_trigger = spawn_variables[3];
    // checkpoint_id = spawn_variables[3];
    // stock_type = spawn_variables[4];
    // stock_limit = spawn_variables[5];
    // visible = true;
}

switch trigger_shape {
    case 0:
        collis_obj = collision_rectangle(x-trigger_w/2,y-trigger_h/2,x+trigger_w/2,y+trigger_h/2,oPlayer,false,true);
        break;
    case 1:
        collis_obj = collision_circle(x,y,trigger_w,oPlayer,true,true);
        break;
    case 2:
        collis_obj  = instance_place(x,y,oPlayer);
        break;
}
if collis_obj != noone  {
    with oPlayer respawn_point = [other.x, other.y, room_manager.cur_room]; //All players get the checkpoint by default
    if destroy_on_trigger {
        instance_destroy();
        exit;
    }
}