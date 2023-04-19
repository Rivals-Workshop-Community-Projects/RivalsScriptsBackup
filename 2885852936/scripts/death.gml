if instance_exists(pig){
    with (pig){
    pig_state = 8;
    sound_play(sound_get( "pigout" ));
    }
}
move_cooldown[AT_DSPECIAL] = 650;
killarticles = true;