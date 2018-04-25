/// @description Insert description here
// You can write your code in this editor

#region //Panel Sliding
if showMenu = global.menu and global.menu != 0
{
	x += (xstart-x)/(5)
		
	if abs(xstart-x) < 10
	{
		x = xstart
	}
}
else
{	
	x += (xstart-x-250)/(5)
}
x = round(x)

if x <= -210
{
	showMenu = global.menu
	scroll = 0
	scrollMax = max(0,global.contentCount[showMenu]-16)
}
#endregion

#region //Buttons
if mouse_check_button_pressed(mb_left)
{
	#region //New Content
	if point_in_rectangle(mouse_x,mouse_y,x+5,y+height-15,x+15,y+height-5)
	{
		i = instance_create_depth(10,20+(global.contentCount[showMenu]*14),-5,obj_content)
		i.host = id
		i.x = x+i.xstart
		i.y = y+i.ystart+(scroll*-14)
		i.type = showMenu
		i.num = global.contentCount[showMenu]
		i.text = "Content "+string(global.contentCount[showMenu]+1)
		global.contentCount[showMenu] ++
		scrollMax = max(0,global.contentCount[showMenu]-16)
		scroll = scrollMax
	}
	#endregion
	
	#region //Clone Content
	if point_in_rectangle(mouse_x,mouse_y,x+20,y+height-15,x+30,y+height-5)
	{
		with(obj_content)
		{
			//Temp Clone Script
			if active = true
			{
				i = instance_create_depth(10,20+(global.contentCount[other.showMenu]*14),-5,obj_content)
				i.host = other.id
				i.x = other.x+i.xstart
				i.y = other.y+i.ystart+(other.scroll*-14)
				i.type = other.showMenu
				i.num = global.contentCount[other.showMenu]
				i.text = "Copy of "+string(text)
				
				global.contentCount[other.showMenu] ++
				other.scrollMax = max(0,global.contentCount[other.showMenu]-16)
				other.scroll = other.scrollMax
			}
		}
	}
	#endregion
	
	#region //Delete Content
	if point_in_rectangle(mouse_x,mouse_y,x+35,y+height-15,x+45,y+height-5)
	{
		with(obj_content)
		{
			//Temp Delete Content
			if active = true
			{
				with(obj_content)
				{
					if num > other.num
					{
						num--
						ystart = ystart-14
					}	
				}
				instance_destroy()
				
				global.contentCount[other.showMenu] --
				other.scrollMax = max(0,global.contentCount[other.showMenu]-16)
				other.scroll = other.scrollMax
			}
		}
	}
	#endregion
}
#endregion


