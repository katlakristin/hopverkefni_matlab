A=SUB33open;
B=SUB33closed;
C=Stimuli;

tic
for i=1:height(C)
    if C{i,2}==20
    C{i,2}=0;
    elseif C{i,2}==59
    C{i,2}=1;
    end
end

toc
subplot(3,1,1)
plot(C{1:1500,1},C{1:1500,2},'m')
hold on
plot(C{1501:5250,1},C{1501:5250,2},'r')
hold on
plot(C{5251:9000,1},C{5251:9000,2},'g')
hold on
plot(C{9001:12750,1},C{9001:12750,2},'b')
hold on
plot(C{12751:16000,1},C{12751:16000,2},'k')
axis([0 330 -1 2])
title('Stilmuli')

subplot(3,1,2)
plot(A{1:1500,1},A{1:1500,2},'m')
hold on
plot(A{1501:5250,1},A{1501:5250,2},'r')
hold on
plot(A{5251:9000,1},A{5251:9000,2},'g')
hold on
plot(A{9001:12750,1},A{9001:12750,2},'b')
hold on
plot(A{12751:16000,1},A{12751:16000,2},'k')
axis([0 330 -40 40])
title('Opin augu: Medial/Lateral vægi')
xlabel('Tími[s]')
ylabel('Torque [Nm]')

subplot(3,1,3)
plot(A{1:1500,1},A{1:1500,3},'m')
hold on
plot(A{1501:5250,1},A{1501:5250,3},'r')
hold on
plot(A{5251:9000,1},A{5251:9000,3},'g')
hold on
plot(A{9001:12750,1},A{9001:12750,3},'b')
hold on
plot(A{12751:16000,1},A{12751:16000,3},'k')
axis([0 330 -40 40])
title('Opin augu: Anterior/Posterior vægi')
xlabel('Tími[s]')
ylabel('Torque [Nm]')

