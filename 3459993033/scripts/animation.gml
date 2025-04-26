//Animation

//this is a superfluous way of making sure you don't see the giant white X during testing.
//remove this and the comment once you have every sprite done.
if sprite_index == 4145
{
    sprite_index = sprite_get("idle");
}

//intro anim template, remember post_draw and pre_draw can also add cool effects, 
//this is strip-based and only animates the character themselves

if (state == PS_SPAWN){
    if (state_timer < 78){
        image_index = maioeseeanimframes;
    }
    if (state_timer < 88){
        draw_indicator = false;
    }
    if (state_timer == 1){
        intro_laugh = sound_play(sound_get("laugh_intro"), false, noone, 1, 1);
    }
    if (state_timer == 26){
        sound_play(sound_get("broom_fly1"));
        sound_play(sound_get("sfx_delta_broom_swipe"));
    }

    if state_timer <= 52{ //12 is the amount of frames on the intro animation strip
        sprite_index = sprite_get("intro");
        draw_x = lerp(-650*spr_dir, 0, state_timer/52)
        draw_y = -28;
        if (state_timer % 3 == 0){
            spawn_hit_fx(floor((x+draw_x) - (16*spr_dir)), (y+draw_y) + (4 + (random_func(0, 42, true) - 42)), nspecial_trail);
        }
        maioeseeanimframes+= 0.25;

    } 
    if (state_timer == 53){
        maioeseeanimframes = 0;
    	sound_play(asset_get("sfx_forsburn_reappear"));
		sound_play(sound_get("magic_hit"), false, noone, 0.4, 1.1);
		sound_play(asset_get("sfx_bubblepop"));
		spawn_hit_fx(x + (54*spr_dir), y + 16, dstrong_poof_end);
    }
    
    if (state_timer > 52 && state_timer < 67){
        sprite_index = sprite_get("jump");
        maioeseeanimframes += 0.5;
        draw_y = ease_backIn(-30, 0, state_timer-53, 14, 8);
    }
    if (state_timer == 68){
        sound_play(land_sound);
        spawn_base_dust(x, y, "land", spr_dir)
        maioeseeanimframes = 0;
    }
    if (state_timer > 67 && state_timer < 78){
        sprite_index = sprite_get("waveland");
        maioeseeanimframes += 0.2;
    }
    if (state_timer == 78) {
        maioeseeanimframes = 0;
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