addpath('../../matlab');

sessionid='sphbox';

elem=readmmcelem(['elem_' sessionid '.dat']);
node=readmmcnode(['node_' sessionid '.dat']);
nvol=nodevolume(elem,node);

fid=fopen(['vnode_' sessionid '.dat'],'wt');
fprintf(fid,'%d %d\n',1,size(node,1));
fprintf(fid,'%d %e\n',[(1:size(node,1))',nvol]');
fclose(fid);
