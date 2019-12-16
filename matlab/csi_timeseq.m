clear all;
csi_trace = read_bf_file('csi_data/static01.dat');
num_package = length(csi_trace);
for i=1:num_package %������ȡ�����ݰ��ĸ���
        csi_entry = csi_trace{i};
        csi = get_scaled_csi(csi_entry); %��ȡcsi����    
        csi =csi(1,:,:);
        csi1=abs(squeeze(csi).');          %��ȡ��ֵ(��ά+ת��)
        
        %ֻȡһ�����ߵ�����
        first_ant_csi(:,i)=csi1(:,1);           %ֱ��ȡ��һ������(����Ҫforѭ��ȡ)
        second_ant_csi(:,i)=csi1(:,2);
        third_ant_csi(:,i)=csi1(:,3);
end

hold on;
plot(first_ant_csi.')
hold on;
plot(second_ant_csi.')
hold on;
plot(third_ant_csi.')