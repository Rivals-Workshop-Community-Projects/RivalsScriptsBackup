//Dspecial2 Spam Limiter
if (attack == AT_DSPECIAL_2){
   move_cooldown[AT_DSPECIAL_2] = 30;}
   
//Dspecial if no barrier deployed.
if (instance_exists(my_article) && attack == AT_DSPECIAL){
    attack = AT_DSPECIAL_2;}
    
    
