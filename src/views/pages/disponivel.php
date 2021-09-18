<?=$render('header', ['title' => 'Disponivel']);?>

    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Chá de casa nova</h5>

        <a class="btn btn-secondary topo" href="<?=$base;?>/admin">Todos</a>
        <a class="btn btn-secondary topo" href="<?=$base;?>/admin/reservado">Reservados</a>
        <a class="btn btn-outline-secondary" href="<?=$base;?>/admin/sair">Sair</a>
    </div>
    <div class="container">
        <?php if(isset($list) && !empty($list)):?>

<!--        <form action="--><?//=$base;?><!--/admin" method="post">-->
<!---->
<!--            --><?php //if(isset($success)):?>
<!--                <div class="alert alert-success" role="alert">-->
<!--                    --><?//=$success;?>
<!--                </div>-->
<!--                --><?php //$success = '';?>
<!--            --><?php //endif; ?>
<!---->
<!--            <div class="form-group admin">-->
<!--                <input type="text" class="form-control" name="produto" placeholder="Nome do produto" required>-->
<!--            </div>-->
<!--            <div class="form-group admin">-->
<!--                <input type="text" class="form-control" name="marca" placeholder="Marca do produto">-->
<!--            </div>-->
<!--            <div class="form-group admin">-->
<!--                <input type="text" class="form-control" name="link" placeholder="Link do loja">-->
<!--            </div>-->
<!--            <input type="submit" class="btn btn-secondary btn-lg btn-block btn-sm" value="Incluir produto"/>-->
<!--        </form>-->
<!--        -->

        <table class="table table-hover">
            <thead>
            <tr>

                <th scope="col">Produto</th>
                <!-- <th scope="col">Marca</th> -->
                <th scope="col">Sugestão</th>
                <th scope="col">Status</th>
<!--                <th scope="col">data</th>-->
            </tr>
            </thead>

                <?php foreach ($list as $item):?>
                    <tbody>
                    <tr>
                        <td ><?=$item['name'];?></td>
                        <!-- <td><?=$item['brand'];?></td> -->
                        <td>
                            <?php $link = (!empty($item['link'])) ? $item['link'] : '-';?>
                            <a href="<?=$link;?>" target="_blank"><?=$link?></a>
                        </td>
                        <?php $status = ($item['status'] == 0)? 'livre' : 'reservado' ;?>
                        <td><?=$status;?></td>
<!--                        <td >-->
<!--                            <a href="--><?//=$base;?><!--/admin/edit/--><?//=$item['id'];?><!--"><button type="button" class="btn btn-outline-warning btn-sm">Editar</button></a>-->
<!--                            <a href="--><?//=$base?><!--/admin/delete/--><?//=$item['id'];?><!--" onclick="return confirm('Deseja mesmo excluir esse item?');" ><button type="button" class="btn btn-outline-danger btn-sm">Excluir</button></a>-->
<!--                        </td>-->
                    </tr>
                    </tbody>
                <?php endforeach;?>
            <?php else:?>
                <!-- Começa o conteúdo da página -->
                <main role="main" class="flex-shrink-0">
                    <div class="container">
                        <h1 class="mt-5">Não há itens a serem exibidos</h1>                        
                    </div>
                </main>
            <?php endif;?>
        </table>
    </div>
<!--<?=$render('footer')?>-->