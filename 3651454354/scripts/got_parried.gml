//prevents the grab ID from staying
my_grab_id = noone;

sound_stop(sound_get("snd_chain_extend"))

//this allows us to finish playing the animation first and then being put in pratland
switch my_hitboxID.attack{
    case AT_NAIR: case AT_FAIR: case AT_BAIR: case AT_DAIR: case AT_UAIR: case AT_FTILT: case AT_DATTACK: case AT_USTRONG: case AT_FSPECIAL:
        destroy_hitboxes();
        attack_end();
        set_state(free? PS_PRATFALL:PS_PRATLAND);
    break;
}
