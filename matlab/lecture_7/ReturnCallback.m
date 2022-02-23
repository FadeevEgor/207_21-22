function ReturnCallback
    global hAxes
    global hEd1 hEd2 hEd3
    global hBut1 hMenu % <--------
    global hTxt1 hTxt2 hTxt3 hTxt4
    % Делаем видимыми элементы управления окна для ввода начальных данных:
    set(hTxt1,'Visible','on');
    set(hTxt2,'Visible','on');
    set(hTxt3,'Visible','on');
    set(hTxt4,'Visible','on');
    set(hEd1,'Visible','on');
    set(hEd2,'Visible','on');
    set(hEd3,'Visible','on');
    set(hBut1,'Visible','on');
    % Убираем кнопку Return:
    set(hMenu, 'Enable','off'); % <----------------
    % Очищаем систему координат и делаем ее невидимой:
    axes(hAxes); cla;
    set(hAxes,'Visible','off');
end

