function I=Int(a,eps)
    %Преобразуем строковый тип входных
    %параметров a и eps в тип double
    if ischar(a)
        a=str2num(a);
    end
    if ischar(eps)
        eps=str2num(eps);
    end
    I=Int_c(a,eps)
end