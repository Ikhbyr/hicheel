$(function () {
    init_datepicker();

});

function init_datepicker() {
    $(".auto-datetimepicker").datetimepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        stepHour: 1,
        stepMinute: 5,
        beforeShow: function (input, inst) { }
    });

    //$(".auto-datetimepicker").datetimepicker();
}