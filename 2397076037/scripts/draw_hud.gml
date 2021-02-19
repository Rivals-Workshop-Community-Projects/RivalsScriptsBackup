shader_start();

if triggered = 0 {
draw_sprite(sprite_get("DTgauge"), DT, temp_x + 28, temp_y - 30);


} else {


draw_sprite(sprite_get("DTgauge"), DT + 17, temp_x + 28, temp_y - 30);

if triggertime % 10 < 5 {
    draw_sprite(sprite_get("DTgauge"), 17, temp_x + 28, temp_y - 30);
}


}

if move_cooldown[AT_DTILT] > 2 {
        draw_sprite_ext(sprite_get("DTgauge"), DT + 17, temp_x + 28, temp_y - 30,1,1,0,-1, move_cooldown[AT_DTILT]/6);
        draw_sprite_ext(sprite_get("DTgauge"), 17, temp_x + 28, temp_y - 30,1,1,0,-1, move_cooldown[AT_DTILT]/6);
}

if hitpause && attacking && triggered == 0 {
        draw_sprite_ext(sprite_get("DTgauge"), 17, temp_x + 28, temp_y - 30,1,1,0,-1, hitstop/ 6);
}


if training {
    
    if trainingtype = -1 {
    draw_debug_text(temp_x,temp_y - 45,"Press up+taunt for tutorial");
    } else {
    draw_debug_text(temp_x - 40,temp_y - 45,"Back: taunt");   
    }
    
    if trainingtype == 0 {
        draw_debug_text(temp_x + 60,temp_y - 85,"Jump: Devil Trigger");
        draw_debug_text(temp_x + 60,temp_y - 65,"Special: DT-Gauge");
        draw_debug_text(temp_x + 60,temp_y - 45,"Attack: Ex-Move");
    }
    
    if trainingtype == 1 {
        draw_debug_text(temp_x + 60,temp_y - 145,"Accessible when having at least 3 DT bars.");
        draw_debug_text(temp_x + 60,temp_y - 115,"Nspecial make Vergil's doppelganger clone appear and carries him,");
        draw_debug_text(temp_x + 60,temp_y - 95,"increases his overal speed, his damage, and regen %.");
        draw_debug_text(temp_x + 60,temp_y - 70,"Give Vergil one extra jump if he Devil Trigger mid-air");
        draw_debug_text(temp_x + 60,temp_y - 45,"Vergil can't gain more DTgauge, but all moves are free.");
    }
    
    if trainingtype == 2 {
        draw_debug_text(temp_x + 60,temp_y - 115,"DT-Gauge is nessessary for specials, strongs,");
        draw_debug_text(temp_x + 60,temp_y - 95,"and Ex-Move. It increases when Vergil hit melee attacks.");
        draw_debug_text(temp_x + 60,temp_y - 65,"Strongs always cost 3 DT bars when completed.");
        draw_debug_text(temp_x + 60,temp_y - 45,"Cost of specials and Ex-moves varies.");
    }
    
    if trainingtype == 3 {
        draw_debug_text(temp_x + 60,temp_y - 105,"Jump: [Judgement Cut]");
        draw_debug_text(temp_x + 60,temp_y - 85,"Special: [Round Trip]");
        draw_debug_text(temp_x + 60,temp_y - 65,"Attack: [Drive]");
        draw_debug_text(temp_x + 60,temp_y - 45,"Shield: Ex-move cancels.");
    }
    
    if trainingtype == 4 {
        draw_debug_text(temp_x + 60,temp_y - 135,"After hitting or completely whiffed a [Yamato] attack.");
        draw_debug_text(temp_x + 60,temp_y - 115,"Hold Attack button down until Vergil glows. Cost 1 DT bars.");
        draw_debug_text(temp_x + 60,temp_y - 95,"This strike enemy on the side you're facing. press Attack again to extend.");
        draw_debug_text(temp_x + 60,temp_y - 65,"The attacks have delay before striking and can easily parried or dodge in neutral.");
        draw_debug_text(temp_x + 60,temp_y - 45,"It have low knockback and mostly use after landing attacks to poke or force options.");
    }
    
    if trainingtype == 5 {
        draw_debug_text(temp_x + 60,temp_y - 135,"After hitting or completely whiffed a [Mirage Blade] attack.");
        draw_debug_text(temp_x + 60,temp_y - 115,"Hold Attack button down until Vergil glows. Cost 2 DT bars.");
        draw_debug_text(temp_x + 60,temp_y - 95,"This strike enemy on the side you're facing. press Attack again to extend.");
        draw_debug_text(temp_x + 60,temp_y - 65,"Vergil will throw the sword away and it spin in place for a while.");
        draw_debug_text(temp_x + 60,temp_y - 45,"All [Mirage Blade] attacks, except Ex-moves and Strongs, is unusable it return.");
    }
    
     if trainingtype == 6 {
        draw_debug_text(temp_x + 60,temp_y - 135,"During Jab 1-2 or Dtilt, hold Special to perform [Drive].");
        draw_debug_text(temp_x + 60,temp_y - 115,"Continue to hold Special to perform [Over Drive]");
        draw_debug_text(temp_x + 60,temp_y - 65,"The first 2 projectiles is a decent poke tool. While the last ");
        draw_debug_text(temp_x + 60,temp_y - 45,"projectile require large charge time and but it have great pressure.");
    }
    
    if trainingtype == 7 {
        draw_debug_text(temp_x + 60,temp_y - 135,"If you have sufficient DT bars and your attack connected.");
        draw_debug_text(temp_x + 60,temp_y - 115,"you can hold Attack to charge Ex-move right away and");
        draw_debug_text(temp_x + 60,temp_y - 95, "cancel current attack into either [Judgement Cut] or [Round Trip].");
        draw_debug_text(temp_x + 60,temp_y - 65,"If you stored a Ex-move by keep the Attack button held, and not getting hit");
        draw_debug_text(temp_x + 60,temp_y - 45,"or perform another attack, you can cancel your airdodge, roll, or parry into Ex-move.");
        
        draw_debug_text(temp_x + 60,temp_y - 15,"Anyway, each stock you can down+taunt once for 3 free DT bars.");
    }
    
    
    
}
shader_end();
