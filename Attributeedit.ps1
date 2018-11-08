import-module ActiveDirectory
$users = import-csv -path C:\Users\ajp13577\Desktop\Book1.csv
foreach ($user in $users) {           
#Search in specified OU and Update existing attributes            
Get-ADUser -Filter "samaccountname -eq '$($user.name)'"  -Properties *  | select description , emailaddress
}

#| select description , emailaddress
#set-aduser -EmailAddress $user.mail -Description $user.Description
#|set-aduser  -replace @{othertelephone= $($user.number)}
#|select othertelephone