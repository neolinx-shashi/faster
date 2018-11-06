@extends('layouts.app')

@section('content')

<div class="col-md-8">
    <fieldset>
        <legend>Sanitäterliste</legend>

        @include('partials.status')

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>S. No.</th>
                    <th>Name</th>
                    <th>Mobile</th>
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
                    <td>{{ $val->paramedic_name }}</td>
                    <td>{{ $val->paramedic_mobile }}</td>
                    <td>{{ $val->paramedic_email }}</td>
                    <td>@if ($val->paramedic_status == '1') <a href="{{ url('/paramedicstatus/' . $val->paramedic_id . '/' . $val->paramedic_status) }}" onclick="return confirm('Change Status?')" title="Change Status"><span class="glyphicon glyphicon-ok"></span></a> @else <a href="{{ url('/paramedicstatus/' . $val->paramedic_id . '/' . $val->paramedic_status) }}" onclick="return confirm('Change Status?')" title="Change Status"><span class="glyphicon glyphicon-remove"></span></a> @endif</td>
                    <td>
                        <a href="{{ url('/paramedic/' . $val->paramedic_id . '/edit') }}" class="mright" title="Edit"><span class="glyphicon glyphicon-edit"></span></a> 
                        <a href="{{ url('/deleteparamedic/' . $val->paramedic_id) }}" onclick="return confirm('Delete this record?')" title="Delete"><span class="glyphicon glyphicon-trash"></span></a>
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
            <legend>{{ $action }} Sanitäter</legend>

            <div class="form-group">
                <label for="paramedicName" class="col-md-2 control-label">Name</label>
                <div class="col-md-10">
                    <input type="text" name="paramedic_name" id="paramedic-name" class="form-control" value="{{{ $detail->paramedic_name or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="paramedicAddress" class="col-md-2 control-label">Mobile</label>
                <div class="col-md-10">
                    <input type="text" name="paramedic_mobile" id="paramedic-mobile" class="form-control" value="{{{ $detail->paramedic_mobile or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="paramedicEmail" class="col-md-2 control-label">Email</label>
                <div class="col-md-10">
                    <input type="text" name="paramedic_email" id="paramedic-email" class="form-control" value="{{{ $detail->paramedic_email or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="paramedicPassword" class="col-md-2 control-label">Passwort</label>
                <div class="col-md-10">
                    <input type="password" name="paramedic_password" id="paramedic-password" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label for="paramedicStatus" class="col-md-2 control-label">Status</label>
                <div class="col-md-10">
                    <div class="radio">
                        <label>
                            <input type="radio" name="paramedic_status" id="paramedic-status-1" value="1"  @if (isset($detail) && $detail->paramedic_status == '1') checked @elseif (!isset($detail)) checked @endif> Aktiv
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="paramedic_status" id="paramedic-status-0" value="0" @if (isset($detail) && $detail->paramedic_status == '0') checked @endif> Inaktiv
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
        var name = $('#paramedic-name').val();
        var mobile = $('#paramedic-mobile').val();
        var email = $('#paramedic-email').val();

        if (name === '') {
            $('#paramedic-name').siblings('.err').text(msg);
            return false;
        } else {
            $('#paramedic-name').siblings('.err').text('');
        }

        if (mobile === '') {
            $('#paramedic-mobile').siblings('.err').text(msg);
            return false;
        } else {
            $('#paramedic-mobile').siblings('.err').text('');
        }

        if (email === '') {
            $('#paramedic-email').siblings('.err').text(msg);
            return false;
        } else if (validateEmail(email) === false) {
            $('#paramedic-email').siblings('.err').text('Invalid Email.');
            return false;
        } else {
            $('#paramedic-email').siblings('.err').text('');
        }
    }

    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }
</script>

@endsection