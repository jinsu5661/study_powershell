#TCP 포트 확인 
Get-NetTCPConnection  

#Listen 상태인 TCP 포트 확인 
Get-NetTCPConnection -State Listen 

#필요한 Property 만 보기 
Get-NetTCPConnection -State Listen | Select-Object -Property LocalPort,State

#Localport로 sort하기
Get-NetTCPConnection -State Listen | Select-Object -Property LocalPort,State | Sort-Object Localport


