<?=$render('header', ['title' => 'Chá de casa nova'])?>

    <main role="main">
    <!-- Principal jumbotron, para a principal mensagem de marketing ou call to action -->
    <div class="">
        
        <div class="banner">

        <?php if(isset($flash) && !empty($flash)):?>
            <div class="alert alert-danger" role="alert">
                <?=$flash;?>
                <?php $flash = '';?>
            </div>            
        <?php endif;?>

            <h1 class="display-3 container">A vida inventa!</h1>
            <p class="text-justify container">O correr da vida embrulha tudo, a vida é assim: esquenta e esfria, aperta e daí afrouxa, sossega e depois desinquieta. O que ela quer da gente é coragem. [...] O mais importante e bonito, do mundo, é isto: que as pessoas não estão sempre iguais, ainda não foram terminadas, mas que elas vão sempre mudando. Afinam ou desafinam. Verdade maior. Viver é muito perigoso; e não é não. Nem sei explicar estas coisas. (Guimaraes Rosa).</p>
            <!-- <img src="assets/images/banner.jpg"/> -->
<!--            <p><a class="btn btn-primary btn-lg" href="#" role="button">Saiba mais &raquo;</a></p>-->
        </div>
    </div>
    </main>

    <!-- Começa o conteúdo da página -->
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <h1 class="mt-5">Chá de Lar novo!</h1>
            <p class="text-justify">
                Meus amores, vocês que me conhecem, acompanham e torcem por mim, sabem bem que um dos meus sonhos era ter um espaço meu, um cantinho de muito amor, amizade e cervejinhas para brindar a vida. Pois bem, esse cantinho se materializou em um apartamento pequeno e aconchegante, cheio de esperança e sonhos, que serão construídos com vocês minha família (sanguínea e de vida). Apesar da vida ter me concedido a graça e benção, o momento atual inviabiliza a nossa amada aglomeração e impõe restrições. Sendo assim decidi fazer o chá de casa nova dentro dos moldes virtuais, meu mozão criou um site que possui uma lista com os itens que ainda faltam para esse novo lar (quem já passou por isso, sabe como esse momento além de especial é muito custoso).
                </p>
                
                <p class="text-justify">
                    Deixei na página de confirmação do presente os dados do pix e meu novo endereço, para vocês escolherem a melhor forma do presente chegar aqui. (Aproveitem e guardem o endereço, assim que possível, vamos nos aglomerar em um Open House regado de amor, petiscos e bebidas!).
                </p>
                <p class="text-justify">
                    Haaaaa além dos presentes, quem quiser e puder contribuir com a vaquinha para eu comprar uma TV, fique à vontade.
                </p>

                <p class="text-justify"><span class="instrucao">Vamos as Instruções: </span> Selecione um ou mais itens. Preencha seus dados (nome e e-mail) e click em enviar!</P>
                <p class="text-justify"><span class="instrucao">Atenção: </span> A lista estará disponível até dia 16/09 e os presentes podem ser entregues até o fim de Setembro.</P>
                
                <p>Obrigada meus amores e nos vemos assim que todos estiverem vacinados e imunizados! Raios de Sol e Luz a todos!</p>
            </p>
            
        </div>
    </main>

<div class="container">
    <form action="<?=$base;?>/" method="post">

    <div class="form-group">
        <label for="nome">Seu nome</label>
        <input type="text" class="form-control" name="name" aria-describedby="emailHelp" placeholder="Digite seu nome" required>
    </div>
    <div class="form-group">
        <label for="email">Endereço de email</label>
        <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Digite seu email" required>
        <small id="emailhome" class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguém.</small>
    </div>
<?php if(isset($list) && !empty($list)):?>
        <table class="table table-hover">
            <thead>
              <!--<tr>-->
              <!--  <th scope="col"></th>-->
              <!--  <th scope="col" colspan="2">Produto</th>                -->
                <!--<th scope="col">Sugestão</th>-->
              <!--</tr>-->
            </thead>

                <?php foreach ($list as $item):?>
                    <tbody>
                      <tr>
                        <th scope="row"><input class="form-check-input" type="checkbox" id="<?=$item['id'];?>" name="check[]" value="<?=$item['id'];?>"></th>
                        <td colspan="2"><?=$item['name'];?></td>                        
                          <!--<?php if(!empty($item['link'])):?>-->
                          <!--      <td>-->
                          <!--          <a href="<?=$item['link'];?>" target="_blank"><?=$item['link'];?></a>-->
                          <!--      </td>-->
                          <!--        <?php else:?>-->
                          <!--      <td>-</td>-->
                          <!--<?php endif;?>-->
                      </tr>
                    </tbody>
                <?php endforeach;?>


          </table>

            <input type="submit" class="btn btn-secondary btn-lg btn-block botao-home" value="Enviar">
    <?php else:?>
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <h1 class="mt-5">Não há itens a serem exibidos</h1>            
        </div>
    </main>
    <?php endif;?>


    </form>

</div>
<?=$render('footer');?>