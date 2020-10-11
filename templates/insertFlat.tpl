<br>
<div class="col-sm-2">
    <div>
        <h4>Agregar Departamento</h4>
    </div>
    <br>
    <form action="insertFlat" method="post">
        <div class="form-group">
            <label for="name">Nombre</label>
            <input type="text" name="input_name" class="form-control" placeholder="Nombre Depto">
        </div>
        <div class="form-group">
            <label for="address">Dirección</label>
            <input type="text" name="input_address" class="form-control" placeholder="Dirección">
        </div>
        <div class="form-group">
            <label for="price">Precio</label>
            <input type="number" name="input_price" class="form-control" placeholder="Precio">
        </div>
        <div class="form-group">
            <label for="city">Ciudad</label>
            <select class="form-control" name="input_id_city_fk" id="cities_s">
                {foreach from=$cities item=city}
                <option value="{$city->id_ciudad}">{$city->nombre}</option>
                {/foreach}
            </select>
        </div>
        <button type="submit" class="btn btn-secondary">Agregar</button>
    </form>
</div>