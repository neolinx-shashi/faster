@extends('layouts.app')

@section('content')

<div class="col-md-12 s">
    <fieldset>
        <legend>Patientenliste</legend>

        @include('partials.status')

        @if ($page == 'current')
        <a href="{{ url('/patientarchive') }}" class="btn btn-primary pull-right">Archiv</a>
        <div class="clearfix"></div><br>
        @elseif ($page == 'archive')
        <a href="{{ url('/patient') }}" class="btn btn-primary pull-right">Kürzlich</a>
        <div class="clearfix"></div><br>
        @endif
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>S. No.</th>
                    <th>Alter</th>
                    <th>Geschlecht</th>
                    <th>Krankenhaus</th>
                    <th>Sanitäterliste</th>
                    <th>Sanitäterkontakt</th>
                    <th>Zeitpunkt der Datenübertragung</th>
                    <th>voraussichtliche Ankunftszeit</th>
                    <th>Aktionen</th>
                </tr>
            </thead>
            <tbody>
                @if ($count > 0)
                    @foreach ($list as $key => $val)
                        <tr>
                            <td>{{ ($key + 1) + ($pageno) }}</td>
                            <td>@if ($val->patient_age == 0) ? @else {{ $val->patient_age }} @endif</td>
                            <td>@if ($val->patient_gender == 'M') Male @elseif ($val->patient_gender == 'F') Female @else Others @endif</td>
                            <td>{{ $val->hospital }}</td>
                            <td>{{ $val->paramedic_name }}</td>
                            <td>{{{ $val->paramedic_mobile or '' }}}</td>
                            <td>{{ $val->cr_time }}</td>
                            <td>{{ date("H:i", strtotime($val->arrival_time)) }}</td>
                            <td class="action">
                                <span class="glyphicon glyphicon-eye-open mright" title="View Symptoms" data-toggle="modal" data-target="#myModal" pid="{{ $val->patient_id }}" id="symptoms" onclick="symptomDetail({{ $val->patient_id }})"></span>
                                <span class="glyphicon glyphicon-tint exam-score" title="View Examination Response" data-toggle="modal" data-target="#myModal"  pid="{{ $val->patient_id }}" id="examination" onclick="examinationDetail({{ $val->patient_id }})"></span>
                                <a href="{{ url('/deletepatient/' . $val->patient_id) }}" onclick="return confirm('Delete this?')"><span class="glyphicon glyphicon-trash" title="Delete"></span></a>
                                    @if ($page == 'current')
                                    <a href="{{ url('/archivepatient/' . $val->patient_id) }}"><span class="glyphicon glyphicon-cloud-download"></span></a>
                                    @endif
                                <span class="glyphicon glyphicon-save" onclick="getAllData({{ $val->patient_id }}, 'excel')"></span>    
                                <span class="glyphicon glyphicon-print" onclick="getAllData({{ $val->patient_id }}, 'print')"></span>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr align="center"><td colspan="9">No Data Found.</td></tr>
                @endif
            </tbody>
        </table>
        {{ $list->links() }}
    </fieldset>
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
function symptomDetail(id) {
    var xurl = "{{ url('/get-symptoms') }}/" + id;
    $('#score, .score-tab').removeClass('active');
    $('#symptom, .symptom-tab').addClass('active');
    getDetails(id);
        
}

function examinationDetail(id) {
    var xurl = "{{ url('/get-examination') }}/" + id;
    $('#symptom, .symptom-tab').removeClass('active');
    $('#score, .score-tab').addClass('active');
    getDetails(id);
        
}

function getAllData(id, act) {
    var url = "{{ url('/patient-detail') }}/" + id;
    var xurl_1 = "{{ url('/get-symptoms') }}/" + id;
    var xurl_2 = "{{ url('/get-examination') }}/" + id;
    
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
                    if (i == 'time_to_hospital') {
                        v2 = setArrivalTime(val.updated_at, v);
                        cls = 'arr-time';
                    } else {
                        v2 = v;
                        cls = '';
                    }
                    content += '<tr><td>'+ sno +'</td><td>' + replaceStrigs(i) + '</td><td class="'+cls+'" colspan="3">'+ v2 +'</td></tr>';
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

function getDetails(id) {
    var xurl_1 = "{{ url('/get-symptoms') }}/" + id;
    var xurl_2 = "{{ url('/get-examination') }}/" + id;

    $.get(xurl_1, function(res) {
            var content = '<table class="table table-striped"><thead><tr><th>S. No.</th><th></th><th>Anamnese</th></tr></thead><tbody>';
            $.each(res, function(ind, val) {
                var sno = 1;
                $.each(val.symptom_detail, function(i, v) {
                    if (i == 'time_to_hospital') {
                        v2 = getArrivalTime(val.patient_id, v);
                        cls = 'arr-time';
                    } else {
                        v2 = v;
                        cls = '';
                    }
                    content += '<tr><td>'+ sno +'</td><td>' + replaceStrigs(i) + '</td><td class="'+cls+'">'+ v2 +'</td></tr>';
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
    } else if (str == 'comments') {
        replace = 'Kommentar hinzufügen';
    }
    return replace;
}

$(function() {
    $('#symptoms---').click(function() {
        var id = $(this).attr('pid');
        
    });

    $('#examination---').click(function() {
        var id = $(this).attr('pid');
        
    });

    $('td.action').click(function() {
        var id = $(this).find('.exam-score').attr('pid');
        changeViewedStatus(id);
    });
});

function changeViewedStatus(id) {
    var url = "{{ url('/patient-new') }}/" + id;
    $.get(url, function(res) {

    });
}

function getArrivalTime(id, time) {
    var url = "{{ url('/get-arrival-time') }}/" + id + '/' + time;
    $.get(url, function(res) {
        $('.arr-time').text(res);
    });
}

function setArrivalTime(time, added) {
    //alert(time+'-'+added);
    var dat = new Date(time);
    var t = dat.getTime() + added * 60000;
    //dat.setMinutes(dat.getMinutes() + added);
    //var time = dat.getHours() + ':' + dat.getMinutes();
    var ntime = new Date(t);
    return ntime.getHours()+':'+ntime.getMinutes();
}
</script>

@endsection