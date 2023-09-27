<?php
  $prix_ht = 50;
  $tva = 20;
  $prix_ttc = $prix_ht+($prix_ht*$tva/100);

  echo $prix_ttc;
