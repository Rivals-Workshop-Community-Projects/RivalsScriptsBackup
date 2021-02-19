//article2_update
//Again, coded by Archytas

if (player_id.fry_platinum == 1){
    hit_timer_max = 30;
}

if (init == 0) {
    init = 1;
    spr_dir = player_id.spr_dir;
    with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state != 2) {
            state = 2;
            state_timer = 0;
            //sprite_index = sprite_get("fspecial_open");
        }
        
    }
    with player_id {
    	other.spr_dir = spr_dir;
    	other.anim_speed = get_hitbox_value(AT_NSPECIAL,7,HG_PROJECTILE_ANIM_SPEED);
    	other.hsp = dspecial_hsp*spr_dir;
    }
}



state_timer++;
if (state == 0) { //building
    image_index = state_timer*anim_speed;
    if (state_timer >= build_time) {
        state = 1;
        state_timer = 0;
        stay_timer = 0;
        full_timer = 0;
        sprite_index = sprite1;
    }
}
//Physics
hsp *= (1-air_friction);
inst = instance_position(x+16,y+30,asset_get("solid_32_obj"));
if inst == noone inst = instance_position(x-16,y+30,asset_get("solid_32_obj"));
if inst == noone inst = instance_position(x+16,y+30,asset_get("jumpthrough_32_obj"));
if inst == noone inst = instance_position(x-16,y+30,asset_get("jumpthrough_32_obj"));
if inst != noone {
    vsp -= .1;
    hsp = 0;
} else {
    vsp += .1;
}
vsp = clamp(vsp,-1,1);

if (state == 1) {
    image_index = state_timer*anim_speed;
    if (!instance_exists(hBox)) {
        if hit_timer == 0 {
            hBox = create_hitbox(AT_DSPECIAL,1,x,y);
            hBox.x = x+hBox.x_pos;
            hBox.y = y+hBox.y_pos;
        }
    } else {
        hBox.x = x+hBox.x_pos;
        hBox.y = y+hBox.y_pos;
    }
    if hit_timer > 0 hit_timer--;
    
    inst = instance_place(x,y,asset_get("obj_article1"));
    if inst != noone && inst.player_id == player_id && inst.state != 3 {
        sound_play(asset_get("sfx_may_arc_cointoss"));
        inst.state = 3;
        sprite_index = sprite2;
        full_timer = 0;
        state = 2;
    }
}

if (state == 2) { //Destroy
    //im_dex = (build_time - full_timer)/build_time;
    image_index = (image_number-1)*(full_timer/build_time);
    if (full_timer >= build_time) {
        if instance_exists(hBox) instance_destroy(hBox);
        player_id.dspecial_flame = noone;
        instance_destroy();
        exit;
    }
    full_timer++;
}