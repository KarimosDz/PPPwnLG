echo "PPLGPWN - Designed for lgwebtvs! Ported by Kodeine, with luv <3"
echo "Updated by llbranco"
interface=eth0
firmware=960
stage1=/media/internal/downloads/PPLGPwn-main/stage1_960.bin
stage2=/media/internal/downloads/PPLGPwn-main/stage2_960.bin
cd /media/internal/downloads/PPLGPwn-main
chmod +x ./pppwn

# send nofification
luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPPLGwn!</b><br/>Starting PS4 Jailbreak. <br/>by: llbranco, kodeine, & contributors"}'

./pppwn --interface $interface --fw $firmware --stage1 $stage1 --stage2 $stage2 --auto-retry

luna-send -f -n 1 luna://com.webos.notification/createToast '{"message": "<b>PPPLGwn!</b><br/>PS4 Pwned. <br/>by: llbranco, kodeine, & contributors"}'
