//wheel update
if(variable_instance_exists(obj_stage_main, "rotating")){
    if(obj_stage_main.rotating){
        image_angle = rotation;
        rotation += rotation_amount;
    }
}