parry_success = true;

unicornsfxnum = random_func( 0, 3, true ) + 1;
if !hitpause{
sound_play(sound_get("unicorn_k_" + string(unicornsfxnum)));
}