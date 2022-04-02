// called when the character gets KO'd
holding_wt = false;
goose_died = false

if goose_id != undefined && instance_exists(goose_id) {
    instance_destroy(goose_id)
    goose_id = undefined
}