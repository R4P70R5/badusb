powershell -w h Add-Type -AssemblyName *m.W*s.F*s;

#wait for mouse movement
$w=[Windows.Forms.Cursor];
$p=$w::Position.X;
while(1){if($w::Position.X-ne$p){break}else{Sleep 1}};

#disable touchpad
$t=(Get-PnpDevice -class HIDClass -FriendlyName "*touch pad*").InstanceId;
Disable-PnpDevice -InstanceId "$t" -Confirm:$false;

#play video, no ads
saps https://youtu.be/2qBlE2-WL60?si=2UyBd65_Eb7CdxS2;
sleep 5;
$o=New-Object -ComObject WScript.Shell;
$o.SendKeys('f');

#wait 30 seconds before enable touchpad
sleep 1;
Enable-PnpDevice -InstanceId "$t" -Confirm:$false;
