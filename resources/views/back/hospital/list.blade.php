@extends('layouts.app')

@section('content')

<div class="col-md-8">
    <fieldset>
        <legend>Krankenhausliste</legend>

        @include('partials.status')

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>S. No.</th>
                    <th>Name</th>
                    <th>Adresse</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Aktionen</th>
                </tr>
            </thead>
            
            <tbody>
            @if ($count > 0)
                @foreach ($list as $key => $val)
                <tr>
                    <td>{{ ($key + 1) * ($pageno + 1) }}</td>
                    <td>{{ $val->hospital_name }}</td>
                    <td>{{ $val->hospital_address }}</td>
                    <td>{{ $val->hospital_email }}</td>
                    <td>@if ($val->hospital_status == '1') <a href="{{ url('/hospitalStatus/' . $val->hospital_id . '/' . $val->hospital_status) }}" onclick="return confirm('Change Status?')" title="Change Status"><span class="glyphicon glyphicon-ok"></span></a> @else <a href="{{ url('/hospitalStatus/' . $val->hospital_id . '/' . $val->hospital_status) }}" onclick="return confirm('Change Status?')" title="Change Status"><span class="glyphicon glyphicon-remove"></span></a> @endif</td>
                    <td>
                        <a href="{{ url('/hospital/' . $val->hospital_id . '/edit') }}" class="mright" title="Edit"><span class="glyphicon glyphicon-edit"></span></a> 
                        <a href="{{ url('/deleteHospital/' . $val->hospital_id) }}" onclick="return confirm('Delete this record?')" title="Delete"><span class="glyphicon glyphicon-trash"></span></a>
                    </td>
                </tr>
                @endforeach
            @else
                <tr><td colspan="6" align="center">No Data Found.</td></tr>
            @endif
            </tbody>
        </table>
        {{ $list->links() }}
    </fieldset>
</div>

<div class="col-md-4">
    <form action="{{ $route }}" method="post" class="form-horizontal" onsubmit="return validate()">
        {{ csrf_field() }}
        @if ($action == 'Edit')
            {{ method_field('PUT') }}
         @endif
        <fieldset>
            <legend>{{ $action }} Krankenhaus</legend>

            <div class="form-group">
                <label for="hospitalName" class="col-md-2 control-label">Name</label>
                <div class="col-md-10">
                    <input type="text" name="hospital_name" id="hospital-name" class="form-control" value="{{{ $detail->hospital_name or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="hospitalAddress" class="col-md-2 control-label">Adresse</label>
                <div class="col-md-10">
                    <input type="text" name="hospital_address" id="hospital-address" class="form-control" value="{{{ $detail->hospital_address or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="hospitalEmail" class="col-md-2 control-label">Email</label>
                <div class="col-md-10">
                    <input type="text" name="hospital_email" id="hospital-email" class="form-control" value="{{{ $detail->hospital_email or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            @if ($action == 'Edit')
            @foreach ($numbers as $num)
            <div class="form-group">
                <label for="department" class="col-md-2 control-label">Abteilung</label>
                <div class="col-md-10">
                    <input type="text" name="department[]" class="form-control department" value="{{ $num->department }}">
                </div>
            </div>

            <div class="form-group">
                <label for="hospitalNumber" class="col-md-2 control-label">Nummer</label>
                <div class="col-md-10">
                    <input type="text" name="number[]" class="form-control number" value="{{ $num->number }}">
                </div>
            </div>
            @endforeach
            @endif

            <div class="form-group clone">
                <label for="department" class="col-md-2 control-label">Abteilung</label>
                <div class="col-md-10">
                    <input type="text" name="department[]" class="form-control department">
                </div>
            </div>

            <div class="form-group clone">
                <label for="hospitalNumber" class="col-md-2 control-label">Nummer</label>
                <div class="col-md-10">
                    <input type="text" name="number[]" class="form-control number">
                </div>
            </div>

            <div class="addhere"></div>

            <div class="form-group">
                <label for="add-button" class="col-md-2 control-label"></label>
                <div class="col-md-10">
                    <buton class="btn btn-info addmore" type="button"><span class="glyphicon glyphicon-plus-sign"></span> Nummer</buton>
                </div>
            </div>

            <div class="form-group">
                <label for="hospitalStatus" class="col-md-2 control-label">Status</label>
                <div class="col-md-10">
                    <div class="radio">
                        <label>
                            <input type="radio" name="hospital_status" id="hospital-status-1" value="1"  @if (isset($detail) && $detail->hospital_status == '1') checked @elseif (!isset($detail)) checked @endif> Aktiv
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="hospital_status" id="hospital-status-0" value="0" @if (isset($detail) && $detail->hospital_status == '0') checked @endif> Inaktiv
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <input type="submit" class="btn btn-primary" value="Sparen">
                    <input type="reset" class="btn btn-default" value="Stornieren">
                </div>
            </div>
        </fieldset>
    </form>
</div>

@endsection

@section('morejs')

<script>
    function validate() {
        var msg = 'This field can not be empty.';
        var name = $('#hospital-name').val();
        var address = $('#hospital-address').val();
        var email = $('#hospital-email').val();

        if (name === '') {
            $('#hospital-name').siblings('.err').text(msg);
            return false;
        } else {
            $('#hospital-name').siblings('.err').text('');
        }

        if (address === '') {
            $('#hospital-address').siblings('.err').text(msg);
            return false;
        } else {
            $('#hospital-address').siblings('.err').text('');
        }

        if (email === '') {
            $('#hospital-email').siblings('.err').text(msg);
            return false;
        } else if (validateEmail(email) === false) {
            $('#hospital-email').siblings('.err').text('Invalid Email.');
            return false;
        } else {
            $('#hospital-email').siblings('.err').text('');
        }
    }

    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }

    $(function() {
        $('.addmore').click(function() {
            $('.clone').clone().removeClass('clone').appendTo('.addhere').find('input').val('');
        });
    });
</script>

@endsection