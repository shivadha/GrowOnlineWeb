
    var tblorder = null;
    //Bind Grid.
$(document).ready(function () {
    $("#preloader").show();
    var tblorder = $('#orderTable').DataTable({
        "initComplete": function (settings, json) {
            $("#preloader").hide();
        },
        processing: true,
        serverSide: true,
        autoWidth: false,
        responsive: true,
        pageLength: 20,
        lengthMenu: [[10, 20, 50, 100, 150, -1], [10, 20, 50, 100, 150, "All"]],
        // language: VelozLegal.cultureKey == "es" ? DtSpanishJson : {},
        ajax: {
            type: "POST",
            url: '/GetOrderList',
            dataType: "json",
            //dataFilter: function (data) {
            //    $("#preloader").hide();
            //    //debugger;
            //    //SessionTimeout(data);
            //    //debugger;

            //    return data;
            //}

        },
        order: [[0, 'asc']],
        columns: [
            {
                data: "Order_Id",
                sName: "Order_Id",
                bSearchable: true,
                className: "",
                createdCell: function (td) {
                    td.setAttribute('data-label', 'Order_Id');
                },
                render: function (data, type, full, meta) {
                    return '<span>' + data + '</a></span>';
                }
            },
            {
                data: "Totalprice",
                sName: "Amount",
                bSearchable: true,
                className: "",
                createdCell: function (td) {
                    td.setAttribute('data-label', 'Amount');
                },
                render: function (data, type, full, meta) {
                    return '<span>' + data + '</a></span>';
                }
            },
            {
                data: "payment_mode",
                sName: "PayMode",
                bSearchable: true,
                className: "",
                createdCell: function (td) {
                    td.setAttribute('data-label', 'PayMode');
                },
                render: function (data, type, full, meta) {
                    return '<span>' + data + '</a></span>';
                }
            },
            {
                data: "order_status",
                sName: "Status",
                bSearchable: true,
                orderable: true,
                className: "",
                createdCell: function (td) {
                    td.setAttribute('data-label', 'Status');
                },
                render: function (data, type, full, meta) {
                    return '<span>' + data + '</a></span>';
                }
            },
            {
                data: "orderDate",
                sName: "orderDate",
                autoWidth: true,
                orderable: false,
                bSearchable: true,
                className: "act",
                createdCell: function (td) {
                    td.setAttribute('data-label', 'orderDate');
                },
                render: function (data, type, full, meta) {

                    return '<span>' + data + '</a></span>';

                    //return '<div class="dropdown toggle-list"><a href="#" class="list-icons-item" data-toggle="dropdown"><img src="' + VelozLegal.appPath + '/images/list-img.jpg" /></a ><div class="dropdown-menu dropdown-menu-right" x-placement="top-end"><button title="Edit" class="edit-btn btn btn-default btn-xs delete pull-left edit-button dropdown-item" type="button" data-toggle="modal" data-target=".State" onClick="editState(\'' + full.StateId + '\',\'' + full.ResourceKey + '\');"><i class="fa fa-pencil-square-o"></i> Edit</button>' +
                    //    '<button title="Delete" class="btn btn-default btn-xs delete pull-left delet-button dropdown-item" type="button" onClick="deleteState(\'' + full.StateId + '\');"><i class="fa fa-trash-o "></i> Delete</button></div></div>';




                }
            }

        ],
        drawCallback: function () {
            $("#preloader").show();
            settable(tblorder);
            $("#preloader").hide();
        }
    });
});


function IsAlphaNumeric(e) {

    var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;

    if ((keyCode == 64 || keyCode == 46) || keyCode == undefined || keyCode == 8 || keyCode == 32 || keyCode == 13) {
        return true;
    }

    var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (specialKeys.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
    document.getElementById("error").style.display = ret ? "none" : "inline";
    return ret;
}


function refreshOrder() {
    $("#searchOrder").val(null);
    $('#orderTable').DataTable().search('');
    $('#orderTable').DataTable().columns().search('');
    $('#orderTable').DataTable().ajax.reload();
}


function settable(table, filtertable) {

    table.columns().every(function (index) {
        var that = this;
        var tablefilter = filtertable ? $(filtertable) : $('.table-filter');

        $('input', tablefilter.find('td').eq(index)).on('keyup', function () {
            if (that.search() !== this.value) {
                that
                    .search(this.value)
                    .draw();
            }
        });
        $('input[date-picker]', tablefilter.find('td').eq(index)).on('change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
        $('select', tablefilter.find('td').eq(index)).on('change', function () {
            if (that.search() !== this.value) {
                that
                    .search(this.value)
                    .draw();
            }
        });
        $('[checkbox-multi-select] input', tablefilter.find('td').eq(index)).on('change', function (e) {
            $('[checkbox-multi-select] input', tablefilter.find('td').eq(index)).off('change');
            var checkoptions = $(this).parents('[checkbox-multi-select]').find('input:checked');
            var selected = [];
            $(checkoptions).each(function (index, checkbox) {
                selected.push([$(this).val()]);
            });

            var regex = selected.join(",");

            if (regex) {
                that.search(regex, true, true).draw(1);
            }
            else if (that.search() !== this.value) {

            }
            else {
                that.search('').draw(1);
            }
        });
    });

    $('input.input-search').on('keyup', function () {
        $("#iframeloading").show();
        table.search($(this).val()).draw();
    });

    $('.input-pagelength').on('keyup change', function () {
        var val = $(this).val();
        var pagelength = (val && val != '' && !isNaN(val)) ? val : 10;
        table.page.len(pagelength).draw();
    });

    $('.reset-filter').on('click', function () {
        $('input.input-search').val(null);
        $('.table-filter input').val(null);
        $('.table-filter select').val(null);
        $('.table-filter input[type="checkbox"]').prop('checked', false);
        $('.table-filter .checkbox-multi-select-label').html('');
        table.search('').columns().search('').draw();
    });

    $('#sidepanel-advanced-filter #btn-apply-filter').click(function () {
        table.search('').draw();
    });


};

