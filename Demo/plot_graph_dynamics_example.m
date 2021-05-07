% This script creates a gif animation of the threshold dynamics
close all
clear variables

global filename x_hat_colour 


%% This code was used to generate UWA_example.mat
T=1000;
n=30;
beta=6;
k_e=.08;
k_f=.32;
r_f=.135;
r_e=.4;
rho=0.35; %here you can play around it
zel=20/30; %number of innovators
n_e=round(n*rho*(1-zel));

x=SocDynK_all(n,beta,[r_e*ones(1,n_e) r_f*ones(1,n-n_e)],[k_e*ones(1,n_e) k_f*ones(1,n-n_e)],n*zel,T);


%%
%load('UWA_example.mat','A','x')   %Load the already generated data.

filename = 'Example_NetSci_Explosive.gif';



n = size(x,1);
t_f = size(x,2);
x_hat_colour = zeros(3,t_f,n); %First entry is colour, second is time step, third is person;

x_avg = mean(x);

t_finish = 150;  %Time step to finish on


mov.gif_length = t_finish/2;
mov.fps = round(t_finish/mov.gif_length);

for t = 1:t_f
    for i = 1:n
        if x(i,t) == 1
            % Set the marker colours to red if action is 1
            x_hat_colour(:,t:t_f,i) = repmat([1 0 0]',1,t_f-t+1);
        else
            %Set the marker colour to blue if action is 0
            x_hat_colour(:,t:t_f,i) = repmat([0 0 1]',1,t_f-t+1);
        end
        
        
    end
end

A=ones(30);

fig1 = figure;
set(fig1, 'Units', 'Normalized', 'OuterPosition', [0.1, 0.1, 0.7, 0.7]);
set(fig1, 'Renderer','painters','Color',[1 1 1])
set(axes,'YColor','none','XColor','none')
gph = graph(A-eye(size(A,1)));

hold on
s2 = subplot(1,6,[1 2 3]);
hold on
fig3 = plot(1,x_avg(1),'LineWidth',4,'Color','r');
set(s2,'YLim', [0 1],'XLim', [0 t_finish],'FontSize',24);
xlabel('Time Step','FontSize',24)
ylabel('Fraction Adopting Innovation')
s1 = subplot(1,6,[4 5 6]);
hold on
net_fig2 = plot(gph,'LayOut','auto','NodeLabel',{});   %Displays public action
net_fig2.MarkerSize = 25;
net_fig2.EdgeAlpha = 0.05; zel=5/30; %here you can play around it
highlight(net_fig2,[(n*(1-zel)+1):n],'Marker','diamond');
set(s1,'YColor','none','XColor','none')




dim = [0.85 0.6 0.6 0.3];
str = {'Time step',num2str(1)};
zz = annotation('textbox',dim,'String',str,'FitBoxToText','on');
set(zz,'EdgeColor',[1 1 1],'FontSize',24)



for i = 1:t_finish
    fig1;
    mk_colour_public = reshape(x_hat_colour(:,i,:),3,n)'; %This takes out the marker colours for n individuals at the i-th time step, with i-th row being the marker colour for individual i
    net_fig2.NodeColor = mk_colour_public;   %Update marker colour representing public opinion
    
    set(fig3,'XData',1:i,'YData',x_avg(1:i))

    str = {'Time step',num2str(i)};

    zz.String = str;
    drawnow
    
    M(i)=getframe(fig1);   %Captures the figure as a movie frame
    
    %Turn movie frame into an image
    im = frame2im(M(i));
    [imind,cm] = rgb2ind(im,256);
    
    %Write to GIF File
    if i == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',1/mov.fps);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',1/mov.fps);
    end
end