QD_Charge = 0;
if (instance_exists(QD_article_2)){
   QD_article_2.image_index = 0;
   QD_article_2.state = 2; 
} 
if (instance_exists(QD_article_1)){
   QD_article_1.image_index = 0;
   QD_article_1.state = 2; 
} 

if (my_hitboxID.attack == AT_FSPECIAL) 
{
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1
    var dir = point_direction(x + hsp, y - (char_height*1.5) + vsp, my_hitboxID.x, my_hitboxID.y);
    var spd = 16;
    
    print("reflect")
    my_hitboxID.hsp = lengthdir_x(spd, dir)
}

if (my_hitboxID.attack == AT_FSPECIAL_2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1
} 