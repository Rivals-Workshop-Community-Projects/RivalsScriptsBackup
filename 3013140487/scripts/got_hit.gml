if anti_cheapie_mode{
    set_attack(AT_DSPECIAL);
    window = 2;
    window_timer = 0;
    old_vsp = 0;
    old_hsp = 0;
    hitstop = 0;
    set_player_damage(player, get_player_damage(player) - enemy_hitboxID.damage);
    reset_game_time = 1;
    sound_stop(enemy_hitboxID.sound_effect);
    hit_player_obj.hitstop = 0;
    with hit_fx_obj if player_id == other.hit_player_obj spr_dir = 0;
}
voice_play(VC_HURT);

if(revenge_active){
	revenge_threshhold -= enemy_hitboxID.damage;
}

if(attack == AT_DSPECIAL){
	outline_color = [0, 0, 0];
}

if(state_cat == SC_HITSTUN){
	move_cooldown[AT_FSPECIAL] = 0;
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