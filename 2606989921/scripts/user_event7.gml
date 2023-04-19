//persistence initialization

//we want to ensure these two things exist
var msg_master = noone; //persistent article, to run code where we shouldn't.
var msg_clone = noone; //master's partner in crime, to draw at two different depths at once

//find existing articles
with asset_get("obj_article3") if (num == "missingno")
{
    if (msg_master == noone) && (self == self.master) msg_master = self;
    else if (msg_clone == noone) && (self == self.clone) msg_clone = self;
    else instance_destroy(self);
}


//something not found? create it
if (msg_master == noone)
{
    msg_master = instance_create(0, 0, "obj_article3");
    msg_master.num = "missingno";
    msg_master.persistent = true;
    msg_master.uses_shader = false;
    msg_master.player_id = msg_master;
    msg_master.orig_player_id = msg_master;
//prevents other mods from trying to check this article's owner/url and erroring
//(it is still, at its core, an article3)
    msg_master.url = "-153.14159265"
    msg_master.player = 5;
}
if (msg_clone == noone)
{
    msg_clone = instance_create(0, 0, "obj_article3");
    msg_clone.num = "missingno";
    msg_clone.persistent = true;
    msg_clone.uses_shader = false;
    msg_clone.player_id = msg_master;
    msg_clone.orig_player_id = msg_master;
}

//link and calibrate
if instance_exists(msg_master)
&& instance_exists(msg_clone)
{
    msg_master.master = msg_master;
    msg_clone.master = msg_master;

    msg_master.clone = msg_clone;
    msg_clone.clone = msg_clone;


    //technical stage-player number
    //grants immunity to playtest-exit cleanup as its not detected as belonging to 'M
    msg_master.player = 5;
    msg_clone.player = 5;
    //decides who's scripts to run 
    //latest 'M requesting the article will redirect to its own scripts to ensure it's running
    msg_master.orig_player = player; 
    msg_clone.orig_player = player;
}
else print("SEGFAULT!! could not create persistence");

//return by setting missingno_requested_persistent_article as output
missingno_requested_persistent_article = msg_master;