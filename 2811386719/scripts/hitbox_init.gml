
if(attack == AT_USPECIAL and hbox_num == 1){
    hitbox_pos = array_create(7);
    var sspr_x_offset = sprite_get_xoffset(sprite_get("uspecial"))
    var sspr_y_offset = sprite_get_yoffset(sprite_get("uspecial"))
    // print(sspr_y_offset)
    hitbox_pos[0] = [ 9 * 2, 58* 2]//offset is 1x, this is why *2
    hitbox_pos[1] = [ 25 * 2, 39 * 2]
    hitbox_pos[2] = [ 26 * 2, 24 * 2]
    hitbox_pos[3] = [ 18 * 2, 15 * 2]
    hitbox_pos[4] = [ 11 * 2, 8 * 2]
    hitbox_pos[5] = [ 7 * 2, 6 * 2]
    hitbox_pos[6] = [ 7 * 2, 6 * 2]
    hitbox_pos[7] = [ 7 * 2, 6 * 2]
    hitbox_pos[8] = [ 7 * 2, 6 * 2]
    hitbox_pos[9] = [ 7 * 2, 6 * 2]

    
    //draw_sprite_ext(sprite_get("uspecial"), 4, new_x, new_y, 1, 1, 100, c_white, 255);
}

if(attack == AT_DSPECIAL and (hbox_num == 3 or hbox_num == 4)){
    offset = 4*hsp;
}

solids = asset_get("par_block");
plats = asset_get("par_jumpthrough");

if(attack == AT_DSPECIAL){
  if(hbox_num >= 2){
  	draw_xscale = spr_dir
    hbox_width = 0;
    hbox_height = 0;
    mark_for_destruction = false;
    with player_id{
        other.hbox_width = get_hitbox_value(other.attack, other.hbox_num, HG_WIDTH);
        other.hbox_height = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT);
    }
  } 
}
if(attack == AT_FSTRONG and hbox_num == 3){
    set_image_xscale = image_xscale;
}

if(attack == AT_USPECIAL_2 and hbox_num == 2){
    if !("lvl" in self) lvl = 0;
}

if !("bubble" in self) bubble = false;

if(bubble){
  if !("static" in self) static = false;
  last_hitbox_group = array_create(5, []);
  old_hsp = 0;
  old_vsp = 0;
  last_attack = noone;
  hitstop_full = 0;
  hitstop = 0;
  if !("volley_cooldown" in self) volley_cooldown = 0;
  follow_owner = 0;
  owner = player_id;
  eletric_sound_loop = noone;
  // hitbx = ds_list_create();
} 

if(attack == AT_BAIR){
    player_id.wat_follow = id;
    // print("gi")
}