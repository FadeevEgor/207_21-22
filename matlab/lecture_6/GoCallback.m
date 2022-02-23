function GoCallback
    global hAxes
    global hEd1 hEd2 hEd3
    global hBut1 hBut2
    global hTxt1 hTxt2 hTxt3 hTxt4
    % ��������� ������� ������ ��� ������� ��������� ���-���-����:
    str1=get(hEd1,'String');
    str2=get(hEd2,'String');
    str3=get(hEd3,'String');
    % ����������� ������ ������ � �����:
    y1In=str2num(str1);
    y2In=str2num(str2);
    len=str2num(str3);
    % ��������� ������� ��������� ���-���-���� � ������� �������� ode15s:
    [X,Y]=ode15s(@MyVDP,[0 len],[y1In y2In]);
    % ������� �� �������� ���� ��� ��, ��� ������� � �������� ��������� ������:
    set(hTxt1,'Visible','off');
    set(hTxt2,'Visible','off');
    set(hTxt3,'Visible','off');
    set(hTxt4,'Visible','off');
    set(hEd1,'Visible','off');
    set(hEd2,'Visible','off');
    set(hEd3,'Visible','off');
    set(hBut1,'Visible','off');
    % ������ ������� ������ ������:
    set(hBut2,'Visible','on');
    % ������ �������� ��� ��������� � ������ ������ �������:
    plot(X,Y(:,1));
    % plot(Y(:,1),Y(:,2))
    set(hAxes,'Visible','on');

end

