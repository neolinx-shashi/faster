@extends('layouts.app')

@section('content')

        <div class="col-md-12 s" id="dashboard-heading">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
              </ol>
            </nav>
            <div class="row" style="margin-top: 20px;">
                <div class="col-md-4">
                    <div class="total-list-icon">
                        <a href="{{ url('/patient') }}">
                            <div class="icon-block"><img src="{{asset('assets/images/icon-patients-list.png')}}"></div>
                            <div class="title-block">
                                <h4>Patienten</h4>
                                <p><small class="small total-patients">.</small></p>
                            </div>
                        </a>
                    </div>
                </div>
                @if ($type == 'superadmin')
                <div class="col-md-4">
                    <div class="total-list-icon">
                        <a href="{{ url('/hospital') }}">
                            <div class="icon-block"><img src="{{asset('assets/images/icon-hospital-list.png')}}"></div>
                            <div class="title-block">
                                <h4>Krankenhäuser</h4>
                                <p><small class="small">{{ $total_hospital }}</small></p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="total-list-icon">
                        <a href="{{ url('/paramedic') }}">
                            <div class="icon-block"><img src="{{asset('assets/images/icon-paramedics-list.png')}}"></div>
                            <div class="title-block">
                                <h4>Sanitäter</h4>
                                <p><small class="small">{{ $total_paramedic }}</small></p>
                            </div>
                        </a>
                    </div>
                </div>
                @endif
            </div>
            <!-- <div>Dashboard</div> -->
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            
            <div class="home-table">
                <!-- <div class="clearfix"></div> -->
                <div class="@if ($type == 'superadmin') col-md-4 @else col-md-12 @endif dashboard-lists">
                    <div>
                        <h3>die heutige Patientenliste</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Geschlecht/ Alter</th>
                                    <th>Symptome</th>
                                    <th>Krankenhaus</th>
                                    <th>Sanitäter</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody class="patient-list"></tbody>
                        </table>
                    </div>
                </div>
                @if ($type == 'superadmin')
                <div class="col-md-4 dashboard-lists">
                    <div>
                        <h3><!-- <span><img src="{{asset('assets/images/icon-hospital-lis-1.png')}}"></span> -->Krankenhausliste</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Adresse</th>
                                    <th>Kontakt</th>
                                </tr>
                            </thead>
                            <tbody class="hospital-list"></tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-4 dashboard-lists">
                    <div>
                        <h3>Sanitäterliste</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Kontakt</th>
                                </tr>
                            </thead>
                            <tbody class="paramedic-list"></tbody>
                        </table>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Patientendetail</h4>
        </div>
        <div class="modal-body">
        
        <!-- panel -->

        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="symptom-tab"><a href="#symptom" aria-controls="symptom" role="tab" data-toggle="tab">Anamnese</a></li>
            <li role="presentation" class="score-tab"><a href="#score" aria-controls="score" role="tab" data-toggle="tab">Symptome</a></li>
        </ul>

        <div class="tab-content">
            <div role="tabpanel" class="tab-pane" id="symptom">Loading...</div>
            <div role="tabpanel" class="tab-pane" id="score">Loading...</div>
        </div>

        <!-- -->

        </div>
      
    </div>
  </div>
</div>

<div class="excel-table zero"></div>

@endsection


@section('morejs')
<script type="text/javascript" src="{{ URL::asset('js/xl/tableExport.js') }}"></script>
    <script type="text/javascript" src="{{ URL::asset('js/xl/jquery.base64.js') }}"></script>
    <script type="text/javascript" src="{{ URL::asset('js/xl/html2canvas.js') }}"></script>
    <script type="text/javascript" src="{{ URL::asset('js/xl/jspdf/libs/sprintf.js') }}"></script>
    <script type="text/javascript" src="{{ URL::asset('js/xl/jspdf/jspdf.js') }}"></script>
    <script type="text/javascript" src="{{ URL::asset('js/xl/jspdf/libs/base64.js') }}"></script>

<script>
$(function() {
    getHospitalList();
    getParamedicList();
    setInterval(getTodayPatients, 5000); 
    setInterval(totalPatients, 5000); 
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
            if (val.viewed == '0') {
                vstat = 'New';
            } else {
                vstat = '';
            }
            if (val.edited == '0') {
                estat = '';
            } else {
                estat = 'Edited';
            }
            content += '<tr><td>'+ val.patient_gender + '/' + val.patient_age +'</td><td>'+ val.score +'</td><td>'+ val.hospital +'</td><td>'+ val.paramedic_name +'</td><td><span class="glyphicon glyphicon-save mright" onclick="getAllData('+ val.patient_id +', `excel`, '+ val.viewed +')"></span><span class="glyphicon glyphicon-print mright" onclick="getAllData('+ val.patient_id +', `print`, '+ val.viewed +')"></span> <span class="glyphicon glyphicon-eye-open" title="Im Detail sehen" data-toggle="modal" data-target="#myModal" onclick="symptomDetail('+ val.patient_id +', '+ val.viewed +')"></span><span class="viewed">'+ vstat + ' ' + estat +'</span></td></tr>';
        });
        $('.patient-list').html(content);
    });
}

function totalPatients() {
    $.get('/total-patients', function(res) {
        $('.total-patients').html(res);
    });
}



/**modal */
function symptomDetail(id, viewed) {
    var xurl = "{{ url('/get-symptoms') }}/" + id;
    $('#score, .score-tab').removeClass('active');
    $('#symptom, .symptom-tab').addClass('active');
    getDetails(id);
    if (viewed == '0') {
        changeViewedStatus(id);
    }
}

function getDetails(id) {
    var xurl_1 = "{{ url('/get-symptoms') }}/" + id;
    var xurl_2 = "{{ url('/get-examination') }}/" + id;

    $.get(xurl_1, function(res) {
            var content = '<table class="table table-striped"><thead><tr><th>S. No.</th><th></th><th>Anamnese</th></tr></thead><tbody>';
            $.each(res, function(ind, val) {
                var sno = 1;
                $.each(val.symptom_detail, function(i, v) {
                    content += '<tr><td>'+ sno +'</td><td>' + replaceStrigs(i) + '</td><td>'+ v +'</td></tr>';
                    sno++;
                });
                //content += '<li>' + val.symptom_detail + '</li>';
            });
            content += '</tbody></table>';
            
            $('.modal-body .tab-content #symptom').html(content);

        });

        $.get(xurl_2, function(res) {
            var total_score = 0;
            var content = '<table class="table table-striped"><thead><tr><th>S. No.</th><th>Exam</th><th>Response</th><th>Score</th></tr></thead><tbody>';
            $.each(res, function(ind, val) {
                content += '<tr><td>' + (ind + 1) + '</td><td>' + val.examination_exam + '</td><td>' + val.examination_response + '</td><td>' + val.examination_score + '</td></tr>';
                total_score += val.examination_score;
            });
            content += '</tbody><tfoot><tr class="fat"><td colspan="3" align="right">Total:</td><td>' + total_score + '</td></tr></tfoot></table>';
            
            $('.modal-body .tab-content #score').html(content);
        });
}

function changeViewedStatus(id) {
    var url = "{{ url('/patient-new') }}/" + id;
    $.get(url, function(res) {

    });
}

function replaceStrigs(str) {
    var replace = str;
    if (str == 'state') {
        replace = 'Vorzustand';
    } else if (str == 'observed') {
        replace = 'Beginn beobachtet?';
    } else if (str == 'time_yes') {
        replace = 'Uhrzeit Symptombeginn';
    } else if (str == 'last_fine') {
        replace = 'Zuletzt gesund gesehen';
    } else if (str == 'anticoag') {
        replace = 'Antikoagulanzien?';
    } else if (str == 'anticoag_name') {
        replace = 'Antikoagulanz Name';
    } else if (str == 'medication_detected') {
        replace = 'Medikation erfasst?';
    } else if (str == 'relative_no') {
        replace = 'Tel.-Nr. von Angehörigen erfasst?';
    } else if (str == 'doctor_record') {
        replace = 'Hausarzt erfasst?';
    } else if (str == 'impact_trauma') {
        replace = 'Sturz oder Anpralltrauma des Kopfes?';
    } else if (str == 'haemorrhage') {
        replace = 'Zustand nach Hirnblutung in der Vorgeschichte?';
    } else if (str == 'bleeding_disorder') {
        replace = 'Bekanntes aktives Blutungsleiden?';
    } else if (str == 'target_clinic') {
        replace = 'Auswahl der Zielklinik';
    } else if (str == 'time_to_hospital') {
        replace = 'Voraussichtliche Ankunft in der Zielklinik';
    }
    return replace;
}

function getAllData(id, act, viewed) {
    var url = "{{ url('/patient-detail') }}/" + id;
    var xurl_1 = "{{ url('/get-symptoms') }}/" + id;
    var xurl_2 = "{{ url('/get-examination') }}/" + id;

    if (viewed == '0') {
        changeViewedStatus(id);
    }
        
    $.get(url, function(resx) {
        var content = '<table class="table table-bordered" id="all-data">';
        content += '<tr><td colspan="5">Patientendetail</td></tr>';
        content += '<tr><td>Alter</td><td>Geschlecht</td><td>Sanitäterliste</td><td>Sanitäterkontakt</td><td>Zeitpunkt der Datenübertragung</td></tr>';
        if (resx.patient_age == 0)
            age = '?';
        else
            age = resx.patient_age;
        content += '<tr><td>'+ age +'</td><td>'+ resx.patient_gender +'</td><td>'+ resx.paramedic_name +'</td><td>'+ resx.paramedic_mobile +'</td><td>'+ resx.created_at +'</td></tr>';

        $.get(xurl_1, function(res) {
            content += '<tr><td colspan="5">.</td><tr><td colspan="5">Anamnese</td></tr><tr><td>S. No.</td><td></td><td colspan="3">Anamnese</td></tr>';
            $.each(res, function(ind, val) {
                var sno = 1;
                $.each(val.symptom_detail, function(i, v) {
                    content += '<tr><td>'+ sno +'</td><td>' + replaceStrigs(i) + '</td><td colspan="3">'+ v +'</td></tr>';
                    sno++;
                });
            });

            $.get(xurl_2, function(res) {
                var total_score = 0;
                content += '<tr><td colspan="5">.</td></tr><tr><td colspan="5">Symptome</td></tr><tr><td>S. No.</td><td>Exam</td><td>Response</td><td colspan="2">Score</td></tr>';
                $.each(res, function(ind, val) {
                    content += '<tr><td>' + (ind + 1) + '</td><td>' + val.examination_exam + '</td><td>' + val.examination_response + '</td><td colspan="2">' + val.examination_score + '</td></tr>';
                    total_score += val.examination_score;
                });
                content += '<tr class="fat"><td></td><td></td><td align="right">Total:</td><td colspan="2">' + total_score + '</td></tr>';

                content += '</table>';
                $('.excel-table').html(content);
                if (act == 'excel') {
                    $('#all-data').tableExport({type: 'excel', escape: 'false'});
                } else {
                    $('.s').hide();
                    $('.excel-table').removeClass('zero');
                    window.print();
                    $('.s').show();
                    $('.excel-table').addClass('zero');
                }
                
            });
        });
    });
    
}
</script>

@endsection
