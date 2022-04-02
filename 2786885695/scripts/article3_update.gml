//article3_update - damage numbers

state_timer ++;

if (is_healing) color = $30f408;

if (player_id.is_gb) color = c_white;

move -= 0.5;
if (state_timer < 5) scale -= 0.25;
if (state_timer > destroy_on - 5) alpha -= 0.2;

if (state_timer >= destroy_on) instance_destroy();