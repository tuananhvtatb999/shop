var Product = {
    searchProduct: function () {
        var data = {};
        data["keyWord"] = $('#key-word').val();

        $('.product-search').empty();
        $('.search__shop-list').empty();

        $.ajax({
            url: "/search-shop",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                $('.key-word').text($('#key-word').val());
                $('.quantity-result').text('('+ result.length + ' kết quả)');

                $.each(result, function (index, value) {
                    var shop = "<div class='search-shop__item-wrapper'>" +
                        "<a href='#'>" +
                        "<div class='search-shop__item'>" +
                        "<div class='search-shop__item-left'>" +
                        "<div class='search-shop__image-wrapper'>" +
                        "<img src='"+ value.linkImage+"'" +
                        "alt='shop-image' width='80px' height='80px'>" +
                        "<div class='badge'></div>" +
                        "</div>" +
                        "<div class='search-shop__info-wrapper'>" +
                        "<div class='search-shop__name'>"+ value.name+"</div>" +
                        "<div class='search-shop__username'>"+ value.description+"</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</a>" +
                        "</div>";
                    $('.search__shop-list').append(shop);
                });
            }
        });

        var category = [];
        $(".category-filter input:checkbox[name=category]:checked").each(function () {
            category.push($(this).val());
        });

        var size = [];
        $(".size-filter input:checkbox[name=size]:checked").each(function () {
            size.push($(this).next("label").text());
        });
        console.log(size);

        data["category"] = category;
        data["size"] = size;

        $.ajax({
            url: "/search",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                $('.key-word').text($('#key-word').val());
                $('.quantity-result-p').text('('+ result.length + ' kết quả)');
                $.each(result, function (index, value) {
                    var product = "<li class='col c-6 m-4 l-2-4 py-1' id='" + value.id + "'><a href='#'>" +
                        "<div class='card'>" +
                        "<div class='card-img'>" +
                        "<img src="+value.pathImage+"/>"+
                        "</div>" +
                        "<div class='card-text'>" +
                        "<h3 class='card-title text-hover name-shop'>" + value.nameShop + "</h3>" +
                        "<p class='card-des truncate name-product'>" + value.name + "</p>" +
                        "<span class='card-price unit-price'>" + value.unitPrice + "</span>" +
                        "<span class='card-price-discount promotion-price'><i>-</i>"+value.promotionPrice+"<i>%</i></span>"+
                        "<p class='card-price-cost promotion-price'>" + value.promotionPrice + "</p>" +
                        "</div>" +
                        "</div>" +
                        "</a></li>";
                    $('.product-search').append(product);
                });
            }
        });
    },

    clearCheckBox: function () {
        $(".category-filter input:checkbox[name=category]:checked").each(function () {
            $(this).prop('checked', false);
        });

        $(".size-filter input:checkbox[name=size]:checked").each(function () {
            $(this).prop('checked', false);
        });
        this.searchProduct();
    },

    addToCart: function (idProduct) {
        var data = {};
        data["id"] = idProduct;
        var quantity = $('.product__quantity').html();
        data["quantity"] = Number(quantity);

        $('#size-radio input').on('change', function() {
            data["size"] = ($('input[name=size]:checked', '#size-radio').html());
            alert($('input[name=size]:checked', '#size-radio').html());
        });

        $('#color-radio input').on('change', function() {
            data["color"] = ($('input[name=color]:checked', '#color-radio').html());
        });

        console.log(data);

        $.ajax({
            url: "/add-to-cart",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                $('#quantity-product-in-cart').html(result);
            }
        });
    },

    changeAmountMinus: function (id, promotionPrice, element) {
        var soluong = $('#'+id).text();
        var res=Number(soluong);
        if(res=== 1) {
            return;
        }

        $(element).parent().find('#'+id).text(Number(soluong)-1);
        var quantity = Number(soluong)-1;
        var total = $('#total').val();
        console.log(total)
        this.updateCart(id, quantity, Number(total), promotionPrice);
    },

    changeAmountAdd: function (id, promotionPrice, element) {
        var soluong = $('#'+id).text();
        $(element).parent().find('#'+id).text(Number(soluong)+1);
        var quantity = Number(soluong)+1;
        var total = $('#total').val();
        this.updateCart(id, quantity, total, promotionPrice);
    },

    updateCart: function (id, quantity, total, promotionPrice) {
        var data = {};
        data["id"] = id;
        data["quantity"] = quantity;

        $.ajax({
            url: "/update-cart",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                $("#total").html(result);
            }
        });
    },
    updateStatusOrder: function (id, status) {
        var data = {};
        data["id"] = id;
        data["status"] = status;

        $.ajax({
            url: "/shop/update-status-order",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                $("#status").empty();
                if(status === 2){
                    $("#status").append('<lable class="badge text_color bg-label-warning">Chờ lấy hàng</lable>');
                }
                if(status === 3){
                    $("#status").append('<lable class="badge text_color bg-label-primary">Đang giao</lable>');
                }
                if(status === 5){
                    $("#status").append('<lable class="badge text_color bg-label-danger">Đã hủy</lable>');
                }
            }
        });
    }
}
