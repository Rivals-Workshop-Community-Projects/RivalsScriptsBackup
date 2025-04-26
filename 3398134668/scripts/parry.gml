// got_parried is a script that is called when you get parried.
//Parry.gml (Player doesn't give invincibility when parrying there own stuff)
if(enemy_hitboxID.orig_player == player){
    invince_time = 0;
}