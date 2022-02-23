```matlab:Code
hF=figure;
set(hF, 'Color', 'red');
set(hF,'Visible','on');

```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','pushbutton', 'String', 'MyButton', 'Position', [250 250 70 30])
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
set(hF,'Visible','on');
uicontrol(hF, 'Style', 'edit', 'Position', [250 250 150 30], ...
	'BackgroundColor', 'white', 'HorizontalAlignment', 'left')
```

```matlab:Code
clc;
clear;
close all;
hF=figure;
uicontrol(hF,'Style','text','Position',[250 250 100 30], ...
    'Background','red','String','WOW','HorizontalAlignment','center');
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','checkbox','Position',[250 250 50 30], ...
    'String','WOW','HorizontalAlignment','center');
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','listbox','Position',[250 250 100 60], ...
	'String',{'sin','cos','exp','tan'},'HorizontalAlignment','left');
```

```matlab:Code
clc;
clear;
close all;

hF=figure; 
uicontrol(hF,'Style','pushbutton','String','MyButton', ...
'Position',[10 10 80 30]);
uicontrol(hF,'Style','edit','Position',[10 50 80 30], ...
	'BackgroundColor','red','HorizontalAlignment','left');
uicontrol(hF,'Style','text','Position',[120 10 50 30], ...
'Background','red','String','WOW','HorizontalAlignment','center'); 
uicontrol(hF,'Style','checkbox','Position',[120 60 50 30], ...
'String','WOW','HorizontalAlignment','center'); 
uicontrol(hF,'Style','listbox','Position',[200 100 100 60], ...
	'String',{'sin','cos','exp','tan'},'HorizontalAlignment','left');
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','togglebutton', ...
'String','TriggerButton','Position',[250 250 80 30]);
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','radiobutton', 'String','First','Position',[120 90 70 30]);
uicontrol(hF,'Style','radiobutton', 'String','Second','Position',[120 50 70 30]);
uicontrol(hF,'Style','radiobutton', 'String','Third','Position',[120 10 70 30]);
```

```matlab:Code
clc;
clear;
close all;

hF=figure; 
uicontrol(hF,'Style','frame', 'BackgroundColor','black','Position',[115 5 80 125]);
uicontrol(hF,'Style','radiobutton', 'String','First','Position',[120 90 70 30]);
uicontrol(hF,'Style','radiobutton', 'String','Second','Position',[120 50 70 30]);
uicontrol(hF,'Style','radiobutton', 'String','Third','Position',[120 10 70 30]);
```

```matlab:Code
clc;
clear;
close all;

hF=figure; 
uicontrol(hF,'Style','slider','Position',[200 200 250 100]);
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
uicontrol(hF,'Style','popupmenu', 'String',{'first','second','third'},...
    'Position',[200 30 100 200], 'Value',3);
```

```matlab:Code
clc;
clear;
close all;

hF=figure;
axes('Parent', hF, 'Color', [1 1 1], 'Units','pixels', ...
    'Position', [200 200 100 50], 'FontSize', 6);
set(hF,'Visible','on');
```

![figure_0.png](lecture_4_images/figure_0.png)
