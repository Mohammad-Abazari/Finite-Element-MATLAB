function draw_plane_truss(csp,ic,displacements)
plot(csp(:,1),csp(:,2),'+r');
text(csp(:,1),csp(:,2),strtrim(cellstr(num2str((1:size(csp,1))'))'),...
    'HorizontalAlignment','right',...
    'VerticalAlignment','top','FontWeight','bold');
axis off; hold on;
for i = 1:size(ic,1)
    plot(csp([ic(i,1),ic(i,2)],1),csp([ic(i,1),ic(i,2)],2),'-k',...
        'HandleVisibility','off','LineWidth',1);
end
axis equal;
if nargin>2
    for i = 1:size(csp,1)
        csp(i,:) = csp(i,:)+displacements(2*i-1:2*i)';
    end
    plot(csp(:,1),csp(:,2),'xg');
    for i = 1:size(ic,1)
        plot(csp([ic(i,1),ic(i,2)],1),csp([ic(i,1),ic(i,2)],2),'--k',...
            'HandleVisibility','off','LineWidth',1);
    end
    legend('Main',"Under Load");
    hold off;
end
end