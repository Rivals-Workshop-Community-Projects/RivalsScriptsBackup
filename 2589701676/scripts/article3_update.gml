//article3_update

/*
if (despawn_timer==0 || (point_distance(x,y, player_id.x, player_id.y-20) < 36)&&despawn_timer<880){
    if (despawn_timer>0){
        player_id.hsp+=hsp;
        player_id.vsp+=vsp;
    }
    instance_destroy();
}
despawn_timer--;
if (cooldown>0){
    cooldown--;
}*/

//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, x);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, y);
/*
if (despawn_timer%10 ==0){
    create_hitbox(AT_FSPECIAL, 1, x, y-20);
}*/

/*
if (despawn_timer<860){
    hsp += (x - player_id.x)/-300;
    vsp += (y - player_id.y+20)/-300;

    if (hsp > 10) {hsp = 10;}
    if (hsp < -10) {hsp = -10;}
    if (vsp > 10) {vsp = 10;}
    if (vsp < -10) {vsp = -10;}
}

if (bounced == 0){
    if (hit_wall){
        hsp = -1 * prev_H;
        bounced = 3;
    }
    if (!free){
        vsp = -1 * prev_V;
        bounced = 3;
    }
}
else{
    bounced--;
}


prev_V = vsp;
prev_H = hsp;
*/

/*
if (despawn_timer>16 || overall_despawn_timer<=0 || player_id.counter<40 || player_id.startup_counter==60){
    if (overall_despawn_timer<=0){
        player_id.my_child = noone;
    }
    instance_destroy();
}
if (despawn_timer==0 && overall_despawn_timer>0){
    var directio = 90;
    if (!player_id.joy_pad_idle){
        directio = player_id.joy_dir * pi / 180;
    }
    else {directio = parent_dir;}
    my_child = instance_create(x + floor(8 * cos(directio)), y - floor(8 * sin(directio)), "obj_article3");
    my_child.overall_despawn_timer = overall_despawn_timer-1;
    my_child.parent_dir = directio;
    player_id.my_child = my_child;
}

despawn_timer++;
overall_despawn_timer--;
*/

if (overall_despawn_timer<=0 || player_id.counter<40 || player_id.startup_counter==60){
    //if (!player_id.startup_counter==60){}//changed (iffy)
    
    player_id.my_child = noone;
    instance_destroy();
    return;
}
var directio = pi/2;
if (!player_id.joy_pad_idle){
    directio = player_id.joy_dir * pi / 180;
}
else {directio = past_dir;}

var turning_rate = 0.12;
if (directio>past_dir+turning_rate){
    if (directio - past_dir > pi){
        directio = (past_dir-turning_rate)%(pi*2);
    }
    else{
        directio = (past_dir+turning_rate)%(pi*2);
    }
}
else if (past_dir>directio+turning_rate){
    if (past_dir - directio> pi){
        directio = (past_dir+turning_rate)%(pi*2);
    }
    else {
        directio = (past_dir-turning_rate)%(pi*2);
    }
}
hsp=floor(7 * cos(directio));
vsp=-1*floor(7 * sin(directio));

past_dir = (directio+(pi*2))%(pi*2);

overall_despawn_timer--;













