//article1_update

if (init == 0) { //i dont remember what this does
    init = 1;
}

bone_hit_timer++;
state_timer++;
fail_timer++;

if (state > 1) {
    with(pHitBox){
        if ((place_meeting(x,y,other) && player_id != other.player_id) || was_parried){
            spawn_hit_fx(x, y, 301);
            instance_destroy(other);
        }
    }
}
with (asset_get("plasma_field_obj")){ //bones are destroyed in clairen's plasma field
    with (other.id){
        if (get_player_team(get_instance_player(other)) != get_player_team(player)){
            if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                instance_destroy(); 
                exit;
            }
        }
    }
}

if (bone_hit_timer mod 2 == 0) {
    var hb = create_hitbox(AT_EXTRA_1, 1+(1*bone_dir), x+((1*spr_dir)*!bone_dir), y-24);
    hb.hsp = hsp;
    hb.vsp = vsp;
}

switch(state) {
    case 0:
        hsp = init_hsp;
        vsp = init_vsp;
        sprite_index = spr_bone[bone_dir]
        air_hurtbox_spr = spr_bone[bone_dir]
        if (state_timer >= 2) { state = 1; }
    break;
    
    case 1:
        hsp = hsp*5/6;
        vsp = vsp*5/6;
        if (state_timer >= 8) { state = 2; }
    break;
}

if hit_wall { hsp = init_hsp*-1; state = 1; state_timer = 2; init_hsp = init_hsp*-1; }
if bone_dir == 1 && (abs(vsp) <= .01) { vsp = init_vsp*-1; state = 1; state_timer = 2; init_vsp = init_vsp*-1; }

if (state_timer >= bone_w_destroy || player_id.was_parried || fail_timer >= 5*second) { instance_destroy(); exit; }