// The C4 of DOOM (or of swag, idk)
#region // Sprites
switch(get_player_color(player)){
    case 10:
        spr_plant = sprite_get("mineV_plant");
        spr_air = sprite_get("dspecial_proj");
        spr_ground = sprite_get("mineV");
        spr_det = sprite_get("mineV_det");
        spr_charge = sprite_get("mineV_charged");
        break;
    case 16:
        spr_plant = sprite_get("mineG_plant");
        spr_air = sprite_get("dspecial_proj");
        spr_ground = sprite_get("mineG");
        spr_det = sprite_get("mineG_det");
        spr_charge = sprite_get("mine_charged");
        break;
    case 17:
        spr_plant = sprite_get("mineP_plant");
        spr_air = sprite_get("dspecial_proj");
        spr_ground = sprite_get("mineP");
        spr_det = sprite_get("mineP_det");
        spr_charge = sprite_get("mineP_charged");
        break;
    default:
        spr_plant = sprite_get("mine_plant");
        spr_air = sprite_get("dspecial_proj");
        spr_ground = sprite_get("mine");
        spr_det = sprite_get("mine_det");
        spr_charge = sprite_get("mine_charged");
        break;
}
switch(player_id.pen_name){
    case "equi":
        spr_plant = sprite_get("mineV_plant");
        spr_air = sprite_get("dspecial_proj");
        spr_ground = sprite_get("mineV");
        spr_det = sprite_get("mineV_det");
        spr_charge = sprite_get("mineV_charged");
        break;
}

vfx_dspecchargeexplo =	hit_fx_create(sprite_get("vfx_dspecialchargeexplosion"), 15);

sprite_index = spr_air;
image_index = 0; 
mask_index = sprite_get("mask_mine")
uses_shader = true;
#endregion

#region // SOUNDS
sfx_active          = asset_get("mfx_xp");
sfx_ground          = asset_get("sfx_ell_dspecial_stick");
switch(get_player_color(player)){
    case 10:
        sfx_loop        = sound_get ("sfx_vaporwave_loop");
        break;
    case 17:
        sfx_loop        = sound_get ("sfx_poolparty_loop");
        break;
    default:
        sfx_loop        = asset_get("sfx_plasma_field_loop");
        break;
}
switch(player_id.pen_name){
    case "equi":
        sfx_loop        = sound_get ("sfx_vaporwave_loop");
        break;
}
sfx_charge          = asset_get("sfx_clairen_hit_med");

sfx_explo           = asset_get("sfx_ell_explosion_medium");
sfx_char_explo      = asset_get("sfx_ell_dspecial_explosion_3");
#endregion

hsp = 0;
old_hsp = 0;
vsp = 0;
old_vsp = 0;

air_friction_mine = 0.08;
gravity_mine = 0.6;

hbox_mine = noone;

// Used for states
state = 0;
state_timer = 0;

charge_sound_played = false;
charge_loop_started = false;

penny_orig_owner = player_id;
penny_orig_mine_id = player_id.mine;
pen_c4_charged = 0;
pen_mine_parried = false;

// Timer
inactive = 0;
c4_explo_count = 0;
c4_explo_count_max = 2;
c4_explo_timer = 0;
c4_explo_timer_max = 5;
c4_explo_timer_max_2 = 10;

pen_mine_hbox_dead = false;

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
through_platforms = false;

getting_bashed = false;
unbashable = 0;

orig_player = player;
orig_player_id = player_id;
hitstop = 0;
hitstun = 0;
damage = 0;
knockback_adj = 1;
orig_knock = 0;