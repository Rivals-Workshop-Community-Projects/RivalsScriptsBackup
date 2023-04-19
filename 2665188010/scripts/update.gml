//update
if state != PS_ATTACK_GROUND || attack != AT_JAB move_cooldown[AT_JAB] = 0;
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