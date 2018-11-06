@extends('layouts.app')

@section('content')

<div class="col-md-8">
    <fieldset>
        <legend>Benutzer</legend>

        @include('partials.status')

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>S. No.</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Krankenhaus</th>
                    <th>Art</th>
                    <th>Aktionen</th>
                </tr>
            </thead>
            
            <tbody>
            @if ($count > 0)
                @foreach ($list as $key => $val)
                <tr>
                    <td>{{ ($key + 1) * ($pageno + 1) }}</td>
                    <td>{{ $val->name }}</td>
                    <td>{{ $val->email }}</td>
                    <td>{{ $val->hospital_name }}</td>
                    <td>{{ $val->type }}</td>
                     <td>
                        <a href="{{ url('/admin/' . $val->id . '/edit') }}" class="mright" title="Edit"><span class="glyphicon glyphicon-edit"></span></a> 
                        <a href="{{ url('/deleteadmin/' . $val->id) }}" onclick="return confirm('Delete this record?')" title="Delete"><span class="glyphicon glyphicon-trash"></span></a>
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
            <legend>{{ $action }} Benutzer</legend>

            <div class="form-group">
                <label for="Name" class="col-md-2 control-label">Name</label>
                <div class="col-md-10">
                    <input type="text" name="name" id="name" class="form-control" value="{{{ $detail->name or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="Email" class="col-md-2 control-label">Email</label>
                <div class="col-md-10">
                    <input type="text" name="email" id="email" class="form-control" value="{{{ $detail->email or '' }}}">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="Password" class="col-md-2 control-label">Passwort</label>
                <div class="col-md-10">
                    <input type="password" name="password" id="password" class="form-control">
                    <div class="err"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="Hospital" class="col-md-2 control-label">Krankenhaus</label>
                <div class="col-md-10">
                    <select name="hospital_id" id="hospital_id" class="form-control">
                        <option value="0">-- Wählen Sie Krankenhaus --</option>
                        @foreach ($hospital as $val)
                        <option value="{{ $val->hospital_id }}" @if ($action == 'Edit' && $val->hospital_id == $detail->hospital_id) selected @endif>{{ $val->hospital_name }}</option>
                        @endforeach
                    </select>
                    <div class="err"></div>
                </div>
            </div>
            
            <div class="form-group">
                <label for="Type" class="col-md-2 control-label">Art</label>
                <div class="col-md-10">
                <div class="radio">
                        <label>
                    <input type="radio" name="type" id="type" value="Admin" @if ($action == 'Edit' && $detail->type == 'Admin') checked @endif> Admin
                    </label>
                    </div>
                    <div class="err"></div>
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
        var name = $('#name').val();
        var email = $('#email').val();
        var hospital = $('#hospital_id').val();

        if (name === '') {
            $('#name').siblings('.err').text(msg);
            return false;
        } else {
            $('#name').siblings('.err').text('');
        }
        if (email === '') {
            $('#email').siblings('.err').text(msg);
            return false;
        } else if (validateEmail(email) === false) {
            $('#email').siblings('.err').text('Invalid Email.');
            return false;
        } else {
            $('#email').siblings('.err').text('');
        }
        if (hospital == "0") {
            $('#hospital').siblings('.err').text('Wählen Sie Krankenhaus');
            return false;
        } else {
            $('#hospital').siblings('.err').text('');
        }
    }

    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }
</script>

@endsection