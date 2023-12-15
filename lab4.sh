#region 1
touch file.txt
chmod 744 file.txt
#endregion

#region 2
chmod a+x file.txt
#endregion

#region 3
chmod g-x file.txt
chmod o-x file.txt
#endregion

#region 4
chmod 600 file.txt #1 եղանակ
chmod a-x file.txt
chmod a-w file.txt
chmod a-r file.txt
chmod u+r file.txt
chmod u+w file.txt
#endregion

#region 5
mkdir dir
chmod -R 666
cd dir #բերում է հետևյալ հաղորդագրությունը "Permission denied": չկա իրականացնելու իրավունք դրա համար պետք է փոխել իրավունքները
chmod -R 777
cd dir
touch file.txt #ֆայլը հաջողությամբ կստեղծվի
#endregion

#region 6
touch file1.txt
touch file2.txt
cd ~
chmod -R 766 dir
#endregion

#region 7
umask 0112
#endregion

#region 8
umask 0011
umask 0022
#endregion

#region 9

#endregion

#region 10

#endregion