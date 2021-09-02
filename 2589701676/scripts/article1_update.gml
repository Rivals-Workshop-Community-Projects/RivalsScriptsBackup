//article1_update
/*
draw_sprite(key_sprite, -1, x,y);
draw_debug_text(x,y,"wzexrctvyb");*/

//current_owner_id = instance_nearest(x,y,);
/*
with(other.id){
    otherPlayer = get_instance_player(other);
    if (point_distance(x,y, otherPlayer.x, otherPlayer.y)<150){
        current_owner_id = get_instance_player_id(other);
    }
}*/
//current_owner_id = 4;

/*
var instan = instance_place(x,y+40,player_obj);
if (instan != noone){
    current_owner_id = 5;//instan;
}*/

/*
if (beginning_owner_id.my_jail!=noone && x>beginning_owner_id.my_jail.x && 
    x<beginning_owner_id.my_jail.x+180 && y<beginning_owner_id.my_jail.y+1){ //if in jail
        desiredX = x;
    }*/

if (desiredX!=x || desiredY!=y){
    if (point_distance(desiredX, desiredY, x, y)<1){
        x = desiredX;
        y = desiredY;
    }
    hsp = 0.1 * (desiredX - x);
    vsp = 0.1 * (desiredY - y);
}

if (prev_owner_id != current_owner_id){
    //this if statement is janky code when theres a mix of multiple of me and at least one not
    if((beginning_owner_id.url!=prev_owner_id.url && beginning_owner_id.my_jail==noone) || (beginning_owner_id.url==prev_owner_id.url && prev_owner_id.my_jail==noone) || 
            (current_owner_id.numChains==0 && current_owner_id.chainedDown==0)){
        //change ownership
        desiredX = x;
        desiredY = y;
        hsp = 0;
        vsp = 0;
        spark_anim = 8;
        prev_owner_id = current_owner_id;
        desired_color = get_player_hud_color(get_instance_player(current_owner_id));
        sound_play(asset_get("sfx_gem_collect"));
        current_owner_id.numChains = 0;
        current_owner_id.chainedDown = 0;
        if(beginning_owner_id.my_jail!=noone){
            beginning_owner_id.my_jail.destruction_count_down=30;
        }
        if (beginning_owner_id.url==prev_owner_id.url && prev_owner_id.my_jail!=noone){
            prev_owner_id.my_jail.destruction_count_down=30;
        }
    }
    else{
        //no stealing
        current_owner_id = prev_owner_id;
    }
}

if (spark_anim>0) {
    spark_anim--;
}