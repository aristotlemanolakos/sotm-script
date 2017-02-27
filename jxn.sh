#!/bin/bash
# AUTOMATICALLY CREATE NEW SOCK TEMPLATE

# NEAT-O COLORS!!!!!
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # NO COLOR

function runTemplate {
  # MAKE PROJECT FOLDER
  mkdir $clientName && cd $clientName

  # FOLDER: Final Files
  mkdir -pv "Final Files"

  # FOLDER: To Client
  mkdir -pv "To Client"

  # FOLDER: X_AI Process Files
  aipf=" AI Process Files"
  mkdir -pv "$clientName$aipf"
  # COPY: FILES
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
  # COPY: FILES
  cd ./"$clientName$inv"
  cp ~/scripts/jxn/X/X_Invoices/Sock\ Club\ EnterprisesLLC_ACH\ Transfer.pdf Sock\ Club\ EnterprisesLLC_ACH\ Transfer.pdf
  cp ~/scripts/jxn/X/X_Invoices/W9_SOCK\ CLUB.pdf W9_SOCK\ CLUB.pdf
  cd ..

  # FOLDER: X_PS Process
  pspf=" PS Process Files"
  mkdir -pv "$clientName$pspf"
  # COPY: FILES
  cd ./"$clientName$pspf"
  tempVar3="_CustomSocks.psd"
  cp ~/scripts/jxn/X/X_PS\ Process\ Files/X_CustomSocks.psd $clientName$tempVar3
  cd ..

  # FOLDER: X_Ryders
  ryder=" Ryders"
  mkdir -pv "$clientName$ryder"
  # COPY: FILES
  cd ./"$clientName$ryder"
  cp ~/scripts/jxn/X/X_Ryders/Sock_Club_PackagingTemplate_062316_.ai Sock_Club_PackagingTemplate_062316_.ai
  tempVar2="_CustomPackaging.ai"
  cp ~/scripts/jxn/X/X_Ryders/X_CustomPackaging.ai $clientName$tempVar2
  cd .. 

  # COMPLETE
  ls *
  echo -n -e "${GREEN}Finished!${NC}\n"
  cd ..
  exit
}

COND=false
while [ !$COND ]; do
  # ASK: CLIENT NAME
  echo -n -e "${GREEN}Enter client name:${NC} "
  read clientName
  echo -e "${GREEN}You entered:${NC} $clientName"

  # CHECK: USER INPUT
  read -p "$(echo -e "${GREEN}Is this correct? (Y/n/cancel):${NC}") " CONDITION
  if [ "$CONDITION" == "Y" ]; then
    runTemplate
  elif [ "$CONDITION" == "n" ]; then
    COND=false
  elif [ "$CONDITION" == "cancel" ]; then 
    exit
  fi
done