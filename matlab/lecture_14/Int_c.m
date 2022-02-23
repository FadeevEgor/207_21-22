function I=Int_c(a,eps)
    %Проверяем допустимо ли выбранное
    %значение параметра eps
    if eps<=0
        I='Invalid eps';
        return
    end
    %Возвращаем значение интеграла при a = 0
    if a==0
        I=0;
        return
    end
    %Находим число N узлов сетки отрезка [0,a]
    N=1+floor(abs(a)^1.5/sqrt(6*eps));
    %Описываем случай, когда сетка содержит один узел
    if N==1
        I=0.5*(1+1/(1+sin(a)^2))*abs(a);
        return
    end
    h=abs(a)/(N-1);
    %Строим сетку на отрезке [0,a]
    if a>0
        x=0:h:a;
    end
    if a<0
        x=a:h:0;
    end
    %Находим значения функции y(x) в узлах сетки
    for i=1:length(x)
        y(i)=1/(1+sin(x(i))^2);
    end
    %Строим график функции y=y(x)
    plot(x,y)
    %Определяем значение искомого интеграла по
    %формуле трапеции
    I=0.5*(y(1)+y(N));
    if N==2
        I=I*h;
        return
    end
    if N>2
    for i=2:(N-1)
        I=I+y(i);
    end
    I=h*I;
end


