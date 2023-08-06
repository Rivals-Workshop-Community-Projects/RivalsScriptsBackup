///#args attack

spr_angle = 0;
draw_y = 0;
//set_attack
if !move_cooldown[attack] switch attack{
    case AT_NSPECIAL:
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .9);
	knife_bunt = false;
    break;
    
    case AT_FSPECIAL:
    grappled = noone;
    grapple_length = 0;
    has_pulled = -1;
    set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
    break;
    
    case AT_TAUNT:
    var stolen = collision_ellipse(x + 10*spr_dir, y, x + 70*spr_dir, y - 70, oPlayer, 1, 1);
    if (down_down || down_pressed) && instance_exists(stolen){
        text_timer = 0;
        attack = AT_TAUNT_2;
        var stpl = stolen.player - 1;
        if (stolen_data[stpl][3] || stolen_data[stpl][3] == -1) && (stolen == CH_SHOVEL_KNIGHT? stolen.gems > 0: 1){
            stolen_goods = stolen_data[stpl][0];
            stolen_expression = stolen_data[stpl][2];
            stolen_goods_idx = stolen_data[stpl][4];
            stolen_name = stolen_data[stpl][1];
            if stolen.url = CH_SHOVEL_KNIGHT stolen.gems -= 20;
            if stolen.url = CH_SYLVANOS{
                if sylvanos_confused < 3 sylvanos_confused++;
                else stolen_expression = 0;
            }
            if stolen_data[stpl][3] stolen_data[@stpl][@3]--;
        }else{
            stolen_goods = sprite_get("goods");
            stolen_goods_idx = 21;
            stolen_expression = 0;
            stolen_name = "Lint";
        }
        voice_play(VC_STEALING, !stolen_expression);
        set_window_value(AT_TAUNT_2, 1, AG_WINDOW_GOTO, 2 + 3*stolen_expression);
    }else voice_play(VC_TAUNT);
    break;
    
    case AT_FSTRONG:
    if strong_cooldown attack = AT_FTILT;
    break;
    case AT_USTRONG:
    if strong_cooldown attack = AT_UTILT;
    break;
    case AT_DSTRONG:
    if strong_cooldown attack = AT_DTILT;
    break;
}


#define voice_play
/// voice_play(idx, force_voice = -1, flash = 0;)
var idx = argument[0];
var force_voice = argument_count > 1 ? argument[1] : -1;
var flash = argument_count > 2 ? argument[2] : 0;;

if !voice return;

var selected = (force_voice >= 0? force_voice: min(random_func(idx, vcs[idx][0] + vcs[idx][1], true), vcs[idx][0] - 1 + vcs[idx][1]));
if selected >= vcs[idx][0] return;
selected = (idx/10 >= 1? "": "0") + string(idx) + string(selected);

if selected != noone{
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(sound_get("vc_" + selected), false, noone, 1.2);
}