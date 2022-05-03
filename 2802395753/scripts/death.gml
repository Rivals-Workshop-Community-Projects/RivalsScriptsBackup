current_job = 1;
if(job_timer > 1){
    sound_play(asset_get("sfx_abyss_despawn"));
}
job_timer = 0;

if(get_player_stocks(player) <= 1){ //last stock
    	sound_play(sound_get("death"));
    }