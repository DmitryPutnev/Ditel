<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Отели</h1>
    <br>
    <table class="table table-hover table-dark">
        <tr>
            <th>Наименование</th>
            <th>Описание</th>
            <th>Цена</th>
            <th>Количесво</th>
            <th>Удалить</th>
        </tr>
        <#list products as product>
            <tr>
                <th><a href="/product/${product.id}">${product.title}</th>
                <th>${product.description}</th>
                <th>${product.price}</th>
                <th>${product.countRooms}</th>
                <th>
                    <div class="card-top">
                        <form action="/profile/products/remove/${product.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                </th>
            </tr>
        <#else>
            <h3>no products</h3>
        </#list>
    </table>


</@t.template>