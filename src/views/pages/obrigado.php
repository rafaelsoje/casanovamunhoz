<?=$render('header', ['title' => 'Obrigado']);?>
<div class="alert alert-success obrigado" role="alert">Agradecemos por sua colaboração!</div>

<div class="image">
    <img src="<?=$base;?>/assets/images/girassol.jpeg" class="img-fluid" alt="Imagem responsiva">
</div>

<script type="text/javascript">   
    setTimeout(function(){
        window.location.href = '<?=$base;?>';
    },5000);
</script>

<!--<?=$render('footer')?>-->