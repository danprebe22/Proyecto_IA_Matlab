function R= rutadijkstra(R,W,s,d)

index=size(W,1);
while index>0
    if W(2,d)==W(size(W,1),d)
        R=[R s];
        index=0;
    else
        index2=size(W,1);
        while index2>0
            if W(index2,d)<W(index2-1,d)
                R=[R W(index2,1)];
                R=rutadijkstra(R,W,s,W(index2,1));
                index2=0;
            else
                index2=index2-1;
            end
            index=0;
        end
    end
end