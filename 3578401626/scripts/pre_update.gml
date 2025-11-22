//updating before

can_fast_fall = true;

with (obj_article1){
    if (variable_instance_exists(self, "backhoop")){
        if (instance_exists(backhoop)){
            backhoop.x = x + hsp;
            backhoop.y = y + vsp;
            backhoop.image_index = hoop_image;
            backhoop.image_xscale = size;
            backhoop.image_yscale = size;
            backhoop.image_angle = image_angle;
        }
    }
}
