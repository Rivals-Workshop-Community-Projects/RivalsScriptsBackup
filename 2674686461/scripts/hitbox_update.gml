//a
if attack == AT_FSPECIAL {
    player_id.move_cooldown[AT_FSPECIAL] = 30;
    if hitbox_timer mod 7 == 0 { //multihit
        for(var i=0;i < 5;i++) {
            can_hit[i] = true;
            //spawn_base_dust(x,y-15,"walk")
        }
    }
    if hsp == 0 {
        //later also spawn article and effect
        //spawn_base_dust(x+25,y,"walljump",1)
        //spawn_base_dust(x-25,y,"walljump",-1)
        sound_play(player_id.sfx_poke_sandstorm,false,noone,0.95,1.15);
        sound_play(player_id.sfx_spiral_dustbun,false,noone,0.3,0.85);
        spawn_hit_fx(x,y-15,player_id.hfx_sand_big);
        //later see if this works
        with(player_id) {
            meteor_id = instance_create(other.x,other.y,"obj_article1");
            meteor_id.rock_type = "sand";
            meteor_id.spr_dir = other.spr_dir;
            move_cooldown[AT_FSPECIAL] = 130;
            other.destroyed = true;
        }
        /*
        var met = instance_create(x,y,"obj_article1");
        met.rock_type = "sand";
        met.player = orig_player;
        met.player_id = player_id;
        met.spr_dir = spr_dir
        player_id.move_cooldown[AT_FSPECIAL] = 130;
        player_id.meteor_id = met;
        destroyed = true;
        */
    }
}

if attack == AT_FSPECIAL_2 && hbox_num == 1 {
    proj_angle += 2 * spr_dir;
    player_id.move_cooldown[AT_FSPECIAL_2] = 30;
    if !(free) or (place_meeting(x+hsp,y,asset_get("par_block"))){
        //later also spawn article and effect
        //spawn_base_dust(x,y,"land")
        //spawn_hit_fx(x,y-15,player_id.hfx_rock_small);
        sound_play(player_id.sfx_poke_rocktomb,false,noone,0.95,1.15);
        sound_play(asset_get("sfx_blow_weak1"),false,noone,0.75,0.95);
        //later see if this works
        with(player_id) {
            meteor_id = instance_create(other.x,other.y,"obj_article1");
            meteor_id.rock_type = "rock";
            meteor_id.spr_dir = other.spr_dir;
            meteor_id.vsp = -20;
            meteor_id.hsp = other.hsp * 0.95;
            meteor_id.spr_dir = other.spr_dir;
            move_cooldown[AT_FSPECIAL_2] = 130;
            other.destroyed = true;
        }
        /*
        var met = instance_create(x,y,"obj_article1");
        met.rock_type = "rock";
        met.player = orig_player;
        met.player_id = player_id;
        met.vsp = -20;
        met.hsp = hsp * 0.95;
        met.spr_angle = floor(proj_angle * 1.5);
        met.spr_dir = spr_dir
        player_id.move_cooldown[AT_FSPECIAL_2] = 130;
        player_id.meteor_id = met;
        destroyed = true;
        */
    }
    if (x < 0 or x > room_width) or (y < 0 or y > room_height) {
        destroyed = true;
    }
}

if attack == AT_FSPECIAL_2 && hbox_num == 2 {
    if !instance_exists(rock_owner) {
        destroyed = true;
    } else {
        x = rock_owner.x;
        y = rock_owner.y;
    }
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;