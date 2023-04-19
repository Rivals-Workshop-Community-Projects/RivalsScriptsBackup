// article_init is used when the article object is created.

sprite_index = sprite_get("sword")
mask_index = sprite_get("sword")

uses_shader = true;

can_be_grounded = false;
ignores_walls = false;
through_platforms = false;

// giik hit detection bad
// is_hittable = true;

with(player_id){
    var player_hsped = get_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED);
}


state = 0; //starts undeployed
state_timer = 0;
pseudo_hsp = player_hsped * player_id.spr_dir;
pseudo_vsp = -17;