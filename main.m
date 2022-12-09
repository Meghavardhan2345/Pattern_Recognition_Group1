clc
close all
clear 
g='train.txt';
x1=importdata(g)
size(x1)
  [r,c]=size(x1);
  mean=(zeros(c-1));
  vari=(zeros(c-1));
  rep=(zeros((r)));
  for i=1:r
      for j=1:c-1
          mean(j)=mean(j)+x1(i,j);
      end
     
  end
  for i=1:c-1
      mean(i)=mean(i)/r;
  end
  for i=1:r
       
          for j=1:13
             vari(j)=(mean(j)-x1(i,j))^2 + vari(j);              
          end                    
  end
  
   for i=1:c-1
      vari(i)=vari(i)/r;
   end
  count=0;
  for i=1:c-1
      if vari(i)>=40
          count=count+1;
      end
  end
   x2=zeros(r,count+1);
   tarva=zeros(r,1);
   for i=1:r
       m=0;
       for j=1:c-1
          if vari(j)>=40 
              m=m+1;
              x2(i,m)=x1(i,j);
          end
       end
       x2(i,count+1)=x1(i,c);
       tarva(i,1)=x1(i,c);
   end
idx = fscmrmr(x1(1:2000,1:13),tarva(1:2000,1));

acc=zeros(12,2);
accuracy1=zeros(13,1);
accuracy2=zeros(13,1);
accuracy3=zeros(13,1);
for i=1:13
    xexper=zeros(2000,i+1);
   
    for j=1:r
        for tr=1:i
            xexper(j,tr)=x1(j,idx(tr));
        end
        xexper(j,i+1)=x1(j,c);
    end
   
    
     %acc(max,1)=trainClassifier(xexper(1:2000,1:i),xexper(1:2000,i+1),tarva);
      [acc1,accuracy1(i,1)]=trainClassifier(xexper(1:2000,1:i+1),i);
      [acc2,accuracy2(i,1)]=train2Classifier(xexper(1:2000,1:i+1),i);
      [acc3,accuracy3(i,1)]=train3Classifier(xexper(1:2000,1:i+1),i);
      accuracy1(i)=accuracy1(i)*100;
      sprintf("attributes considered")
       sprintf("%d,", idx(1:i))
       sprintf("accuracy for quadratic SVM = %d", accuracy1(i))
       accuracy2(i)=accuracy2(i)*100;
         sprintf("accuracy for Weighted KNN = %d", accuracy2(i))
         %accuracy3(i)=accuracy3(i)*100; 
      accuracy3(i)=accuracy3(i)*100;
         sprintf("accuracy for Linear discriminant = %d", accuracy3(i))
end
max=1:13;
%for i=1:13
   %accuracy1(i)=accuracy1(i)*100;
   %disp(accuracy1(i))
%%end
figure(1)
plot(max,accuracy1,'LineWidth',3.0)
title("SVM method")
ylabel("Acurracy (%) ");
xlabel(" No of attributes considered");
grid on
figure(2)
plot(max,accuracy2,'r','LineWidth',3.0)
title("KNN method")
ylabel("Acurracy (%) ");
xlabel(" No of attributes considered");
grid on
figure(3)
plot(max,accuracy3,'y','LineWidth',3.0)
title("Linear Discriminant method")
ylabel("Acurracy (%) ");
xlabel(" No of attributes considered");
grid on

figure(4)
%plot(max,accuracy1)
hold on
plot(max,accuracy1,'DisplayName','SVM','LineWidth',3.0)

plot(max,accuracy2,'DisplayName','KNN','LineWidth',3.0)
plot(max,accuracy3,'DisplayName','L-D','LineWidth',2.0)
legend
title("Comparision plot of diff methods")
ylabel("Acurracy (%) ");
xlabel(" No of attributes considered");
grid on
hold off
accforheat=zeros(13,3);
for i=1:39
    if i<=13
        accforheat(i,1)=accuracy1(i,1);
    end
    if (13<i)&&(i<=26)
         accforheat(i-13,2)=accuracy2(i-13,1);
    end
    if (26<i)&&(i<=39)
         accforheat(i-26,3)=accuracy3(i-26,1);
    end
end


figure(5)
heatmap(accforheat)
title("heat map of SVM,KNN and Linear discriminant model")
for i=1:13
    maco=0;
        if accuracy1(i)>=accuracy2(i)
            maco=1;
            if  accuracy3(i)>=accuracy1(i)
                maco=3;
            end
        end
         if  accuracy1(i)<=accuracy2(i)
            maco=2;
            if accuracy3(i)>=accuracy2(i)
                maco=3;
            end
         end
         if maco==1
             sprintf(" SVM is the  better classification model if %d attributes are given",i)
         end
         
          if maco==2
             sprintf(" KNN is the  better classification model if %d attributes are given",i)
          end
         
           if maco==3
             sprintf(" Linear discriminant is the  better classification model if %d attributes are given",i)
           end
end
 
