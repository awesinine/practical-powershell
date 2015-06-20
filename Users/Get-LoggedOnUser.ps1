##   		Get-LoggedOnUser
##   parameters => 	Hostname of a computer bound to your domain
##   method 	=> 	Checks the owner of the explorer.exe process
##   returns 	=> 	Returns the name of the owner of the explorer.exe process
##   example	=>	Get-LoggedOnUser computerXXX


Function Get-LoggedOnUser{
param(
    [Parameter(Mandatory=$true, 
               ValueFromPipeline=$true,
               ValueFromPipelineByPropertyName=$true,  
               Position=0)]
    [Alias('ComputerName')]
    [string[]]$Name,
    [Parameter(Mandatory=$false, 
               Position=1)]
    [System.Management.Automation.PSCredential]$Credential
)
    BEGIN{
    }

    PROCESS{
    $wmi = @{
        'Class'        = 'Win32_Process';
        'Filter'       = 'Name = ''explorer.exe''';
        'ComputerName' = $Name
    }
    if($Credential){
        $wmi.Add('Credential',$Credential)
    }

        Get-WmiObject @wmi | %{
            [string]$user = $_.GetOwner().User
            Write-Output $user 
        }
    }

    END{

   
    }
}
