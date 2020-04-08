ls;
printf %s "Hello World" ;
mkdir new_dir;
rm new_dir  ;                     
rmdir new_dir  ;                      
cp lorem/sed.txt lorem-copy;
cp lorem/at.txt lorem-copy ; cp lorem/lorem.txt lorem-copy;
cat lorem/sed.txt;
cat lorem/at.txt ; cat lorem/lorem.txtcat;
cat lorem-copy/sed.txt | head -n3;
tail -3 lorem-copy/sed.txt ;
echo ' Homo homini lupus.' >> lorem-copy/sed.txt;
tail -3 lorem-copy/sed.txt ;
sed -i '' 's/et/ET/g' lorem-copy/at.txt ;
last | grep "logged in";
pwd;
ls lorem | grep 'txt';
cat lorem/sed.txt | wc -l;
ls -R lorem* | grep "lorem"| wc -l;
cat lorem/at.txt | grep 'et' ;
tr ' ' '\n' < lorem/at.txt | grep 'et' | wc -l ;
cat lorem-copy/*.txt | tr ' ' '\n'| grep 'et' | wc -l ;


export name='Silvia';
echo $name  ;
mkdir 'Silvia';
rmdir 'Silvia';
ls lorem/ | awk '$(NF+1)=length-4';


FILES=$(ls lorem)
for file in $FILES
do
   num=$(echo $file | wc -m)
    echo $file  has $num characters length
done;

top;
ps -ejH;
ps axjf;
ps -ef;


echo "alias ll='ls -l" >> ~/.bashrc;
echo "alias rm='rm -i'" >> ~/.bashrc;
echo "alias cs='cd;ls'" >> ~/.bashrc;

tar -czf lorem-compressed.tar.gz lorem lorem-copy;
tar -xvf lorem-compressed.tar.gz;