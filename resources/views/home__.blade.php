@extends('layouts.app')

@section('content')

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                    <div class="clearfix"></div>
                    <div class="col-md-4">
                        <h2>Today's Patient List</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Gender</th>
                                    <th>Score</th>
                                    <th>Hospital</th>
                                </tr>
                            </thead>
                            <tbody class="patient-list"></tbody>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <h2>Hospital List</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Address</th>
                                    <th>Contact</th>
                                </tr>
                            </thead>
                            <tbody class="hospital-list"></tbody>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <h2>Paramedic List</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Contact</th>
                                </tr>
                            </thead>
                            <tbody class="paramedic-list"></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection


@section('morejs')

<script>
$(function() {
    getHospitalList();
    getParamedicList();
    setInterval(getTodayPatients, 5000); 
});

function getHospitalList() {
    
    $.get('/get-hospital-list', function(res) {
        var content = '';
        $.each(res, function(ind, val) {
            content += '<tr><td>'+ val.hospital_name +'</td><td>'+ val.hospital_address +'</td><td>'+ val.hospital_email +'</td></tr>';
        });
        $('.hospital-list').html(content);
    });
}

function getParamedicList() {
    $.get('/get-paramedic-list', function(res) {
        var content = '';
        $.each(res, function(ind, val) {
            content += '<tr><td>'+ val.paramedic_name +'</td><td>'+ val.paramedic_mobile +'</td></tr>';
        });
        $('.paramedic-list').html(content);
    });
}

function getTodayPatients() {
    $.get('/get-patient-list', function(res) {
        var content = '';
        $.each(res, function(ind, val) {
            content += '<tr><td>'+ val.patient_gender +'</td><td>'+ val.score +'</td><td>'+ val.hospital +'</td></tr>';
        });
        $('.patient-list').html(content);
    });
}
</script>

@endsection
