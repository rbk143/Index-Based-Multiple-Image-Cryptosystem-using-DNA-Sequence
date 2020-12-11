function c=checklist(index,list)
n=size(list);
for i=1:n
    if(list(i)==index)
        c=1;
    else
        c=0;
    end
end
