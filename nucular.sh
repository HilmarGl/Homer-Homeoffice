#!/bin/bash
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

start=${1:-"start"}
jumpto $start

start:
clear
echo ""
echo -e "       \e[92mWELCOME TO THE"
echo -e "       \e[92mSPRINGFIELD NUCULAR POWER PLANT"
echo -e "       \e[92m"
sleep 1
echo -e "       \e[92mLOGGING IN"
sleep 1
echo -e -n "       \e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1
echo -e -n "\e[92m."
sleep 1


echo -e "       \e[92m"
sleep 2
echo -e "       \e[92mDEAR MR. SIMPSON."
sleep 3

clear
echo ""
echo -e "	\e[92mTO START"
echo -e "	\e[92mPRESS ANY KEY"
read -n 1 -s -r -p ""
sleep 1
clear
sleep 1
jumpto coretemp


coretemp:
echo ""
echo -e "	\e[25m\e[92mCHECK CORE TEMPERATURE?"
echo ""
echo -e "	\e[92m\e[5mYES/NO"

read -r -p "" response

case "$response" in
    [yY][eE][sS]|[yY])
	sleep 1
	clear
	echo ""
	echo ""
        echo -e "	\e[25m\e[92mCORE TEMPERATURE NORMAL"
sleep 5
jumpto vent
        ;;
    *)
clear
jumpto coretemp	
        ;;
esac



vent:
clear
sleep 1
echo ""
echo -e "	\e[25m\e[92mVENT RADIOACTIVE GAS?"
echo ""
echo -e "	\e[92m\e[5mYES/NO"
read -r -p "" response
case "$response" in
    [yY][eE][sS]|[yY])
        sleep 1
        clear
        echo ""
        echo ""
	echo -e "	\e[25m\e[92mEXPLOSION PREVENTED"
sleep 3
echo -e "\e[25m\e[33m"
cat << "EOF"
               ___  ______
             .'/,-Y"      "~-.
             1.Y              ^.
             /\                _\_
            i             ___/"   "\
            |           /"   "\   o !
            1          ]     o !__./
             \ _  _     \.___./    "~\
              X \/  \            ___./
             ( \ ___.    _..--~~"   ~`-.
              ` Z,--    /               \
                \__.   (   /       ______)
                  \    1  /-----~~" /
                   Y    \          /
                   |     "x______.^
                   |            \
                   j             Y
EOF
sleep 5

        ;;
    *)
	clear
	echo ""
        echo -e "	\e[25m\e[92mVENTING PREVENTS EXPLOSION"
        sleep 3
echo -e "\e[25m\e[33m"
cat << "EOF"
     ,---.
   ,.'-.   \
  ( ( ,'"""""-.
  `,X          `.
  /` `           `._
 (            ,   ,_\
 |          ,---.,'o `.
 |         / o   \     )
  \ ,.    (      .____,
   \| \    \____,'     \
 '`'\  \        _,____,'
 \  ,--      ,-'     \
   ( C     ,'         \
    `--'  .'           |
      |   |         .O |
    __|    \        ,-'_
   / `L     `._  _,'  ' `.
  /    `--.._  `',.   _\  `
  `-.       /\  | `. ( ,\  \
 _/  `-._  /  \ |--'  (     \
'  `-.   `'    \/\`.   `.    )
      \           \ `.  |    |
EOF
sleep 5


	jumpto vent	
        ;;
esac
echo -e "\e[0m"



sleep 1

