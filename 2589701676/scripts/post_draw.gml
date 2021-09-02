//post-draw

//draw_sprite(sprite_get("chains"), 2, x,y); 
//draw_debug_text(x,y-20,string(my_child==noone));
if (state==PS_ATTACK_GROUND && attack==AT_TAUNT){
    taunting=taunting%46;
    if (taunting==0)
        draw_debug_text(x,y-120,"OMG do u not know how 2 play me?"); 
    if (taunting==1)
        draw_debug_text(x,y-120,"Well here's a quick tutorial... (taunt to pause)"); 
    if (taunting==2)
        draw_debug_text(x,y-120,"You see that key over there?"); 
    if (taunting==3)
        draw_debug_text(x,y-120,"Walking into the key will allow anyone to own it"); 
    if (taunting==4)
        draw_debug_text(x,y-120,"You can also return it to its owner with NSPECIAL"); 
    if (taunting==5)
        draw_debug_text(x,y-120,"When I own it, I get a TON of buffs"); 
    if (taunting==6)
        draw_debug_text(x,y-120,"For example, it lets me apply CHAIN to opponents"); 
    if (taunting==7)
        draw_debug_text(x,y-120,"CHAIN will nullify some of their future damage"); 
    if (taunting==8)
        draw_debug_text(x,y-120,"It also makes my whip attacks stronger"); 
    if (taunting==9)
        draw_debug_text(x,y-120,"Stacking 10 CHAIN will restrict an enemy to a small area"); 
    if (taunting==10)
        draw_debug_text(x,y-120,"This is known as 'CHAINED DOWN'");
    if (taunting==11)
        draw_debug_text(x,y-120,"However, if your opponent owns the key...");
    if (taunting==12)
        draw_debug_text(x,y-120,"They will be immune to CHAIN and CHAINED DOWN");
    if (taunting==13)
        draw_debug_text(x,y-120,"But if you own the KEY, you can use DSPECIAL to create a JAIL");
    if (taunting==14)
        draw_debug_text(x,y-120,"Whenever a JAIL exists, opponents with CHAIN cannot steal the KEY");
    if (taunting==15)
        draw_debug_text(x,y-120,"The JAIL also passively applies CHAIN to opponents in it");
    if (taunting==16)
        draw_debug_text(x,y-120,"It also makes your attacks apply more CHAIN");
    if (taunting==17)
        draw_debug_text(x,y-120,"Certain whip attacks will also pull you closer to the jail.");
    if (taunting==18)
        draw_debug_text(x,y-120,"The JAIL also makes your USPECIAL travel further");
    if (taunting==19)
        draw_debug_text(x,y-120,"Your USPECIAL travels whenever you hit yourself with the projectile");
    if (taunting==20)
        draw_debug_text(x,y-120,"You can also hit the key if you own it!");
    if (taunting==21)
        draw_debug_text(x,y-120,"That's it for the basics! For more advanced stuff...");
    if (taunting==22)
        draw_debug_text(x,y-120,"Your FSPECIAL travels similar to a boomerang");
    if (taunting==23)
        draw_debug_text(x,y-120,"Each time it hits, it deals more damage");
    if (taunting==24)
        draw_debug_text(x,y-120,"When you catch it, it will cancel your current attack");
    if (taunting==25)
        draw_debug_text(x,y-120,"It will also have a bit of momentum");
    if (taunting==26)
        draw_debug_text(x,y-120,"If you catch it upwards while preparing USPECIAL...");
    if (taunting==27)
        draw_debug_text(x,y-120,"You'll get a huge jump!");
    if (taunting==28)
        draw_debug_text(x,y-120,"Speaking of USPECIAL, you can choose what direction you travel");
    if (taunting==29)
        draw_debug_text(x,y-120,"You go in whatever direction you hold the frame you hit yourself");
    if (taunting==30)
        draw_debug_text(x,y-120,"There's a few other attacks that are a bit quirky");
    if (taunting==31)
        draw_debug_text(x,y-120,"For example, you can move side-to-side while charging USTRONG");
    if (taunting==32)
        draw_debug_text(x,y-120,"JAB will loop, and can hit-cancel into Tilts by pressing a direction");
    if (taunting==33)
        draw_debug_text(x,y-120,"UAIR will grab onto platforms, and can be walljumped out of");
    if (taunting==34)
        draw_debug_text(x,y-120,"NSPECIAL has super armor on even frames because I said so");
    if (taunting==35)
        draw_debug_text(x,y-120,"Your JAIL will not allow the KEY through it when NSPECIAL is called");
    if (taunting==36)
        draw_debug_text(x,y-120,"The JAIL will fall initially, then rise whenever you are grounded");
    if (taunting==37)
        draw_debug_text(x,y-120,"While rising, it will carry CHAINED DOWN players");
    if (taunting==38)
        //draw_debug_text(x,y-120,"Getting a galaxy effect on a CHAINED DOWN player will remove CHAINED DOWN");
        taunting++;
    if (taunting==39)
        draw_debug_text(x,y-120,"The final hit of USPECIAL will also always get rid of CHAINED DOWN");
    if (taunting==40)
        draw_debug_text(x,y-120,"USPECIAL's projectile will apply CHAIN, but not CHAINED DOWN");
    if (taunting==41)
        draw_debug_text(x,y-120,"Each CHAIN subtracts 2% from the average hitbox damage of the next attack");
    if (taunting==42)
        draw_debug_text(x,y-120,"If an enemy has to much CHAIN, their attack will not have hitboxes");
    if (taunting==43)
        draw_debug_text(x,y-120,"That's all the tips I can think of");
    if (taunting==44)
        draw_debug_text(x,y-120,"Have fun playing, and I hope you win!");
    if (taunting==45)
        draw_debug_text(x,y-120,"Let me know of any bugs you find :)");
}