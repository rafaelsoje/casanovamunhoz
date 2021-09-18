<?=$render('header', ['title' => 'Erro']);?>
<div class="alert alert-danger obrigado" role="alert">Algo deu errado parsa. Vamos voltar e começar de novo.</div>

<div class="image">
    <img src="<?=$base;?>/assets/images/loader.gif" class="img-fluid" alt="Imagem responsiva">
</div>

<script type="text/javascript">   
    setTimeout(function(){
        window.location.href = '<?=$base;?>';
    },10000);
</script>

<?=$render('footer')?>