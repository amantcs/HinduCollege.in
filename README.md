# HinduCollege.in
Hindu College Website Project

To import db dacpab file local db, please run below command:

.\SqlPackage.exe /Action:Import /SourceFile:"c:\temp\your.bacpac" /TargetConnectionString:"Data Source=(localdb)\v11.0;Initial Catalog=devdb; Integrated Security=true;"

Source:
https://stackoverflow.com/questions/27850337/how-to-import-azure-sql-backup-bacpac-to-localdb-using-visual-studio
