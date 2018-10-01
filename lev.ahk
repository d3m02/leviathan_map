CreateBox(Color)
{
	Gui 81:color, %Color%
	Gui 81:+ToolWindow -SysMenu -Caption +AlwaysOnTop
	Gui 82:color, %Color%
	Gui 82:+ToolWindow -SysMenu -Caption +AlwaysOnTop
	Gui 83:color, %Color%
	Gui 83:+ToolWindow -SysMenu -Caption +AlwaysOnTop
	Gui 84:color, %Color%
	Gui 84:+ToolWindow -SysMenu -Caption +AlwaysOnTop
}

Box(XCor, YCor, Width, Height, Thickness, Offset)
{
	If InStr(Offset, "In")
	{
		StringTrimLeft, offset, offset, 2
		If not Offset
			Offset = 0
		Side = -1
	} Else {
		StringTrimLeft, offset, offset, 3
		If not Offset
			Offset = 0
		Side = 1
	}
	x := XCor - (Side + 1) / 2 * Thickness - Side * Offset
	y := YCor - (Side + 1) / 2 * Thickness - Side * Offset
	h := Height + Side * Thickness + Side * Offset * 2
	w := Thickness
	Gui 81:Show, x%x% y%y% w%w% h%h% NA
	x += Thickness
	w := Width + Side * Thickness + Side * Offset * 2
	h := Thickness
	Gui 82:Show, x%x% y%y% w%w% h%h% NA
	x := x + w - Thickness
	y += Thickness
	h := Height + Side * Thickness + Side * Offset * 2
	w := Thickness
	Gui 83:Show, x%x% y%y% w%w% h%h% NA
	x := XCor - (Side + 1) / 2 * Thickness - Side * Offset
	y += h - Thickness
	w := Width + Side * Thickness + Side * Offset * 2
	h := Thickness
	Gui 84:Show, x%x% y%y% w%w% h%h% NA
}

RemoveBox()
{
	Gui 81:destroy
	Gui 82:destroy
	Gui 83:destroy
	Gui 84:destroy
}
DrawMap(){
    Sleep, 200
    MouseMove,910,	373
    Click
    Sleep, 200
    MouseMove,898,	353
    Click
    Sleep, 200
    MouseMove,804,	342
    Click
    Sleep, 200
    MouseMove,756,	368
    Click
    Sleep, 200
    MouseMove,774,	424
    Click
    Sleep, 200
    MouseMove,798,	437
    Click
    Sleep, 200
    MouseMove,831,	427
    Click
    Sleep, 200
    MouseMove,892,	387
    Click
    Sleep, 200
    MouseMove,918,	374
    Click
    Sleep, 200
    MouseMove,941,	372
    Click
    Sleep, 200
    MouseMove,983,	395
    Click
    Sleep, 200
    MouseMove,983,	492
    Click
    Sleep, 200
    MouseMove,970,	517
    Click
    Sleep, 200
    MouseMove,943,	531
    Click
    Sleep, 200
    MouseMove,830,	554
    Click
    Sleep, 200
    MouseMove,780,	576
    Click
    Sleep, 200
    MouseMove,760,	539
    Click
    Sleep, 200
    MouseMove,779,	510
    Click
    Sleep, 200
    MouseMove,915,	400
    Click
    Sleep, 200
    MouseMove,910,	373
    Click
    Sleep, 200
    
}

CreateBox("FF0000")
Box(362, 327, 940, 570, 2, "in")

MsgBox Press "=" when you are ready.

KeyWait, = , D
RemoveBox()
DrawMap()
    
ExitApp 