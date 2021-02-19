//platforms update
if(variable_instance_exists(obj_stage_main, "rotating")){
    if(obj_stage_main.rotating){
        var x1 = xPlat - center_x;
        var y1 = yPlat - center_y;

        var x2 = x1 * cos(rotation_speed) - y1 * sin(rotation_speed);
        var y2 = x1 * sin(rotation_speed) + y1 * cos(rotation_speed);

        xPlat = x2 + center_x;
        yPlat = y2 + center_y;

        hsp = floor(xPlat - x);
        vsp = floor(yPlat - y);
    }
    else{
        hsp = 0;
        vsp = 0;
    }
}

if(spawn_reznor){
    reznor = instance_create(x, y + plat_offsetY, "obj_stage_article", 4);
    reznor.random_index = spawn_variables[0];
    obj_stage_main.reznor_alive++;
    spawn_reznor = false;
}
//print_debug("x: "+string(x)+", y: "+string(y));