<aside class="main-sidebar">

    <section class="sidebar">

        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>User</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],
                    ['label' => 'Distributors', 'icon' => 'dashboard', 'url' => ['/cabinet/distributors']],
                    ['label' => 'Link', 'icon' => 'dashboard', 'url' => ['/cabinet/distributors-and-links']],
                    ['label' => 'Products', 'icon' => 'cart-plus', 'url' => ['/cabinet/products']],
                    ['label' => 'Product Photos', 'icon' => 'dashboard', 'url' => ['/cabinet/product-photos']],
                ],
            ]
        ) ?>

    </section>

</aside>
