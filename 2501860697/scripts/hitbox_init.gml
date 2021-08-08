
//for AT_FSPECIAL_AIR charged shot
is_exploding = false;
explode_timer = 0;

//for AT_FSPECIAL_2
if (attack == AT_FSPECIAL_2 && hbox_num == 1) {
    in_player = array_create(5, {
        timer : 0,
        active : false,
        ztc_hit_x : 0,
        ztc_hit_y : 0
        
    });
}