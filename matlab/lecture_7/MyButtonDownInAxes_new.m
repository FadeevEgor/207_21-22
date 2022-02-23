function MyButtonDownInAxes_new
    global hAxes
    global h xs ys
    v=get(hAxes,'CurrentPoint');
    x=v(1,1); y=v(1,2);
    if isempty(h)
        h=line(x,y);
        xs = x;
        ys = y;
    else
        h = line(xs, ys);
        xs = [xs x];
        ys = [ys y];
    end
    set(h, 'Marker', 'o', 'Color', 'red');
    set(h, 'MarkerSize', 18);
    set(h, 'linestyle', 'none');
    set(h, 'XData', xs, 'YData', ys);
end


