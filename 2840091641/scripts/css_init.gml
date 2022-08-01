buttonInfo = {x:0, y:0, hover:false};
syncUID = 25005;
if(get_synced_var(player) != 1)
{
    isTroll = 0;
    set_synced_var(player, isTroll);
}
else
{
    isTroll = 1
}