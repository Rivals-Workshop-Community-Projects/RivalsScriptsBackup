sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("bouldermask");
boulder_index = sprite_get("boulderalt");
boulder_glow_index = sprite_get("boulder_glow");
image_speed = 0.7;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
luigifiregravity = 0.2;
fireball_draw_angle = 0;
bounces = 2;
fireball_vsp = 0;
fireball_hsp = 0;
fireballfloat = false;
hit_cooldown = 0;
mostrecenthit = noone;
mostrecenthitowner = player_id;
fireball_onfire = false;
fireball_firetimer = 0;
fireball_onfire_id = player_id;
fireball_weakfire = false;
dr_mario_cape_id = noone;
dr_mario_cape_timer = 0;
bird_luigi_id = player_id;
egg_hitpause = false;
egg_hitstop = 0;
egg_hitstop_full = 0;
egg_old_hsp = 0;
egg_old_vsp = 0;

if (get_player_color(player_id.player) == 0){
    boulder_index = sprite_get("boulder");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_wario){
    boulder_index = sprite_get("boulder_coin");
    boulder_glow_index = sprite_get("boulder_coin_glow");
}

if (get_player_color(player_id.player) == player_id.alt_gb){
    boulder_index = sprite_get("boulder_gb");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_gold){
    boulder_index = sprite_get("boulder_gold");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_nes){
    boulder_index = sprite_get("boulder_nes");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_archen){
    boulder_index = sprite_get("boulder_archen_alt");
    boulder_glow_index = sprite_get("boulder_archen_glow");
}

if (get_player_color(player_id.player) == player_id.alt_loudbird){
    boulder_index = sprite_get("boulder_dicey");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_negative){
    boulder_index = sprite_get("boulder_negative");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (get_player_color(player_id.player) == player_id.alt_garcello){
    boulder_index = sprite_get("boulder_fading");
    boulder_glow_index = sprite_get("boulder_glow");
}

if (current_month == 4 && current_day == 1){
    boulder_index = sprite_get("boulder_trolled");
    boulder_glow_index = sprite_get("boulder_trolled_glow");
}

//offscreen stuff
array_push(player_id.phone_offscreen, self);
phone_offscr_sprite = sprite_get("_pho_offscreen_egg_alt"); // icon to display
if (get_player_color(player_id.player) == 0){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg");
}
if (get_player_color(player_id.player) == player_id.alt_gb){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_gb");
}
if (get_player_color(player_id.player) == player_id.alt_gold){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_gold");
}
if (current_month == 4 && (current_day == 1 || current_day == 2)){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_trol");
}
if (get_player_color(player_id.player) == player_id.alt_wario){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_coin");
}
if (get_player_color(player_id.player) == player_id.alt_waluigi){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_logo");
}
if (get_player_color(player_id.player) == player_id.alt_nes){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_nes");
}
if (get_player_color(player_id.player) == player_id.alt_archen){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_archen_alt");
}
if (get_player_color(player_id.player) == player_id.alt_loudbird){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_dicey");
}
if (get_player_color(player_id.player) == player_id.alt_negative){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_negative");
}
if (get_player_color(player_id.player) == player_id.alt_garcello){
    phone_offscr_sprite = sprite_get("_pho_offscreen_egg_fading");
}
phone_offscr_index = 0; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = 0; // y offset to draw the arrow at
phone_offscr_leeway = 16; // approximate width/height of obj