//article1_update
timer += 1;


can_be_grounded = (vsp >= 0 && free == false);

//gravity stuff
if (free) {
    vsp += .2;
}
else{
    vsp = 0;
}

if (vsp > 6) {
    vsp = 6;
}

//air friction stuff
if (hsp > 0) {
    hsp += -.04;
}

if (hsp < 0) {
    hsp -= -.04;
}

if (!free){
    hsp = 0;
}

if (timer > 250){
    instance_destroy();
}

var flash_time = 50;

visible = !(timer > 250 - flash_time && timer % 10 < 5);


if (timer > 250 - flash_time){
    with (oPlayer){
        if (place_meeting(x, y, other)){
            if (player != other.player_id.player){
                
                with (other){
                    if (player_id.pon_mod == 0){
                        player_id.pon_mod = 1;
                        sound_stop( sound_get ("sfx_pon_collect2") );
                        sound_stop( sound_get ("sfx_pon_collect") );
                        sound_play( sound_get ("sfx_pon_collect") );
                    }
                    if (player_id.pon_mod == 1){
                        player_id.pon_mod = 0;
                        sound_stop( sound_get ("sfx_pon_collect") );
                        sound_stop( sound_get ("sfx_pon_collect2") );
                        sound_play( sound_get ("sfx_pon_collect2") );
                    }
                }
                
                
                if (url == other.player_id.url){
                    if (pon_count < 999){
                        pon_count++;
                    }
                }
                
                instance_destroy();
                exit;
            }
        }
    }
}


//destroy
if (y < 0 || y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}

if (place_meeting( x, y, player_id )){
    if (player_id.pon_mod == 0){
        sound_stop( sound_get ("sfx_pon_collect2") );
        sound_stop( sound_get ("sfx_pon_collect") );
        sound_play( sound_get ("sfx_pon_collect") );
    }
    if (player_id.pon_mod == 1){
        sound_stop( sound_get ("sfx_pon_collect") );
        sound_stop( sound_get ("sfx_pon_collect2") );
        sound_play( sound_get ("sfx_pon_collect2") );
    }
    if (player_id.pon_count < 999){
        player_id.pon_count ++;
    }
    instance_destroy();
    exit;
}

if (player_id.badge_slot_1 = 1 || player_id.badge_slot_2 = 1 || player_id.badge_slot_3 = 1){
    var shortest_id = noone;
    var shortest_dist = 80;
    var additional_speed = .2;
    var fast_range = 40;
    if (player_id.runeO == true){
        var shortest_dist = 1000;
    }
    with (asset_get("oPlayer")) {
        if (player == other.player_id.player) {
        var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
                shortest_dist = curr_dist;
                shortest_id = id;
            }
        }
    }
    if (shortest_id != undefined){
        x = lerp(x, shortest_id.x, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
        y = lerp(y, shortest_id.y, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
    }
}

//if (article_animation_frame > 3 && article_animation_frame < 6 && !("made_hitbox" in self)){
//    var hitbox = create_hitbox(AT_EXTRA_1, 2, floor(x+5), floor(y-20));
//    made_hitbox = true;
//}