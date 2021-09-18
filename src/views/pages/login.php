<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="icon" href="<?=$base;?>/assets/images/girassol.ico">

    <title><?=$title?></title>

    <!-- Principal CSS do Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/login.css" rel="stylesheet">

    <!-- Estilos customizados para esse template -->
    <link href="signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="login" method="post">
      <img class="mb-4" src="assets/images/logo.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Faça login</h1>
      <label for="inputEmail" class="sr-only">Endereço de email</label>
      <input type="email" class="form-control" placeholder="Seu email" name="email" required autofocus>
      <label for="inputPassword" class="sr-only">Senha</label>
      <input type="password" class="form-control" name="password" placeholder="Senha" required>
      <div class="checkbox mb-3">
      </div>
      <button class="btn btn-lg btn-secondary btn-block" type="submit">Login</button>
        <?php if(isset($flash)):?>
            <div class="alert alert-danger" role="alert">
                <?=$flash;?>
            </div>
        <?php $flash = '';?>
        <?php endif;?>
    </form>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
