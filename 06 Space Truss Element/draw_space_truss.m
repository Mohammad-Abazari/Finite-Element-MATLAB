function draw_space_truss(csp,ic,displacements)
plot3(csp(:,1),csp(:,2),csp(:,3),'+r');
text(csp(:,1),csp(:,2),csp(:,3),strtrim(cellstr(num2str((1:size(csp,1))'))'),...
    'HorizontalAlignment','right',...
    'VerticalAlignment','top','FontWeight','bold');
axis off; hold on;
for i = 1:size(ic,1)
    plot3(csp([ic(i,1),ic(i,2)],1),csp([ic(i,1),ic(i,2)],2),csp([ic(i,1),ic(i,2)],3),'-k',...
        'HandleVisibility','off','LineWidth',1);
end
axis equal;
if nargin>2
    for i = 1:size(csp,1)
        csp(i,:) = csp(i,:)+displacements(3*i-2:3*i)';
    end
    plot3(csp(:,1),csp(:,2),csp(:,3),'xg');
    for i = 1:size(ic,1)
        plot3(csp([ic(i,1),ic(i,2)],1),csp([ic(i,1),ic(i,2)],2),csp([ic(i,1),ic(i,2)],3),'--k',...
            'HandleVisibility','off','LineWidth',1);
    end
    legend('Main',"Under Load");
    hold off;
end
end