<?=$render('header', ['title' => 'Editar produto']);?>

    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Chá de casa nova</h5>

        <a class="btn btn-secondary topo" href="<?=$base;?>/admin/disponivel">Disponíveis</a>
        <a class="btn btn-secondary topo" href="<?=$base;?>/admin/reservado">Reservados</a>
        <a class="btn btn-outline-secondary" href="<?=$base;?>/admin/sair">Sair</a>
    </div>
    <div class="container">

        <form action="<?=$base;?>/admin/edit" method="post">

            <?php if(isset($success)):?>
                <div class="alert alert-success" role="alert">
                    <?=$success;?>
                </div>
                <?php $success = '';?>
            <?php endif; ?>

            <div class="form-group admin">
                <input type="hidden" class="form-control" name="id"value="<?=$product['id'];?>">
                <input type="text" class="form-control" name="name" placeholder="Nome do produto" value="<?=$product['name'];?>" required>
            </div>
            <div class="form-group admin">
                <!-- <input type="text" class="form-control" name="marca" placeholder="Marca do produto" value="<?=$product['brand'];?>"> -->
            </div>
            <div class="form-group admin">
                <input type="text" class="form-control" name="link" placeholder="Link do loja" value="<?=$product['link'];?>">
            </div>

            <input type="submit" class="btn btn-secondary btn-lg btn-block btn-sm" value="Alterar produto"/>
        </form>


    </div>
<!--<?=$render('footer')?>-->