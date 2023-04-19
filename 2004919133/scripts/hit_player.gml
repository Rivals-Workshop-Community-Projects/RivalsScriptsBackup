var article_times = my_hitboxID.damage;
pon_test = 0;

if (my_hitboxID.kb_angle >= 70 || my_hitboxID.kb_angle <= 110){
    pon_angle = 1;
}
else if (my_hitboxID.kb_angle >= 240 || my_hitboxID.kb_angle <= 300){
    pon_angle = 2;
}
else{
    pon_angle = 0;
}

if (hit_player_obj != self){   
    repeat (article_times){
        var pon = instance_create(hit_player_obj.x - 16*hit_player_obj.spr_dir, hit_player_obj.y - 8,"obj_article1");
        pon_test++;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR){
    window = 6;
    window_timer = 0;
    set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 8);
    destroy_hitboxes();
    move_cooldown[AT_DSPECIAL] = 50;
}

if (my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_USPECIAL_2){
    if (my_hitboxID.hbox_num < 5){
        hit_player_obj.should_make_shockwave = false;
    }
    grabbed = hit_player_obj;
}

if (my_hitboxID.attack == AT_NSPECIAL_2){
    if (my_hitboxID.hbox_num == 1){
        hit_player_obj.should_make_shockwave = false;
        hookshot_hit = true;
        grabbed = hit_player_obj;
    }
    else{
        move_cooldown[AT_NSPECIAL] = hookshot_hit_cooldown;
        old_vsp = hit_player_obj.old_vsp/1.1;
        old_hsp = hit_player_obj.old_hsp;
    }
}