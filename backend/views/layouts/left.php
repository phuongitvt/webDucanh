<?php
use common\modules\admin\components\MenuHelper;
?>

<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?php
        $default_items = [
            [
                'label' => Yii::t('app','Home'),
                'url'   => ['/site/index'],
                'icon'  => 'fa fa-home',
            ],
        ];
        $callback      = function($menu)
        {
            //$data = eval($menu['data']);
            return [
                'label' => $menu['name'],
                'url'   => MenuHelper::parseRoute($menu['route']),
                //'option' => $data,
                'icon'  => $menu['data'],
                'items' => $menu['children'],
            ];
        };
        $items         = MenuHelper::getAssignedMenu(Yii::$app->user->id,null,$callback);
        ?>


        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => array_merge($default_items,$items),
            ]
        ) ?>

    </section>

</aside>
