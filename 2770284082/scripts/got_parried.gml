//

sound_stop(cur_sound);
sound_play(sound_get("v_dowitdabear"),false,noone,.85,1.05 - random_func(1,10,true)/100)
hsp = 0
old_hsp = 0

if attack == AT_FSPECIAL {
    window = 4
}