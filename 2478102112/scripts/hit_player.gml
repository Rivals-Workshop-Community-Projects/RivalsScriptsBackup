//I'm too scared to fix this formatting

if "item_ins" in my_hitboxID{
    with(my_hitboxID){
        if item_ins.itemnum == 0{//onion
           item_ins.hsp = -1*sign(item_ins.hsp);
        item_ins.vsp = -10;
        item_ins.state = 5;
        item_ins.state_timer = 0;
        instance_destroy();
        exit; 
        }
        if item_ins.itemnum == 6{//turron
            other.hit_player_obj.dance_timer = 150;
            print("cat");
        }
        if item_ins.itemnum == 7{//balloon
            item_ins.owner.x = item_ins.x
            item_ins.owner.y = item_ins.y
        }
        if item_ins.itemnum >= 1{
            item_ins.state = 2;
            item_ins.state_timer = 0;
            instance_destroy();
            exit; 
        }
        
    }
}

if has_hit and attack == AT_FSPECIAL and window == 3 and hit_player_obj.super_armor == false{
    ftarget = hit_player_obj
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
    window = 5;
    window_timer = 1;
}

//if has_hit and attack == AT_FSPECIAL and window == 6 and window_timer >= 25{
//    ftarget = 0;
//}

if my_hitboxID.attack == AT_DSPECIAL and (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 3) and hit_player_obj.dance_timer == 0 and hit_player_obj.state != PS_JUMPSQUAT{//hit_player_obj.free == false
   hit_player_obj.dance_timer = 220;
}

if my_hitboxID.attack == AT_DSPECIAL and (my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 4 or my_hitboxID.hbox_num == 5) and hit_player_obj.dance_timer == 0 and hit_player_obj.state != PS_JUMPSQUAT {//hit_player_obj.free == false
   hit_player_obj.dance_timer = 210;
}

if attack != AT_DSPECIAL{
    hit_player_obj.dance_timer = 0;
}

if my_hitboxID.attack == AT_EXTRA_1 and my_hitboxID.hbox_num == 6{
    hit_player_obj.freeze_timer = 150;
}

//never uncomment this
/*if my_hitboxID.hbox_num == 8 and my_hitboxID.attack == AT_EXTRA_1{
   hit_player_obj.dance_timer = 150;
   print("cat");
}

/*if my_hitboxID.attack == AT_EXTRA_1 and (my_hitboxID.hbox_num == 6 or my_hitboxID.hbox_num == 8 or my_hitboxID.hbox_num == 8) and hit_player_obj.dance_timer == 0 and hit_player_obj.free == false{
   hit_player_obj.dance_timer = 150;
}


/*if my_hitboxID.attack == AT_UAIR and (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2) and window == 3{
    window = 4;
    window_timer = 0;
}