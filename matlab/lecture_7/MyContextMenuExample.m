function MyContextMenuExample
    global hLine
    hMenuCt=uicontextmenu;
    uimenu(hMenuCt,'Label','red','Callback','Clbk1');
    uimenu(hMenuCt,'Label','green','Callback','Clbk2');
    uimenu(hMenuCt,'Label','magenta','Callback','Clbk3');
    x=0:0.01:15;
    for i=1:length(x)
        y(i)=x(i)*sin(x(i)^2);
    end
    hLine=plot(x,y,'UIContextMenu',hMenuCt);
end


