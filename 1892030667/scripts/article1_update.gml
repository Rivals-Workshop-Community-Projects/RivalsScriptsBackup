//article1_update, gun

if (_init == 0) {
    _init = 1;
    
    with (asset_get("obj_article1")) {
        if (id != other.id && player_id == other.player_id && state < 2) {
            state = 2;
            state_timer = 0;
            sprite_index = sprite_get("gun");
        }
        
    }
}


/*print_debug(string(spr_dir));
print_debug(string(sprite_index == asset_get("empty_sprite")));*/

var build_time = 0;
if (state == 0) { //building
    sprite_index = sprite_get("gun");
    //visible = false;
    image_xscale = sprdir;
    state_timer++;
    image_index = state_timer;
    if (state_timer >= build_time) {
        state = 1;
        state_timer = 0;
        stay_timer = 0;
        full_timer = 0;
        //hitbox1 = create_hitbox(AT_FSPECIAL,1,x,y);
        //damage = hitbox1.damage;
        //kb_value = hitbox1.kb_value;
        //sprite_index = sprite_get("gun");
    }
}

var stay_time = 500;
var hitlock = 10;
if (state == 1) {
    //if stay_timer > 4 visible = true;
    stay_timer++;
    dist = distance_to_object(player_id);
    image_xscale = sprdir;
    if freed == 1 && free == 1 && has_shot == 0 {
        freed = 0;
        //hitbox1 = create_hitbox(AT_FSPECIAL,1,x,y);
    }
    if shoot == 1 && has_shot == 0 {
        free = true;
        hsp = shoot_speed*dcos(image_angle)*-sprdir;
        vsp = shoot_speed*dsin(image_angle)*sprdir;
        //hitbox1 = create_hitbox(AT_FSPECIAL,2,x,y); //More powerful hitbox
        //damage = hitbox1.damage;
        //kb_value = hitbox1.kb_value;
        hitbox_type = 2;
        shoot = 0;
        has_shot = 1;
        stay_timer = 0;
        has_hit = false;
        if instance_exists(hitbox1) instance_destroy(hitbox1);
    }
    //Gun Retrieval
    if (dist > 1000 || (stay_timer > 30 && dist <= 15)) {
        state = 2;
    }
    /*if instance_exists(hitbox1) {
        hitbox1.x = x;
        hitbox1.y = y;
        hitbox1.damage = damage;
        hitbox1.kb_value = kb_value;
        //hitbox1.kb_angle = hitbox1.kb_angle+90*(sprdir == -1);
        colided = instance_place(x,y,oPlayer);
        if colided != noone {
            hitbox1.x = colided.x-10*sign(hsp);
            hitbox1.y = colided.y;//+10*sign(colided.y-y);
        }
    }*/
    if vsp != 0 || hsp != 0 {
        collis_obj = instance_place(x,y,oPlayer);
        if !has_hit && collis_obj != noone && collis_obj.id != player_id {
            if !instance_exists(hitbox1) {
                hitbox1 = create_hitbox(AT_FSPECIAL,hitbox_type,collis_obj.x,collis_obj.y-20);
                //else hitbox1 = create_hitbox(AT_FSPECIAL,2,collis_obj.x,collis_obj.y-20);
                has_hit = true;
                hitbox1.spr_dir = sign(hsp);
            }
        }
    } else {
        has_hit = false;
    }
   
    //Gravity
    if vsp < 0 free = 1;
    if (free == 1) {
        if hsp != 0 {
            vsp = vsp + grav_val;
            o_hsp = hsp;
            o_vsp = vsp;
            //Rotation
            if (stay_timer > 0) && hsp != 0 {
                image_angle = darctan(-vsp/hsp);
            }
        } else {
            vsp = 0;
            //instance_destroy(hitbox1);
            if (stay_timer > 0) && o_hsp != 0 {
                image_angle = darctan(-o_vsp/o_hsp);
            }
        }
        
    } else {
        instance_destroy(hitbox1);
        hitbox1 = noone;
        hsp = 0;
        freed = 1;
        
    }
    
}

if (state == 2) {
    player_id.has_gun = 1;
    instance_destroy(hitbox1);
    hitbox1 = noone;
    instance_destroy();
    exit;
}
