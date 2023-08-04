//update
if state != PS_ATTACK_GROUND || attack != AT_JAB move_cooldown[AT_JAB] = 0;
if state != PS_ATTACK_GROUND || (attack != AT_JAB && attack != AT_FTILT && attack != AT_UTILT && attack != AT_DTILT) azelf_jab_parried = false;
if azelf_sound != null{
    if attack == AT_DAIR && state != PS_ATTACK_AIR{
        sound_stop(azelf_sound);
        azelf_sound = null;
    }
    if attack == AT_FSPECIAL && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        sound_stop(azelf_sound);
        azelf_sound = null;
    }
}