<?php require_once("connexion.php") ?>
<?php
if(isset($_GET['idCat']))
$idCat=$_GET['idCat'];
else
    $idCat=1;
$req="select * from produits where ID_CAT=$idCat";
$rs=mysql_query($req);
?>
<table>
    <tr>
        <th>ID</th><th>DESIGNATION</th><th>PRIX</th><th>QTE</th><th>PROMO</th>
    </tr>
    <tr>
        <?php while($prd=mysql_fetch_assoc($rs)){ ?>
        <td><?php echo($prd["ID_PROD"]) ?></td>
        <td><?php echo($prd["DESIGNATION"]) ?></td>
        <td><?php echo($prd["PRIX"]) ?></td>
        <td><?php echo($prd["QUANTITE"]) ?></td>
        <td><?php echo($prd["PROMO"]) ?></td>
    </tr>

    <?php } ?>
</table>