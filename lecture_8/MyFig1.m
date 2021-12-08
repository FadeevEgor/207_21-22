
function MyFig1
    %%%%%%%%%%%%%%%%%
    % ����������
    %%%%%%%%%%%%%%%%%
    global hFig1 hAxes
    global hEd1 hEd2 hEd3 hEd4
    global hList
    global hBut1 hBut2
    global hTxt1 hTxt2 hTxt3 hTxt4 hTxt5 hTxt6 hTxt7
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % �������� ���� � ��� ���������
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hFig1=figure('Position',[100 100 800 500]);
    hAxes = axes('Parent', hFig1, 'Color', [1 1 1], 'Units', 'pixels', ...
    'Position', [30 100 300 300], 'FontSize',10);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ���� ����� ������� �������� ������
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hEd1 = uicontrol(hFig1, 'Style', 'edit', ...
    'Position', [435 400 190 30], 'BackgroundColor', [1 1 1], ...
    'HorizontalAlignment', 'left');
    hEd2 = uicontrol(hFig1, 'Style', 'edit', ...
    'Position', [435 320 190 30], 'BackgroundColor', [1 1 1], ...
    'HorizontalAlignment', 'left');
    hEd3 = uicontrol(hFig1, 'Style', 'edit', ...
    'Position', [435 230 190 30], 'BackgroundColor', [1 1 1], ...
    'HorizontalAlignment', 'left');
    hEd4 = uicontrol(hFig1, 'Style', 'edit', ...
    'Position', [435 150 190 30], 'BackgroundColor', [1 1 1], ...
    'HorizontalAlignment', 'left');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ����������� ������
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hList = uicontrol(hFig1, 'Style', 'listbox', ...
    'Position', [485 15 140 90], ...
    'String', {'sin', 'cos', 'MyFn1', 'MyFn2', 'f3'}, ...
    'HorizontalAlignment', 'left');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ������
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hBut1 = uicontrol(hFig1, 'Style', 'pushbutton', ...
    'Position', [60 25 140 40], 'String', 'Go', 'Callback', 'MyGo');
    hBut2 = uicontrol(hFig1, 'Style', 'pushbutton', ...
    'Position', [240 25 140 40], 'String', 'Clear', 'Callback', 'MyClear');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ��������������� ��������� ����
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hTxt1=uicontrol(hFig1, 'Style', 'text', 'Position', [90 475 240 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'Euler solution');
    hTxt2 = uicontrol(hFig1, 'Style', 'text', 'Position', [435 440 60 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'X initial');
    hTxt3 = uicontrol(hFig1, 'Style', 'text', 'Position',[435 360 60 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'Y initial');
    hTxt4 = uicontrol(hFig1, 'Style', 'text', 'Position', [435 260 60 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'X final');
    hTxt5 = uicontrol(hFig1, 'Style', 'text', 'Position', [435 180 60 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'N');
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ������������ ����������������� �����
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hTxt6=uicontrol(hFig1, 'Style', 'text', 'Position', [430 5 1 900], ...
    'BackgroundColor', [0 0 0]);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ��������� ���������������� ��������� ����
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    hTxt7=uicontrol(hFig1, 'Style', 'text', ...
    'Position', [435 120 240 20], ...
    'BackgroundColor', [0.7 0.7 0.7], 'String', 'Choose function');
end








 




