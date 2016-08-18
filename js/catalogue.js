/**
 * Created by Ayoub on 18/08/2016.
 */
$(document).ready(function(){
    chargerCategories();
}
);

function chargerCategories(){
    $.get("categories.php",function(reponse){
        $("#divCat").html(reponse);
    $("#catSelect").change(function(){
       chargerProduits($(this).val());
    });
    });

}
function chargerProduits(idCategorie){

    $.get("produits.php?idCat="+idCategorie,function(reponse){
        $("#divPrd").html(reponse);
    });

}