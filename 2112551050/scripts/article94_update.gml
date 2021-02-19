//

timer++;
state_timer++;
if (timer > 1) {
    if (player_id.attackBarFade > 0) {
    	player_id.attackBarFade--;
    }
    
    if (player_id.attackMarkerMove) {
        player_id.attackMarkerx += 5;
    }
}
