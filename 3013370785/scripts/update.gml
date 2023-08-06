//update

timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

if practice_mode {
    if fuse_item != 0 {
        if (taunt_down && right_pressed) || (taunt_pressed && right_down) {
            fuse_item -= 1
            if fuse_item <= 0 fuse_item = 4
            clear_button_buffer(PC_RIGHT_HARD_PRESSED)
            clear_button_buffer(PC_TAUNT_PRESSED)
            sound_play(sound_get("Sys_ShortCut_ItemDecide_ZonauMagic_01"))
        } else if (taunt_down && left_pressed) || (taunt_pressed && left_down) {
            fuse_item += 1
            if fuse_item >= 5 fuse_item = 1
            clear_button_buffer(PC_LEFT_HARD_PRESSED)
            clear_button_buffer(PC_TAUNT_PRESSED)
            sound_play(sound_get("Sys_ShortCut_ItemDecide_ZonauMagic_01"))
        }
    }
}

if from_nspec && (state == PS_AIR_DODGE || state == PS_PARRY || state == PS_PARRY_START || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) {
	from_nspec = false
	fuse_item = 0
}
if !(state_attacking && attack == AT_NSPECIAL) {
	from_nspec = false
}

//print(ascend_y_increment)

if ascend_plat == undefined && mask_index == asset_get("empty_sprite") {
	mask_index = asset_get("ex_guy_collision_mask")
}

if !(state_attacking && attack == AT_USPECIAL) {
    ascend_plat = undefined
    if !free || state == PS_WALL_JUMP || state == PS_HITSTUN move_cooldown[AT_USPECIAL] = 0
    trail_timer = 0
}

if !(state_attacking && attack == AT_FSPECIAL) {
    if state != PS_FIRST_JUMP fspec_jump = false
    sound_stop(sound_get("shield_surf"))
    //move_cooldown[AT_FSPECIAL] = clamp(move_cooldown[AT_FSPECIAL], 0, 60)
    if state == PS_WALL_JUMP || state == PS_HITSTUN move_cooldown[AT_FSPECIAL] = 0
    else if !free && state != PS_FIRST_JUMP move_cooldown[AT_FSPECIAL] = 0
}

if !(state_attacking && attack == AT_DSPECIAL) {
    item_draw = false
    ultrahand_draw = false
    ultrahand_draw_alpha = clamp(ultrahand_draw_alpha - 0.2, 0, 1)
}

if !(state_attacking && attack == AT_DSPECIAL_2) {
    //sound_stop(sound_get("rune_search_start"))
}

//earthwake
var earthwake_sfx = sound_get("Assassin_Junior_MagicA00")
var end_sfx = sound_get("Assassin_Senior_PunchDownEnd")
var rock_sfx = sound_get("Assassin_Senior_PunchDown_01")
with oPlayer if id != other.id && totk_dstrong_earthwake_id == other.id {
    if !hitpause totk_dstrong_pause = false
    if !totk_dstrong_pause totk_dstrong_earthwake_timer++
    
    if !hitpause && totk_dstrong_earthwake_timer == 1 {
        sound_play(earthwake_sfx)
        sound_play(rock_sfx)
    }
    if totk_dstrong_earthwake_timer <= 30 {
        totk_dstrong_earthwake_x = x
    }
    
    if totk_dstrong_earthwake_timer == 24 && !hitpause {
        with other {
            var fx spawn_hit_fx(other.x, other.totk_dstrong_earthwake_y + 32, vfx_rock)
                fx.depth = -10
        }
    }
    if totk_dstrong_earthwake_timer == 30 && !hitpause {
        with other {
            create_hitbox(AT_DSTRONG, 3, other.x, other.totk_dstrong_earthwake_y - 40)
            stop_sounds = true
        }
        sound_play(end_sfx)
        sound_play(asset_get("sfx_kragg_spike"))
    }
    if totk_dstrong_earthwake_timer == 42 && !hitpause {
        sound_play(asset_get("sfx_kragg_rock_shatter"))
        spawn_hit_fx(totk_dstrong_earthwake_x, totk_dstrong_earthwake_y - 30, 193)
    }
    if totk_dstrong_earthwake_timer >= 48 {
        totk_dstrong_earthwake_id = noone
        totk_dstrong_earthwake_timer = 0
        totk_dstrong_earthwake_y = 0
    }
}

//rock vfx
var spr = sprite_get("vfx_rock")
with hit_fx_obj if sprite_index == spr {
    
}

//print(move_cooldown[AT_FSPECIAL])

/*
if ascend_draw_state < 3 {
    ascend_draw_timer++;
} else {
    ascend_draw_timer--;
}

if ascend_draw_state == 3 && ascend_draw_timer <= -60 {
    ascend_draw_state = 0
    ascend_draw_timer = 0
}
*/

//check for existing fused arrows
var fuse_arrow_exists = false
with obj_article2 if player_id == other.id {
    if item != 0 {
        fuse_arrow_exists = true
    }
}
if fuse_arrow_exists move_cooldown[AT_DSPECIAL] = 2

if state == PS_WALL_JUMP && from_fspec {
    from_fspec = false
    stop_sounds = true
    fuse_item = 0
}
/*
if special_pressed {
    with oPlayer if id != other.id {
        set_attack(AT_NSPECIAL)
    }
}
*/

//TRAILER USE ONLY
/*
if !shield_down {
    with oPlayer if state == PS_RESPAWN && id != other.id {
        state_timer = 0
        hsp = 0
        vsp = 0
    }
    set_view_position(800, 480)
}
*/


//paraglider out of pratfall
if state == PS_PRATFALL && !was_parried {
    set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 20);
    set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 22);
    if up_pressed {
        set_state(PS_ATTACK_AIR)
        attack = AT_USPECIAL
        window = 5
        window_timer = 6
    }
}

if fuse_item == 0 item_hud_timer = 0 else item_hud_timer++

if get_item_timer > 0 get_item_timer++

//run code on this link's own articles
with obj_article_platform if player_id == other.id && ("is_link_plat" in self) && is_link_plat {
    if other.ascend_plat == id {
        is_ascend_plat = true
    }
}

//with oPlayer print(totk_plat_id)

if stop_sounds {
    stop_sounds = false
    sound_stop(sound_get("bullet_time"))
    sound_stop(sound_get("bow_draw"))
    sound_stop(sound_get("LSword_Metal_Equip"))
    sound_stop(sfx_ultrahand)
    sound_stop(sfx_ustrong)
    sound_stop(sound_get("Assassin_Senior_PunchDown_01"))
    sound_stop(sound_get("SpObjRocket_RadiateEnergyMoving"))
} 

/*
if shield_pressed {
    fuse_item = 4
}
*/

/*
var fx_spr = sprite_get("bomb_explosion_vfx")
with hit_fx_obj if sprite_index == fx_spr && player_id == other.id {
    if image_index >= 7 {
        image_alpha -= 0.1
    }
}
*/

if timer mod 60 ==  0 {
    //spawn_hit_fx(x, y - 250, 304)
}

//parry stuff
if state != PS_PARRY {
    parry_anim = false
    parry_anim_timer = 0
}
if parry_anim {
    parry_anim_timer++
}
if state == PS_PARRY && state_timer == 0 {
    sound_play(sound_get("LSword_Metal_Equip"))
}

hsp_change = hsp - prev_hsp
prev_hsp = hsp

var intro_time = get_gameplay_time()-12;
if intro_time == 23 sound_play(sound_get("para_open"))
if intro_time == 58 {
    sound_play(asset_get("sfx_land"))
    spawn_base_dust(x, y, "land", spr_dir)
}

if char_height != default_height char_height = lerp(char_height, default_height, 0.2)

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;