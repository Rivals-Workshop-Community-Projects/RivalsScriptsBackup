with oPlayer{
    other.player_positions[player] = [x, y];
    other.player_healths[player] = get_player_damage(player);
    other.player_stocks[player] = get_player_stocks(player);
}

if instance_exists(pHitBox){
    with pHitBox{
        
    }
}

switch(current_ai_state){
    case "approach":
        
    break;
    case "retreat":
        
    break;
    case "setup":
        
    break;
    case "zone":
        
    break;
    case "combo":
        
    break;
    case "kill":
        
    break;
    case "footsies":
        
    break;
    case "recover":
        
    break;
    case "dodge":
        
    break;
}

if !instance_exists(flowey_save){
    up_down = true;
    special_down = true;
}