///
    //get the stuff
if get_gameplay_time() < 60 or nctimer > 0{    

if "nname" in hit_player_obj {
var name = hit_player_obj.nname 
}else {
var name = get_char_info(hit_player_obj.player, INFO_STR_NAME);
}

var spr = get_char_info(hit_player_obj.player, INFO_CHARSELECT);
var img = hit_player_obj.select;
var scale = 1+(hit_player_obj.select >= 17);

if "ncode1" in hit_player_obj && hit_player_obj.select > 16 {
var codec1 = hit_player_obj.ncode1;
var codec2 = hit_player_obj.ncode2;
var codec3 = hit_player_obj.ncode3;
}

if "ncode1" not in hit_player_obj && hit_player_obj.select > 16 {
var codec1 = " ";
var codec2 = "Data unavailable";
var codec3 = " ";  
}

///Zetter
if "ncode1" not in hit_player_obj && hit_player_obj.select == 2 {
var codec1 = "General of Fire Kingdom, last seen near Abyss Gate.";
var codec2 = "High destructive abilities, capable of manipulate";
var codec3 = "fire element and amplify it upon physical contact.";  
}

///Orcane
if "ncode1" not in hit_player_obj && hit_player_obj.select == 3 {
var codec1 = "An entity with the codename of [WaterDog]";
var codec2 = "Highly dangerous individual with fluid-base";
var codec3 = "shapeshifting ability, don't lets your guard down.";  
}

///Wrastor
if "ncode1" not in hit_player_obj && hit_player_obj.select == 4 {
var codec1 = "Unknown Rank Agent of Air Armada.";
var codec2 = "Skilled in arcrobatic and aerial combat.";
var codec3 = "High in agility and stamina, low in vitality.";  
}

///Kragg
if "ncode1" not in hit_player_obj && hit_player_obj.select == 5 {
var codec1 = "Guardian of the Rock Wall.";
var codec2 = "He has immense strength and the ability";
var codec3 = "to build tactical rock-base constructs.";  
}

///Forb
if "ncode1" not in hit_player_obj && hit_player_obj.select == 6 {
var codec1 = "Traitor of Fire Kingdom(?), last seen in the East(?).";
var codec2 = "The credibility of target info and whereabout";
var codec3 = "is extremely low, approach with utmost caution.";  
}

///Maypul
if "ncode1" not in hit_player_obj && hit_player_obj.select == 7 {
var codec1 = "The Sylvan Watcher.";
var codec2 = "She can rush the opponent with her very high speed";
var codec3 = "and immobilize them with her whip attacks.";  
}

///Absa
if "ncode1" not in hit_player_obj && hit_player_obj.select == 8 {
var codec1 = "Architect of [???].";
var codec2 = "Her presence on the battle field is terrifying";
var codec3 = "due to the flexible nature of her electric power.";  
}

///Etalus
if "ncode1" not in hit_player_obj && hit_player_obj.select == 9 {
var codec1 = "Legendary warrior of the Glacial.";
var codec2 = "One of the last surviving members of the Harbor Guard";
var codec3 = "with ability to conjure icicles and freezing opponents.";  
}

///Ori
if "ncode1" not in hit_player_obj && hit_player_obj.select == 10 {
var codec1 = "Exotic organism made from unknown matter.";
var codec2 = " ";
var codec3 = "404 ";  
}

///Ranno
if "ncode1" not in hit_player_obj && hit_player_obj.select == 11 {
var codec1 = "The self-claimed 'Pacifist'.";
var codec2 = "Highly skilled martial artist with ability";
var codec3 = "to conjure poisonous darts and bubble traps.";  
}


///Clairen
if "ncode1" not in hit_player_obj && hit_player_obj.select == 12 {
var codec1 = "Mysterious Swordman(?gender?).";
var codec2 = "They have traces of strange matter on them,";
var codec3 = "suspected to be a time traveler.";  
}


///Sylvanos
if "ncode1" not in hit_player_obj && hit_player_obj.select == 13 {
var codec1 = "The Alpha plant.";
var codec2 = "Deity figure that became corrupt and tried to turn ";
var codec3 = "all of Aether into a forest. Destroy on sight";  
}

///Elliana
if "ncode1" not in hit_player_obj && hit_player_obj.select == 14 {
var codec1 = "A thief that stole Engr.Ayala's steam mech.";
var codec2 = "She uses the stolen mech to take revenge on Air Armada.";
var codec3 = "The mech is modified and armed with more arsenals.";  
}

///Shovel Knight
if "ncode1" not in hit_player_obj && hit_player_obj.select == 15 {
var codec1 = "Weilder of the [???] made from unknown marterial.";
var codec2 = " ";
var codec3 = "404";  
}

}


if get_gameplay_time() < 40 {


   if get_gameplay_time() % 7 < 3{
with hit_player_obj shader_start();       
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180,scale,scale,0,-1,.5);
with hit_player_obj shader_end();
       draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -150,name);
       draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -130,"Target In Sight");
       shader_start();
   draw_sprite(sprite_get("nc2"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180);
   draw_sprite(sprite_get("nc1"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100),y - 162);
   shader_end();
       
   }


}




if get_gameplay_time() < 60 {
with hit_player_obj shader_start();      
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212,y - 180,scale,scale,0,-1,.2);
with hit_player_obj shader_end();    
    if get_gameplay_time() % 7 > 3{
with hit_player_obj shader_start();           
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180,scale,scale,0,-1,.5);
with hit_player_obj shader_end();   


        draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -150,name);
        draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -130,"Target In Sight");
 shader_start();
   draw_sprite(sprite_get("nc2"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180);
   draw_sprite(sprite_get("nc1"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 4,y - 162);
 shader_end();  
        
        
}
   
}



if nctimer > 0 {




//draw the stuff.

with hit_player_obj shader_start(); //this starts the color shader for the opponent's colors :)



if nctimer < 10 && nctimer % 6 < 3{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 170 - nctimer,scale,scale,0,-1,.2);
}

if nctimer > 10 && nctimer % 12 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 220,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 20 && nctimer % 15 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 30 && nctimer % 15 > 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180,scale,scale,0,-1,.5);
}

with hit_player_obj shader_end();

if nctimer > 36{
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,name);
}

if nctimer > 55{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -130,codec1);  
}
if nctimer > 65{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -110,codec2);  
}
if nctimer > 75{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -90,codec3);
}

if cheapmode = 1 {
if nctimer > 85{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -60,
  "Target show signs of Anomaly, engage with lethal force?");
}

if nctimer > 95{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 100 ,y -45,
  "           Y: Atk   N: Spec");
}
}

if nctimer < 36 && nctimer > 6{
    
if nctimer % 12 < 12 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database .");
}

if nctimer % 12 < 8 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . .");
}

if nctimer % 12 < 4 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . . .");
}

}


shader_start();
if nctimer > 10 {
   if nctimer > 10 && nctimer % 15 < 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100) ,y - 162);
   }
   if nctimer > 10 && nctimer % 15 > 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 4,y - 162);
   }
   draw_sprite(sprite_get("nc1"),nctimer/4,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 2,y - 162);
} else {
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 170 - nctimer);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 12 + nctimer,y - 152 - nctimer);
}


shader_end();


}



shader_start();
if draw_indicator {
draw_sprite_ext(sprite_get("batt"), batt , x - 76 - hsp, y - 30 - vsp, 1, 1, 0 ,-1, .3 + move_cooldown[AT_TAUNT]/16  );
}
shader_end();



