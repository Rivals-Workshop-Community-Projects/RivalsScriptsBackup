//update
/*
if (find_key>0){
    find_key--;
}*/
/*
var their_key = other_player_id.my_key;
if (point_distance(x,y,their_key.x, their_key.y)<5){
    their_key.current_owner_id = id;
}*/
//draw_debug_text(x,y-20,"here");

//initialize key one at a time
/*
if (get_gameplay_time()==player){
    if (!instance_exists(obj_article1))
        instance_create(x,y,"obj_article1");
}
*/
if (find_key){
    my_key.desiredX=x;
    my_key.desiredY=y;
    find_key=false;
}

if (point_distance(x,y,my_key.x, my_key.y)<my_key.collection_dist){
    my_key.current_owner_id = id;
}

if (my_child!=noone){
    if (startup_counter<=40 || (state!=PS_ATTACK_AIR&&state!=PS_ATTACK_GROUND) || attack!= AT_USPECIAL){
        if (point_distance(x-30, y-55, my_child.x, my_child.y)<50){
            //set_state(PS_ATTACK_AIR);
            if (my_jail!=noone && y<my_jail.y+1 && x>my_jail.x && x<my_jail.x+180){
                counter=80;
            }
            set_attack(AT_USPECIAL);
            window = 3;
            window_timer = 0;
            startup_counter=60;
        }
        if (id == my_key.current_owner_id && point_distance(my_key.x - 20, my_key.y - 50, my_child.x, my_child.y)<50){
            /*
            x = my_key.x;
            y = my_key.y;
            */
            if (my_jail!=noone && y<my_jail.y+1 && x>my_jail.x && x<my_jail.x+180){
                counter=80;
            }
            set_attack(AT_USPECIAL);
            window = 3;
            window_timer = 0;
            startup_counter=60;
        }
    }
    if (my_child.overall_despawn_timer%4==0){
        //set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, my_child.y-y+32);
        //set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, spr_dir*(my_child.x-x+24));
        create_hitbox(AT_USPECIAL, 3, my_child.x + 24/*+24-24*spr_dir*/, my_child.y + 32);
    }
}

if (my_boomerang!=noone && my_boomerang.cooldown<=6){
    if(state==PS_DEAD){
        my_boomerang.despawn_timer=0;
        return;
    }
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, spr_dir*(my_boomerang.x-x));
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, my_boomerang.y-y);
    set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, (point_direction(0,0,my_boomerang.hsp,my_boomerang.vsp)));
    if (spr_dir==1){
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
    }
    else {
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
    }
    if(my_boomerang.cooldown==0 && my_boomerang.hitstop==0){
        var hitMe = create_hitbox(AT_FSPECIAL, 1, x, y);
        if(my_boomerang.owner!=noone){
            hitMe.player = my_boomerang.owner;
        }
    }
}
else if (has_boom && my_boomerang==noone){
    has_boom = false;
    set_state(PS_IDLE);
}





