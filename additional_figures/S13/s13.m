figure
    hold on
for i=1:20
    z=SIS(2000,.002*i,.0001*i,400);
plot((z-.25)/.75)
end

figure
    hold on
for i=1:20
    z=SIS(2000,.005*i,.0001*i,400);
plot((z-.25)/.75)
end