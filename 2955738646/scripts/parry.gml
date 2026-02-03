//Parrying an attack for Emerald scouting, if Emeralds are enabled
if (emerald_hud == true){
if (EmeraldAmount <= 3 && OverallEmeralds <= 7){
EmeraldSense = true;
hit_player_obj.has_emerald = true;
    }
}