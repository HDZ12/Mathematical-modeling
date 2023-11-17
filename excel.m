data_table=xlsread('EXcel表名 .xlsx','小表名（sheet)')%%只读数据
data_table2=readmatrix('Excel表名.xlsx','Sheet','小表名')%%读数据和文本文本读为Nan
data_table3=readtable('Excel表名.xlsx','Sheet','小表名')%%完全读取
data_table4=readcell('Excel表名.xlsx','Sheet','小表名')%%以元胞方式读取
load('数据.mat')%导入数据
%%把数据导出为矩阵
data=data_table3(:,2:end)
data1=table2array(data)%%(table变矩阵)
data2=array2table(data)%%(矩阵变table)
%%查找数据(例：取出不为零数据)
~= == > < >= <=
data_f1=data2(1,:)
index1=find(data_f1~=0)
num_index1=length(index1)
data_f1(index1)
%%for循环实现：
data_fall=zeros(1,size(data2,1));
for i=2:size(data2,1)
data_f1=data2(i,:)
index1=find(data_f1~=0)
num_index1=length(index1);
data_fall(i)=num_index1
end
%%找到矩阵缺失值并删除所在行和列
load('数据.mat')
index=isnan(data_nan)
index1=find(sum(index')~=0)
data_nan1=data_nan
data_nan1(index1,:)=[]
%%找出不同表中同一类数据
%%将文字标签修改为数字标签
data_abc=data_table3(:,2)
data_abc_num=table2arry(data_abc)
data_tongji=tabulate(data_abc_num)
for i=1:size(data_tomgji,1)
dianli_str{1,i}=data_tongji{i,1}
end
data_shuju=zeros(length(data_abc_num),1)
for NN=1:length(dianli_str)
 idx=find(ismember(data_abc_num,dianli_str{1,NN}))
 data_shuju(idx)=NN
 end
 for i=1:size(data_tongji,1)
 A(i)={find(data_shuju==i)};
 data_table3(A{1,3},:)
 %%对cell里的数据进行标准化处理
 std_data=zscore(data1)%%列标准化
 std_data1=mapminmax(data1',0,1)%%行标准化