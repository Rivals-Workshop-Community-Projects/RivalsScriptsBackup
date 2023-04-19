//
if (instance_exists(mic_proj)) {
	instance_destroy(mic_proj);
}
mic_grabbed_obj = -4;

sound_stop(sound_get("mirorb"));

if (attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR) && instance_exists(clam_ball) {
	clam_ball.should_break = true;
}