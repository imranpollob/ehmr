<script src="{{ asset('js') }}/jquery-3.2.1.min.js"></script>
<script src="{{ asset('js') }}/jquery.dataTables.min.js"></script>
<script src="{{ asset('js') }}/jquery-ui.min.js"></script>
<script src="{{ url('quickadmin/js') }}/timepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.4.5/jquery-ui-timepicker-addon.min.js"></script>
<script src="{{ asset('js/ckeditor') }}/ckeditor.js"></script>
<script src="{{ asset('js') }}/bootstrap.min.js"></script>
<script src="{{ asset('js') }}/chosen.jquery.min.js"></script>
<script src="{{ asset('js') }}/jquery.datetimepicker.full.min.js"></script>
<script src="{{ url('quickadmin/js') }}/main.js"></script>


<script>

    $('.datepicker').datetimepicker({
        format:'Y-m-d',
         timepicker:false,
        // datepicker:false,
    });

    $('.datetimepicker').datetimepicker({
        format:'Y-m-d H:i:00',
        // timepicker:false,
        // datepicker:false,
    });

    $('#datatable').dataTable( {
        "language": {
            "url": "{{ trans('quickadmin::strings.datatable_url_language') }}"
        }
    });
    $(".chosen").chosen()
</script>
