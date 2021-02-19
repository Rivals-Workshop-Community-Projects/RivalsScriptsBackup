//hitbox_update
if attack == AT_EXTRA_1 && (hbox_num == 20 or hbox_num == 21) {
if bombowner != noone && instance_exists(bombowner) {
	x = bombowner.x+bombowner.hsp;
	y = bombowner.y+bombowner.vsp;
	//if bombowner.projectile == false {y -= room_height*3}
} else bombowner = noone;
}

if ((attack == AT_DSPECIAL && hbox_num == 5) or (attack == AT_DSPECIAL_2 && hbox_num == 5)) && !free {
	instance_destroy();
}

/*
if (attack == AT_USPECIAL){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 20 * -spr_dir;
    }
    
    if (grav == 0 && player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND){
        instance_destroy();
        exit;
    }
    
    if (hitbox_timer > 5){ //no hits right after it's created
        with (asset_get("pHitBox")){
            if (select == player_id.select && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)
            && hbox_num == 2 && place_meeting(x,y,other.id)){
                other.hitbox_timer = 0;
                other.hsp = 0;
                if (player_id.left_down) other.hsp -= 3;
                if (player_id.right_down) other.hsp += 3;
                if (attack == AT_FSPECIAL)
                    other.vsp = -10;
                else
                    other.vsp = 10;
            }
        }
    }
    
    if (!free){
        instance_destroy();
        exit;
    }
}

if (attack == AT_DSPECIAL_AIR){
    if (!free){
        var stalk = instance_create(x-12*spr_dir, y+22, "obj_article1");
        stalk.player_id = player_id;
        stalk.player = player;
        stalk.spr_dir = -spr_dir;
        stalk.state = 5;
        stalk.image_index = 4;
        with (player_id){
            sound_play(sound_get("dspecial"));
        }
        
        instance_destroy();
        exit;
    }
    
    if (y > room_height + 100){
        instance_destroy();
        exit;
    }
}