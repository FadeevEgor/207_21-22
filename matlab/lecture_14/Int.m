function I=Int(a,eps)
    %����������� ��������� ��� �������
    %���������� a � eps � ��� double
    if ischar(a)
        a=str2num(a);
    end
    if ischar(eps)
        eps=str2num(eps);
    end
    I=Int_c(a,eps)
end