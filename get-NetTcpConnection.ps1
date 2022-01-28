#TCP 포트 확인 
Get-NetTCPConnection  

#Listen 상태인 TCP 포트 확인 
Get-NetTCPConnection -State Listen 

#필요한 Property 만 보기 
Get-NetTCPConnection -State Listen | Select-Object -Property LocalPort,State

#Localport로 sort하기
Get-NetTCPConnection -State Listen | Select-Object -Property LocalPort,State | Sort-Object Localport

#특정 대상 ip 주소에 대해

$remoteip = "0.0.0.0"
$connections = Get-NetTCPConnection
Foreach($i in $connections){
    if ($i.RemoteAddress -eq $remoteip)
    {
        $i
    }
}
![image](https://user-images.githubusercontent.com/45279355/151465305-925b5a7e-85ad-4621-87e2-c805cfddd4d0.png)


