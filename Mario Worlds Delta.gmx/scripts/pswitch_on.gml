///pswitch_on();

/*
**  Usage:
**      pswitch_on();
**
**  Function:
**      Replaces items affected by the P-Switch
*/

//Turn bricks into coins
with (obj_brick) {

    instance_create(x, y, obj_coinchange);
    instance_destroy();
}

//Turn coins into bricks
with (obj_coin) {

    instance_create(x, y, obj_brick);
    instance_destroy();
}

//Turn fake coins into coins.
with (obj_coinchange) {

    instance_create(x,y,obj_coin);
    instance_destroy();    
}

//Make invisible coins visible
with (obj_coin_p) visible = true;