#!/bin/bash
# AUTOMATICALLY CREATE NEW SOCK TEMPLATE

# NEAT-O COLORS!!!!!
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # NO COLOR


echo -n -e "${GREEN}Enter client name:${NC} "
read clientName
echo -e "${GREEN}You entered:${NC} $clientName"


# MAKE PROJECT FOLDER
mkdir $clientName && cd $clientName
echo "Directory created..."

# FOLDER: Final Files
mkdir -pv "Final Files"

# FOLDER: To Client
mkdir -pv "To Client"

# FOLDER: X_AI Process Files
aipf=" AI Process Files"
mkdir -pv "$clientName$aipf"
cd ./"$clientName$aipf"
tempVar1="_CustomSocks.ai"
cp ~/scripts/jxn/X/X_AI\ Process\ Files/X_CustomSocks.ai $clientName$tempVar1
cd ..

# FOLDER: X_From Client
fClient=" From Client"
mkdir -pv "$clientName$fClient"

# FOLDER: X_Images
img=" Images"
mkdir -pv "$clientName$img"

# FOLDER: X_Invoices
inv=" Invoices"
mkdir -pv "$clientName$inv"
cd ./"$clientName$inv"
cp ~/scripts/jxn/X/X_Invoices/Sock\ Club\ EnterprisesLLC_ACH\ Transfer.pdf Sock\ Club\ EnterprisesLLC_ACH\ Transfer.pdf
cp ~/scripts/jxn/X/X_Invoices/W9_SOCK\ CLUB.pdf W9_SOCK\ CLUB.pdf
cd ..

# FOLDER: X_PS Process
pspf=" PS Process Files"
mkdir -pv "$clientName$pspf"
cd ./"$clientName$pspf"
tempVar3="_CustomSocks.psd"
cp ~/scripts/jxn/X/X_PS\ Process\ Files/X_CustomSocks.psd $clientName$tempVar3
cd ..

# FOLDER: X_Ryders
ryder=" Ryders"
mkdir -pv "$clientName$ryder"
cd ./"$clientName$ryder"
cp ~/scripts/jxn/X/X_Ryders/Sock_Club_PackagingTemplate_062316_.ai Sock_Club_PackagingTemplate_062316_.ai
tempVar2="_CustomPackaging.ai"
cp ~/scripts/jxn/X/X_Ryders/X_CustomPackaging.ai $clientName$tempVar2
cd .. 


echo "Finished!"

#pwd=`pwd`
#echo $pwd



