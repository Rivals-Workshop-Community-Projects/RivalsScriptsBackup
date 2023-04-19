//article2_update.gml

sprAlpha = 1 - (state_timer / player_id.diceAfterimagesMaxTimer*.5);

state_timer++;

if (state_timer >= 20){
    instance_destroy();
}

Pocketable = false;