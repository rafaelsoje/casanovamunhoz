<?=$render('header', ['title' => 'Confirmação'])?>


<!-- Começa o conteúdo da página -->
<div class="container">
<main role="main" class="flex-shrink-0">
    <form action="<?=$base;?>/confirma" method="post">
        <input type="hidden" name="name" value="<?=$name;?>">
        <input type="hidden" name="email" value="<?=$email;?>">
        <input type="hidden" name="check[]">
        <div class="container">
            <h1 class="mt-5">Ola, <?=$name?></h1>
            <p class="lead text-justify">Obrigada pela sua participação, você pode enviar o presente para minha casinha</p>
            <span class="instrucao">...</span>.
              ou ainda podemos combinar a entrega através do Whatsapp.</p>
              <p class="lead text-justify">Clica ai no botão confirmar e receba um e-mail com as informações do item selecionado.</p>            
        </div>

        
        <?php foreach ($check as $item):?>
            <input type="hidden" name="item[]" value="<?=$item['id'];?>" />            
            <div class="list-group">            
            <a href="#" class="list-group-item list-group-item-action"><?=$item['name']. ' '.$item['brand'];?></a>            
            </div>
        <?php endforeach;?> 

        <input type="submit" class="btn btn-secondary btn-lg btn-block" value="Confirmar">
    </form>
    <div class="loading">
        <img src="assets/images/loading.gif">
    </div>
    <div class="margin"></div>
</main>
</div>
<script>
    let btn = document.querySelector('.btn-block');
    let loading = document.querySelector('.loading');
    btn.addEventListener('click', function() {

        // if(loading.style.display === 'block') {
        //     container.style.display = 'none';
        // } else {
            loading.style.display = 'block';            
        // }
    });
</script>
<!--<?=$render('footer')?>-->
