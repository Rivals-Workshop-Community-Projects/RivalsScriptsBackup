// Dust init

can_be_grounded = true;
ignores_walls = true;
uses_shader = false;
// depth = -10
image_xscale = 2
image_yscale = 2
ignores_walls = false
vsp = 3

sprite_index = sprite_get("emera_dust");
mask_index = sprite_get("emera_dust_mask")
if get_player_color(player) == 13 image_index = 1
if get_player_color(player) == 12 image_index = 2

arrow_color = get_player_hud_color(player_id.player)
if get_match_setting(SET_TEAMS) == 1 arrow_color = make_color_hsv(get_color_profile_slot_r(get_player_color(player),0),get_color_profile_slot_g(get_player_color(player),0),get_color_profile_slot_b(get_player_color(player),0))

life_timer = 420 // It's not a weed joke, shut up.

// var grounded = false
cooldown = true
with player_id{
    if has_rune("O") other.cooldown = false
}

// if !place_meeting(x,y,asset_get("par_block")) && !place_meeting(x,y,asset_get("par_jumpthrough")) instance_destroy()
// with asset_get("par_block"){
//     if collision_line(other.x,other.y-100,other.x,other.y+100,self,false,false) != noone{
//         ground
//     }
// }

// if free instance_destroy();