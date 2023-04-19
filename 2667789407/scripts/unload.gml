var msg = noone;

if ("cin_is_on_island" in self)
    msg = "SEEK THE ELDER";

if (msg != noone)
{
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.

    smuggler.unown_results_screen_message = msg;
}

