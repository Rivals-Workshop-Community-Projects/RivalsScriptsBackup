if (attack == AT_FSPECIAL){
    if(hbox_num == 1){
        if(hitbox_timer = 149){
                sound_play(sound_get("frisbee_destroy"));
            create_hitbox(AT_FSPECIAL, 2, x, y);
            spawn_hit_fx( x, y, 143 );
            destroyed = true;
        }
    }
}

if (attack == AT_FSPECIAL){
    if(hbox_num == 1){
        if(hitbox_timer = 149){
            create_hitbox(AT_FSPECIAL, 3, x, y);
            destroyed = true;
        }
    }
}

if (attack == AT_FSPECIAL_2){
    if(hbox_num == 1){
        if(hitbox_timer = 149){
                sound_play(sound_get("frisbee_destroy"));
            create_hitbox(AT_FSPECIAL_2, 2, x, y);
            create_hitbox(AT_FSPECIAL_2, 3, x, y);
            spawn_hit_fx( x, y, 143 );
            destroyed = true;
        }
    }
}

if (attack == AT_EXTRA_2){
    if(hbox_num == 1){
        if(destroyed = true or hitbox_timer = 59){
                sound_play(sound_get("ufo_explode"));
            create_hitbox(AT_EXTRA_2, 2, x, y);
            create_hitbox(AT_EXTRA_2, 3, x, y);
            spawn_hit_fx( x, y, 141 );
        }
    }
}

if (attack == AT_EXTRA_2){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            sound_play(sound_get("ufo_explode"))
            create_hitbox(AT_EXTRA_2, 2, x, y);
            create_hitbox(AT_EXTRA_2, 3, x, y);
        }
    } 
}

if (attack == AT_EXTRA_3){
    if(hbox_num == 1){
        if(hitbox_timer = 99){
            destroyed = true;
            sound_play(sound_get("ball_pop"))
            spawn_hit_fx( x, y, balls );
        }
    } 
}

if (attack == AT_USPECIAL){
    if(hbox_num == 4){
        if(destroyed = true or hitbox_timer = 79){
                sound_play(sound_get("ball_explode"));
            create_hitbox(AT_USPECIAL, 5, x, y);
            spawn_hit_fx( x, y, 112 );
        }
    }
}

if (attack == AT_USPECIAL){
    if(hbox_num == 3){
        if(destroyed = true or hitbox_timer = 79){
                sound_play(sound_get("ball_explode"));
            create_hitbox(AT_USPECIAL, 5, x, y);
            spawn_hit_fx( x, y, 112 );
        }
    }
}