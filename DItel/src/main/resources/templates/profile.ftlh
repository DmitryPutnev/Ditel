<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <#if user.isAdmin()>
            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <#if user.isUser()>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/profile/products">
            Моя бронь
        </a>
        </#if>
        <#if user.isAdmin()>
        <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
           data-toggle="collapse" href="#collapseExample" role="button"
           aria-expanded="true" aria-controls="collapseExample">
            Добавить новый товар
        </a>
        <div class="collapse mb-3" id="collapseExample" style="">
            <form action="/product/create" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="productName">Название товара</label>
                    <input type="text" required class="form-control"
                           id="productName" name="title">
                </div>
                <div class="form-group">
                    <label for="searchCity">Кол-во звезд</label>
                    <select id="searchCity" required name="stars" class="form-control">
                        <option selected>Выберите кол-во звезд</option>

                        <option value="★☆☆☆☆">★☆☆☆☆</option>
                        <option value="★★☆☆☆">★★☆☆☆</option>
                        <option value="★★★☆☆">★★★☆☆</option>
                        <option value="★★★★☆">★★★★☆</option>
                        <option value="★★★★★">★★★★★</option>

                    </select>
                </div>
                <div class="form-group">
                    <label for="price">Цена товара</label>
                    <div class="input-group mb-3">
                        <input type="number" required class="form-control" id="price" name="price">
                        <div class="input-group-append">
                            <span class="input-group-text">₽</span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cityName">Город</label>
                    <input type="text" required class="form-control"
                           id="cityName" name="city">
                </div>
                <div class="form-group">
                    <label for="description">Описание товара</label>
                    <textarea required class="form-control" id="description" name="description"></textarea>
                </div>
                <div class="form-group">
                    <label for="price">Кол-во мест</label>
                    <div class="input-group mb-3">
                        <input type="number" required class="form-control" id="countRooms" name="countRooms">
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input required type="file" name="file1" id="file1">
                        <label class="custom-file-label" for="file1">Лицевая фотография к товару</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file2" id="file2">
                        <label class="custom-file-label" for="file2">Вторая фотография к товару</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file3" id="file3">
                        <label class="custom-file-label" for="file3">Третья фотография к товару</label>
                    </div>
                </div>

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
            </form>
        </div>
       </#if>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>