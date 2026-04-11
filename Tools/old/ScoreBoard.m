clear
close all
inp = 'ScoreBoard.png';

[org,MAP] = imread(inp);

figure(1);
image((uint8(org)));
colormap(MAP);
axis equal;

name = [ inp(1:(end-4))];

fid = fopen([name '.bin'],'wb');
for i=1:size(org,1)
    u = org(i,1:2:end)*16+org(i,2:2:end);
    fwrite(fid,u,'uint8');
end
fclose(fid);
