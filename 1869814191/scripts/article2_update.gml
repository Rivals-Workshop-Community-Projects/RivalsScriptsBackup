//article1_update

#macro GB_IDLE 0
#macro GB_READY 1
#macro GB_BLAST 2
#macro GB_DESPAWN 3
#macro GB_DESTROY 10

can_be_hit[player] = 2; //this is a cooldown so it has to be set every single frame
//(also thanks giik for helping me with this)
with oPlayer {
    if (get_player_team(player) == get_player_team(get_instance_player(other))) && !get_match_setting(SET_TEAMATTACK) {
    	other.can_be_hit[player] = 2; //teammates can't hit
    } else {
    	with other { //can't be hit during exe's invincibility frames
    	    if (state >= 2) { can_be_hit[get_instance_player(other)] = 2; }
    	}
    }
}

if (init == 0) {
    init = 1;
    with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state < 10) {
            state = GB_DESTROY;
            sprite_index = spr_gaster_idle[troll];
        }
    }
}
if (state <= 2) {
    with (asset_get("plasma_field_obj")){ //destroyed in clairen's plasma field
        with (other.id){
            if (get_player_team(get_instance_player(other)) != get_player_team(player)){
                if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                    state = GB_DESTROY;
                }
            }
        }
    }
}

state_timer++;
anim_timer++;
switch(state) {
    case 0:
    case 1:
    case 2:
        if (anim_timer mod frames[state] == 0) {
                image_index++;
        }
    break;
}
image_xscale = dir;
free = true;

var blaster_distance = 0;
switch(state) {
    case GB_IDLE: //literally nothing
        if (state_timer >= 5) {
            hsp = hsp*5/6;
            vsp = vsp*5/6;
        }
        if (state_timer == state_len[state]-20)  {
            spawn_hit_fx(x, y, 302);
        }
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            anim_timer = 0;
            sprite_index = spr_gaster_ready[troll];
            image_index = 0;
        }
    break;
    case GB_READY: //preparing to fire
        if (state_timer == state_len[state]) {
            
            if (troll) { sound_play(snd_blaster_fire[troll]); }
            sound_play(sound_get("sfx_blaster_fire"));
        }
        if (state_timer > state_len[state]/2) { scale_timer++; }
        
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            anim_timer = 0;
            sprite_index = spr_gaster_firing[troll];
            image_index = 0;
        }
    break;
    case GB_BLAST: //firing
        blaster_distance = 648*dir;
        blast_timer++;
        
        if (blast_timer mod 3 == 0) {
            var hb = create_hitbox(AT_NSPECIAL, 1, x+blaster_distance, y+1);
            if !dir { hb.kb_angle = (180 - hb.kb_angle); }
        }
        
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            scale_timer = 0;
        }
    break;
    case GB_DESPAWN:
        scale_timer++;
        image_alpha = ease_linear(1, 0, scale_timer, 20);
    
        if (state_timer >= state_len[state]) {
            //spawn_hit_fx(x, y, 305);
            //state = 10;
            instance_destroy();
            exit;
        }
    break;
    
    case GB_DESTROY: //destroy
        //spawn_hit_fx(x, y, 301);
        sound_play(sound_get("sfx_soul_break"));
        instance_destroy();
        exit;
    break;
}

player_id.move_cooldown[AT_NSPECIAL] = 30;