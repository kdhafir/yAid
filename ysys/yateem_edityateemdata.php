<?php
// This is a user-facing page
/*
Aytam Aid System - Open Source
*/
require_once '../users/init.php';
if (!securePage($_SERVER['PHP_SELF'])){die();}
require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';
require_once $abs_us_root.$us_url_root.'ysys/functions.php';
$yCode = Input::get('ycode');
$goNext = Input::get('continueData');

if(!empty($_POST)){
    $response = preProcessForm();
    if($response['form_valid'] == true){
    //do something here after the form has been validated
  //$goNext = $response['fields']['continueData'];
  //dnd($response);
  $db->update('yayateeminfo1',$yCode,$response['fields']);
  Redirect::to("./yateem_addnew_02.php?ycode=". $yCode);
    //postProcessForm($response);
    }
}

?>

<div class="row text-right" dir="rtl">
    <div class="col-md-3">
    <br>
    <h4>التنقل السريع</h4>
    <a href="#dateOfEntry">البيانات الأساسية</a><br>
    <a href="#yQuranSchool">بيانات الوصي</a><br>
    <a href="#rWorkType">بيانات الأم</a><br>
    <a href="#idName">بيانات المعرف</a><br>
    <a href="./index.php">استعراض الأيتام</a>
    </div>
	<div class="col-sm-12 col-md-9">
    <br>
    <h2>تعديل بيانات اليتيم  <?php echo getYateemName($yCode); ?></h2>
    <div class="row">
    <table class="table">
        <tr>
            <td class="table-primary">البيانات الأساسية</td>
            <td class="table-secondary">المرفقات</td>
            <td class="table-secondary">بيانات الأسرة والأم</td>
            <td class="table-secondary">بيانات الوصي</td>
            <td class="table-secondary">بيانات المعرف</td>
            <td class="table-secondary">بيانات الكفالة</td>
        </tr>
    </table>
    </div>
    
    <form class="" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post">
    <input type="hidden" name="csrf" value="<?php echo Token::generate(); ?>">
    <input type="hidden" name="ycode" value="<?php echo $yCode; ?>">
    <div class="row">
    <div class="form-group col-md-5">
              <label class="" for="DateOfEntry">تاريخ الادخال * </label>
              <input type="date" class="form-control hasDatepicker" name="dateOfEntry" id="DateOfEntry" value="<?php echo getFieldData($yCode,"dateOfEntry"); ?>">
            <!-- final div -->
          </div>
    <div class="form-group col-md-7">
    <label class="" for="yName">اسم اليتيم رباعياً مع اللقب</label>
    <input type="text" name="yName" id="yName" class="form-control" value="<?php echo getFieldData($yCode,"yName"); ?>" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: left center; cursor: auto;">
    <!-- final div -->
    </div>
</div><!--end of div row-->
<div class="row">
    <div class="form-group col-md-5">
        <label class="" for="yDateOfBirth">تاريخ ميلاد اليتيم</label>
        <input type="date" class="form-control hasDatepicker" name="yDateOfBirth" id="yDateOfBirth" value="<?php echo getFieldData($yCode,"yDateOfBirth"); ?>">
            <!-- final div -->
          </div>
              <div class="form-group col-md-7">
              <label class="" for="yBirthPlace">محل الميلاد</label>
              <input type="text" name="yBirthPlace" id="yBirthPlace" class="form-control" value="<?php echo getFieldData($yCode,"yBirthPlace"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
<div class="form-group col-md-4">
              <label class="" for="ySex">جنس اليتيم</label>
              <select name="ySex" id="ySex" class="form-control">
              <option value="<?php echo getFieldData($yCode,"ySex"); ?>"><?php menuQuery("r",getFieldData($yCode,"ySex"),"ya_settings_sex","sNameAra","ySex"); ?></option>
                  <?php menuQuery("w",0,"ya_settings_sex","sNameAra","ySex"); ?>
            </select>
            <!-- final div -->
          </div>
              <div class="form-group col-md-4">
              <label class="" for="yNationality">جنسية اليتيم</label>
              <input type="text" name="yNationality" id="yNationality" class="form-control" value="<?php echo getFieldData($yCode,"yNationality"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-12">
              <label class="" for="yFeatures">مواهب ومميزات اليتيم</label>
              <textarea name="yFeatures" id="yFeatures" class="form-control"><?php echo getFieldData($yCode,"yFeatures"); ?></textarea>
            <!-- final div -->
          </div>
    </div><!--end of div row-->
<div class="row">
<div class="form-group col-md-5">
              <label class="" for="cityName">المدينة / المحافظة</label>
              <select name="cityName" id="cityName" class="form-control">
              <option value="<?php echo getFieldData($yCode,"cityName"); ?>"><?php menuQuery("r",getFieldData($yCode,"cityName"),"ya_settings_cities","cityName"); ?></option>
                  <?php menuQuery("w",0,"ya_settings_cities","cityName"); ?>
            </select>
            <!-- final div -->
          </div>
              <div class="form-group col-md-7">
              <label class="" for="yAddress">محل اقامة اليتيم [ مديرية - عزلة / حي ]</label>
              <input type="text" name="yAddress" id="yAddress" class="form-control" value="<?php echo getFieldData($yCode,"yAddress"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-4">
              <label class="" for="fDeathDate">تاريخ وفاة الأب</label>
              <input type="date" class="form-control hasDatepicker" name="fDeathDate" id="fDeathDate" value="<?php echo getFieldData($yCode,"fDeathDate"); ?>">
            <!-- final div -->
          </div>
              <div class="form-group col-md-8">
              <label class="" for="fDeathReason">سبب وفاة الأب</label>
              <input type="text" name="fDeathReason" id="fDeathReason" class="form-control" value="<?php echo getFieldData($yCode,"fDeathReason"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-4">
              <label class="" for="yEduLevel">المستوى التعليمي</label>
              <input type="text" name="yEduLevel" id="yEduLevel" class="form-control" value="<?php echo getFieldData($yCode,"yEduLevel"); ?>">
            <!-- final div -->
          </div>
              <div class="form-group col-md-4">
              <label class="" for="yEduClass">الصف الدراسي</label>
              <input type="text" name="yEduClass" id="yEduClass" class="form-control" value="<?php echo getFieldData($yCode,"yEduClass"); ?>">
            <!-- final div -->
          </div>
              <div class="form-group col-md-4">
              <label class="" for="yEduSchoolName">اسم المدرسة</label>
              <input type="text" name="yEduSchoolName" id="yEduSchoolName" class="form-control" value="<?php echo getFieldData($yCode,"yEduSchoolName"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-12">
              <label class="" for="yEduNoEduReason">سبب الانقاطع عن التعليم [ في حال الانقطاع ]</label>
              <textarea name="yEduNoEduReason" id="yEduNoEduReason" class="form-control"><?php echo getFieldData($yCode,"yEduNoEduReason"); ?></textarea>
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-12">
              <label class="" for="yHealthStatus">الحالة الصحية</label>
              <input type="text" name="yHealthStatus" id="yHealthStatus" class="form-control" value="<?php echo getFieldData($yCode,"yHealthStatus"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-12">
              <label class="" for="yHealthSickness">بيان المرض [ إن وجد ]</label>
              <textarea name="yHealthSickness" id="yHealthSickness" class="form-control"><?php echo getFieldData($yCode,"yHealthSickness"); ?></textarea>
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
              <div class="form-group col-md-6">
              <label class="" for="yQuranLevel">مقدار الحفظ من القرآن</label>
              <input type="text" name="yQuranLevel" id="yQuranLevel" class="form-control" value="<?php echo getFieldData($yCode,"yQuranLevel"); ?>">
            <!-- final div -->
          </div>
              <div class="form-group col-md-6">
              <label class="" for="yQuranSchool">اسم مدرسة التحفيظ</label>
              <input type="text" name="yQuranSchool" id="yQuranSchool" class="form-control" value="<?php echo getFieldData($yCode,"yQuranSchool"); ?>">
            <!-- final div -->
          </div>
          </div><!--end of div row-->
<div class="row">
            <div class="form-group col">
            <button class="btn btn-info" type="submit" name="continueData" value="next">حفظ + التالي</button>
          </div>
    </div><!--end of div row-->
    <input type="hidden" name="form_name" value="yayateeminfo1">
</form>
<br><br>
    </div>

</div>



<!-- footers -->

<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
