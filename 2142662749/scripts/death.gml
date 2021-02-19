// called when the character gets KO'd
with obj_article1 {
    if variable_instance_exists(self, "isZo") && player_id == other.id {
        state = PS_DEAD;
        state_timer = 1;
        id = undefined;
    }
}
zoID = undefined;
onRocket = false;
teleporting = false;

chainHit = false;
chainActive = false;
chainOriginX = undefined;
chainEndX = undefined;
chainY = undefined;
chainSprDir = undefined;
chainPlayerID = undefined;

justDied = 30;