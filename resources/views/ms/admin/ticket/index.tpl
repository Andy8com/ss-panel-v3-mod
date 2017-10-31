{extends file='admin/base.tpl'}{block name='main'}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">工单</h1>
            </div>
        </div>
        <div class="container">
            <div class="col-lg-12 col-sm-12">
                <section class="content-inner margin-top-no">

                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <p>系统中的工单</p>
                                <p>显示表项:
                                    {include file='table/checkbox.tpl'}
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        {include file='table/table.tpl'}
                    </div>


            </div>


        </div>
    </main>
{/block}{block name='script'}
    <script>
        {include file='table/js_1.tpl'}
        $(document).ready(function () {
            table = $('#table_tickets').DataTable({
                ajax: 'ticket/ajax',
                processing: true,
                serverSide: true,
                order: [[1, 'desc']]
            })

            {include file='table/js_2.tpl'}
        });
    </script>
{/block}