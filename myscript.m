 % Jillian's first MATLAB script (Nov. 1, 2019)

%% 1. define a time step, dt, and a time vector, t
dt = .1;
t = 0:dt:2;

%% 2. create empty vectors for some important variables...
N = length(t)
[a,b] = size(t)

y=0*t
x = y
vx = zeros(a,b)
vy = zeros(a,b)

% using the help command:
% help trranspose
% help length
% help size


%% 3. Define equations of motion (accelerations)
ax = 0
ay = -9.81 % (m/s)/s

%% 4. Definie initial conditions

% % first, some scrap work:
% K = zeros(1,4)
% K(3) = 3  % index to the 3rd element inside K
% M = zeros(4,5)  % 4 rows and 5 columns
% M(2,4) = 100 % 2nd row and 4th column value is changed to 100
% r = 1:1:5  % or just  " r = 1:5  "

x(1) = 2 % m
y(1) = 1
vx(1) = 2 % m/s
vy(1) = 2 



%% 5. Simulate dynamics with a for loop

for u = 2:8
    n(u) = u
end

for i = 2:N
    vx(i) = vx(i-1) + ax * dt;
    vy(i) = vy(i-1) + ay * dt;
    x(i) = x(i-1) + vx(i-1) * dt;
    y(i) = y(i-1) + vy(i-1) * dt;
end


%% 6. Do some plotting!
% figure(1)
% clf % clears the figure
% plot(t,x) % plot x vs time
% xlabel('Time (s)'); ylabel('x (m)');
% set(gca,'FontSize',14)
% grid on
% hold on % to let us plot multiple lines on the same figure, w/out erasing
% 
% plot(t,y,'r--') % plot y vs time
% legend('x(t)','y(t)')
% 
% figure(2)
% clf
% plot(t,vx)
% hold on
% 
% plot(t,vy)
% axis([0 2 -20 5])
% 
% figure(3)
% clf
% subplot(2,1,1)
% plot(t,x) % plot x vs time
% xlabel('Time (s)'); ylabel('positions (m)');
% set(gca,'FontSize',14)
% grid on
% hold on % to let us plot multiple lines on the same figure, w/out erasing
% 
% plot(t,y,'r--') % plot y vs time
% legend('x(t)','y(t)')
% 
% subplot(2,1,2)
% 
% plot(t,vx) % plot x vs time
% xlabel('Time (s)'); ylabel('velocities (m/s)');
% set(gca,'FontSize',14)
% grid on
% hold on % to let us plot multiple lines on the same figure, w/out erasing
% 
% plot(t,vy,'r--') % plot y vs time
% legend('vx(t)','vy(t)')

figure(4)
clf
% let's plot (x,y) for the "ball" trajectory
 plot(x,y)
hold on
axis equal % make sure x and y have the same "scaling" (to look like a picture)

% plot the ground
plot([0 6],[0 0],'k-')

% Create a "handle" named "p1" that contains information about a 
% plotting object
p1 = plot(x(1),y(1),'ko','MarkerFace','r','MarkerSize',14);
for n=6:5:N
    %input('Hit enter...')
    pause(dt*5)
    n
    t(n)
    set(p1,'XData',x(n),'YData',y(n))

end

%% 7. Detect when the ball hit the ground 
fi = find(y>0)
t_hit = interp1(y(fi(end)+[0 1]),t(fi(end)+[0 1]),0)






