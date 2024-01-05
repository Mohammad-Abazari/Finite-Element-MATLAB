function draw_beam(L,E,I,ic,U,n)
csp = [0,cumsum(L)];
sgtitle('Beam Analysis')
subplot(3,1,1);hold on;ylabel("Shear force, F");
subplot(3,1,2);hold on;ylabel("Moment, F-L"); 
subplot(3,1,3);hold on;ylabel([num2str(n),'\times Displacement, L']);
for i = 1:length(L)
    ki = BeamElementStiffness(E(i),I(i),L(i));
    ui = BeamDisplacement(U,ic(i,:));
    Fi = BeamElementForces(ki,ui);
    subplot(3,1,1);
    area(csp(i:i+1),[Fi(1);-Fi(3)]); 
    text(csp(i:i+1),[Fi(1),-Fi(3)],strtrim(cellstr(num2str([Fi(1),-Fi(3)]'))),...
        'HorizontalAlignment','left',...
    'VerticalAlignment','bottom','FontWeight','bold');
    subplot(3,1,2);
    area(csp(i:i+1),[-Fi(2);Fi(4)]);
    text(csp(i:i+1),[-Fi(2),Fi(4)],strtrim(cellstr(num2str([-Fi(2),Fi(4)]'))),...
        'HorizontalAlignment','left',...
    'VerticalAlignment','bottom','FontWeight','bold'); 
    subplot(3,1,3)
    plot(csp(i:i+1),ui([1,3]),'-k','LineWidth',2);
    text(csp(i:i+1),ui([1,3])*n,strtrim(cellstr(num2str(ui([1,3]')))),...
        'HorizontalAlignment','left',...
    'VerticalAlignment','bottom','FontWeight','bold');
end
end