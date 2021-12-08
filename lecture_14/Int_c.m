function I=Int_c(a,eps)
    %��������� ��������� �� ���������
    %�������� ��������� eps
    if eps<=0
        I='Invalid eps';
        return
    end
    %���������� �������� ��������� ��� a = 0
    if a==0
        I=0;
        return
    end
    %������� ����� N ����� ����� ������� [0,a]
    N=1+floor(abs(a)^1.5/sqrt(6*eps));
    %��������� ������, ����� ����� �������� ���� ����
    if N==1
        I=0.5*(1+1/(1+sin(a)^2))*abs(a);
        return
    end
    h=abs(a)/(N-1);
    %������ ����� �� ������� [0,a]
    if a>0
        x=0:h:a;
    end
    if a<0
        x=a:h:0;
    end
    %������� �������� ������� y(x) � ����� �����
    for i=1:length(x)
        y(i)=1/(1+sin(x(i))^2);
    end
    %������ ������ ������� y=y(x)
    plot(x,y)
    %���������� �������� �������� ��������� ��
    %������� ��������
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


