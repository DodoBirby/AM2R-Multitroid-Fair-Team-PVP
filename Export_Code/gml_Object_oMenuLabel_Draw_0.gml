if instance_exists(oLogScreenControl)
{
    if (text == oLogScreenControl.cat[4] && global.log[41] == 0 && global.log[42] == 0 && global.log[43] == 0 && global.log[45] == 0)
        exit
}
draw_rectangle_color((x - 2), (y - 1), (x + bg_width), (y + 8), c_green, c_black, c_black, c_green, 0)
draw_set_alpha(1)
draw_set_font(global.fontGUI2)
draw_set_color(c_black)
draw_text((x + 1), (y - 3), text)
draw_set_color(c_white)
draw_text(x, (y - 4), text)
