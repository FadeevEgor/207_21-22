function MyButtonDownInAxes
    global hAxes
    global h
    v=get(hAxes,'CurrentPoint');
    x=v(1,1); y=v(1,2);
    if isempty(h)
        h=line(x,y);
        set(h, 'Marker', 'o', 'Color', 'red');
        set(h,'EraseMode','none','MarkerSize',18);
        set(h, 'MarkerSize', 18);
    end
    set(h, 'XData', x, 'YData', y);
end


