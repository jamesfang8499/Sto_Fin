M=1000;
rng(789,'twister');
RANDOM=randn(M-1,1);

P=zeros(M,1);   
P(1)=30;
dt=1/M;
mu=0.05;
sig=0.5;

for i=1:M-1
        P(i+1)=P(i)*exp((mu-0.5*sig^2)*dt+sig*sqrt(dt)*RANDOM(i));
end

subplot(2,1,1)

plot(P, 'LineWidth',1.5, 'Color',[1 0 0])

hold on;
barrier =40;
line(xlim,[barrier barrier]);
line([509 509], ylim, 'LineStyle','--')
scatter(509, Q(509), 'filled', 'MarkerFaceColor', [0 .7 .7] )



%%


subplot(2,1,2)

plot(P, 'Color', [0.5 0.5 0.5], 'LineWidth', 1.2)
hold on;
barrier =40;
line(xlim,[barrier barrier]);
line([509 509], ylim, 'LineStyle','--')

Q=P;

for i=510: M
    Q(i)=2*barrier-P(i);
end
plot(Q,  'LineWidth',1.5 , 'Color',[1 0 0])


scatter(509, Q(509), 'filled', 'MarkerFaceColor', [0 .7 .7] )


%%
subplot(1,2,1)
rng(789,'twister');

 P=zeros(1,99);
S=zeros(1,100);
 P=sqrt(10/100).*randn(1,100);
P=cumsum(P);
 S=[0 P];
 plot(20:.1:30, S-2)
line(xlim, [-2,-2], 'LineStyle','--')
line(xlim, [0,0], 'LineStyle','-.')
 title('起始点在-2处的布朗运动')
 xlabel('时间区间[20,30]')


subplot(1,2,2)
rng(789,'twister');

 P=zeros(1,99);
S=zeros(1,100);
 P=sqrt(10/100).*randn(1,100);
P=cumsum(P);
 S=[0 P];
 plot(0:.1:10, S)
line(xlim, [0,0], 'LineStyle','--')
 line(xlim, [2,2], 'LineStyle','-.')
 title('起始点在0处的布朗运动')
 xlabel('时间区间[0,10]')
 

