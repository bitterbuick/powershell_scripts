$file1 = import-csv -Path "C:\Users\AdamFreeman\Desktop\scripts\block.csv"
$file2 = import-csv -Path "C:\Users\AdamFreeman\Desktop\scripts\not_blocked.csv"
Compare-Object $file1 $file2 -property "email" -IncludeEqual | export-csv -Path "C:\Users\AdamFreeman\Downloads\results.csv"