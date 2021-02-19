//article1_update

if (!player_id.hard_mode) {
    if (init == 0) {
        init = 1;
        with (asset_get("obj_article2")) {
            if (id != other.id && player_id == other.player_id && state < 10) {
                state = 10;
                state_timer = 0;
                if (player_id.trolled) {
                    sprite_index = sprite_get("t_gaster_blaster");
                } else {
                    sprite_index = sprite_get("gaster_blaster");
                }
            }
        }
    }
    if (state == 1) {
        with(pHitBox){
            if (place_meeting(x,y,other) && player_id != other.player_id){
                other.state = 10;
            }
        }
    }
}

if (player_id.hard_mode) {
    blaster_charge = 20;
}

if (state <= 2) {
    with (asset_get("plasma_field_obj")){ //destroyed in clairen's plasma field
        with (other.id){
            if (get_player_team(get_instance_player(other)) != get_player_team(player)){
                if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                    state = 10;
                    state_timer = 0;
                }
            }
        }
    }
}

var blaster_distance = 0;

switch(state) {
    case 0: //birth
        state_timer++;
        free = true;
        if (state_timer >= blaster_spawn) {
            state = 1;
            state_timer = 0;
        }
    break;
    case 1: //literally nothing
        state_timer++;
        free = true;
        
        hsp = hsp*5/6;
        vsp = vsp*5/6;
        
        if (state_timer >= blaster_charge) {
            state = 2;
            state_timer = 0;
        }
    break;
    case 2: //preparing to fire
        state_timer++;
        free = true;
        blaster_distance = 648*dir;
        
        if (state_timer == 10) {
            sound_play(sound_get("sfx_blaster_fire"));
        }
    
        if (state_timer >= 10) {
            if (dir >= 0) {
                create_hitbox(AT_NSPECIAL, 1, x+blaster_distance, y);
            }
            if (dir <= 0) {
                create_hitbox(AT_NSPECIAL, 2, x+blaster_distance, y);
            }
        }
        
        if (player_id.trolled) {
            sprite_index = sprite_get("t_blaster_ready");
        } else {
            sprite_index = sprite_get("blaster_ready");
        }
        
        if (state_timer >= blaster_fire) {
            state = 3;
            state_timer = 0;
            anim_timer = 0;
        }
    break;
    case 3: //firing
        state_timer++;
        free = true;
        blaster_distance = 648*dir;
        
        if (dir >= 0) {
            create_hitbox(AT_NSPECIAL, 1, x+blaster_distance, y);
        }
        if (dir <= 0) {
            create_hitbox(AT_NSPECIAL, 2, x+blaster_distance, y);
        }
        
        if (player_id.trolled) {
            sprite_index = sprite_get("t_blaster_firing");
        } else {
            sprite_index = sprite_get("blaster_firing");
        }
        
        if (state_timer >= blaster_destroy) {
            instance_destroy();
            exit;
        }
    break;
    case 10: //destroy
        spawn_hit_fx(x, y, 301);
        instance_destroy();
        exit;
    break;
}

anim_timer++;
if (anim_timer % 7 == 1) {
        image_index--;
}